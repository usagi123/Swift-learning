//
//  lab1.swift
//  Hello World
//
//  Created by Tuan Le on 6/27/18.
//  Copyright © 2018 Tuan Le. All rights reserved.
//

import Foundation

//Decoration
func deco(){
    print()
    print("------------------------------------------------")
    print()
}

//Print Hello world
func greeting(){
    print("What's your name? ", terminator: "")
    let name = readLine()!
    print("Hello \(name)!")
}

//Differentiate between constanst
func diff(){
    let price: Double = 11.5
    let quantity: Int = 7
    let result = price * Double(quantity)
    let anotherPrice: Int
    anotherPrice = Int(price)
    print(result)
    print(anotherPrice)
}

// Question 1
func question1(){
    print("Miles\tKilometers\t|\tKilometers\tMiles")
    let ml2Kms: Double = 1.609
    let fKms2Mls: Double = (12.43/20)
    var initKms: Int = 20
    for i in 1...10 {
        let first = String(format:"%3.0i", i)
        let second = String(format:"%13.3f", Double(i) * ml2Kms)
        let third = String(format:"%9.0i", initKms)
        let fouth = String(format:"%12.3f", Double(initKms) * fKms2Mls)
        print("\(first)\(second)\t|\(third)\(fouth)")
        initKms += 5;
    }
}

// Question 2
func question2(){
    var ints = [Int]()
    for i in 100...200 {
        //XOR logic
        if(i % 5 == 0 && i % 6 != 0) || (i % 5 != 0 && i % 6 == 0) {
            let int = i
            ints.append(int)
        }
    }
    var count: Int = 0
    for element in ints {
        print(element, terminator: " ")
        count += 1
        if(count % 10 == 0){
            print()
        }
    }
    print()
}

// Question 3
func question3(){
    // Right to left
    var result: Double = 0
    for i in (1...5000).reversed() {
        result += 1/Double(i)
    }
    print("Result for right to left: \(result)")
    // Left to right
    result = 0
    for i in 1...5000 {
        result += 1/Double(i)
    }
    print("Result for left to right: \(result)")
}

// Question 4
func question4(){
    var resultX: Double = 0
    for i in (2...625).reversed(){
        resultX += 1/(sqrt(Double(i)-1)+sqrt(Double(i)))
    }
    print("\(resultX)")
}
