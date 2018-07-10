//
//  ViewController.swift
//  SaveDataUserdefaults
//
//  Created by tham gia huy on 6/13/18.
//  Copyright © 2018 tham gia huy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var inputTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        if let data = UserDefaults.standard.object(forKey: "data") {
            inputTextField.text = String(describing: data)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    @IBAction func saveData(_ sender: UIBarButtonItem) {
//        Remove Object
        UserDefaults.standard.removeObject(forKey: "data")
        if inputTextField.text != "" {
//            Saving String
            UserDefaults.standard.set(inputTextField.text, forKey: "data")
            print("Saved")
        }
    }
}

