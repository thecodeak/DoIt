//
//  CreateTaskViewController.swift
//  DoIt
//
//  Created by Maciej Kielar on 30.05.2017.
//  Copyright © 2017 MK WEBCRAFT. All rights reserved.
//

import UIKit

class CreateTaskViewController: UIViewController {

    @IBOutlet weak var importantSwitch: UISwitch!
    @IBOutlet weak var taskNameTextField: UITextField!
    
    
    var previousVC = TasksViewController()

    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func addTapped(_ sender: Any) {
        // Create a Task from the outlet information
        
        let task = Task()
            task.name = taskNameTextField.text!
                task.important = importantSwitch.isOn
        
        // Add new task to array in previous ViewController
        
        previousVC.tasks.append(task)
        previousVC.tableView.reloadData()
        navigationController?.popViewController(animated: true)
    }
    



}
