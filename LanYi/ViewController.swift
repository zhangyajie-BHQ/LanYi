//
//  ViewController.swift
//  LanYi
//
//  Created by user on 2018/3/19.
//  Copyright © 2018年 张亚杰. All rights reserved.
//

import UIKit

class ViewController: UIViewController{

    lazy var tableView = UITableView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
}
//MARK- UI界面相关
extension ViewController{
    func  setupUI(){
        tableView.frame = view.bounds;
        tableView.backgroundColor = UIColor.white;
        tableView.delegate = self;
        tableView.dataSource = self;
        view.addSubview(tableView)
        
        YJLog(message: "打印我想看的")
        YJLog(message: "llll")
    }
}

extension ViewController: UITableViewDataSource,UITableViewDelegate{
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellID = "cellID"
        
        var cell = tableView.dequeueReusableCell(withIdentifier: cellID)
        if cell == nil {
            cell = UITableViewCell(style: .default, reuseIdentifier: cellID)
        }
        cell?.textLabel?.text = "卡萨丁叫撒哈弗"
        return cell!
    }
}

