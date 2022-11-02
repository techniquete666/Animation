//
//  ViewController.swift
//  Animation
//
//  Created by Vyacheslav on 02.11.2022.
//

import UIKit
import SpringAnimation

class ViewController: UIViewController {

    @IBOutlet var randomAnimationView: SpringView!
    @IBOutlet var presetLabel: UILabel!
    @IBOutlet var curveLabel: UILabel!
    @IBOutlet var forceLabel: UILabel!
    @IBOutlet var durationLabel: UILabel!
    
    private var dataManager = DataManager()

    @IBAction func animationButtonTapped(_ sender: SpringButton) {
        
        randomAnimationView.animation = dataManager.presets.randomElement() ?? ""
        randomAnimationView.curve = dataManager.curves.randomElement() ?? ""
        randomAnimationView.force = Double.random(in: 0.9...2.0)
        randomAnimationView.duration = Double.random(in: 0.8...1.3)
        randomAnimationView.animate()
        
        presetLabel.text = randomAnimationView.animation
        curveLabel.text = randomAnimationView.curve
        forceLabel.text = "\(round(randomAnimationView.force * 100) / 100)"
        durationLabel.text = "\(round(randomAnimationView.duration * 100) / 100)"
    }
}

