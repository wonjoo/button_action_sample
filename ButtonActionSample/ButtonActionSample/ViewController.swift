//
//  ViewController.swift
//  ButtonActionSample
//
//  Created by 이원주 on 2019/12/18.
//  Copyright © 2019 sodal. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        //기본 코딩 방식
        let defaultBtn = UIButton(type: .custom)//버튼 생성
        defaultBtn.frame = CGRect(x: 100, y: 100, width: 100, height: 50)//위치/크기 조절
        defaultBtn.titleLabel?.text = "기본 액션 버튼" //버튼 이름 정의
        defaultBtn.addTarget(self, action: #selector(buttonAction(sender:)), for: .touchUpInside) //타겟 지정
        defaultBtn.autoresizingMask = [.flexibleWidth, .flexibleHeight] //autoresize
        defaultBtn.backgroundColor = .yellow //버튼색 지정
        self.view.addSubview(defaultBtn) //뷰에 붙이기
        
        //신규 코딩 방식
        let newBtn = UIButton(type: .custom)//버튼생성
        newBtn.frame = CGRect(x: 100, y: 160, width: 100, height: 50)//위치/크기 조절
        newBtn.titleLabel?.text = "신규 액션 버튼" //버튼 이름 정의
        newBtn.addAction { //신규 엑션
            print("신규 버튼 액션")
        }
        newBtn.autoresizingMask = [.flexibleWidth, .flexibleHeight] //autoresize
        newBtn.backgroundColor = .red //버튼색 지정
        self.view.addSubview(newBtn) //뷰에 붙이기
        
    }

    //기본 코딩 방식
    @objc func buttonAction(sender:Any?) {
         print("기존 버튼 액션")
    }

}

