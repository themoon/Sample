//
//  ContentView.swift
//  SwiftUI_tutorial_#1
//
//  Created by 이예직 on 2021/01/01.
//

import SwiftUI



struct ContentView: View {
    
    @State
    private var isActivated : Bool = false
    
    @State
    private var MyTextView_toggle : Bool = false
    
    var body: some View {
        NavigationView{
            VStack{
                HStack{
                    Text("네이버")
                    Text("다음")
                    Text("구글")
                }
                HStack{
                    MyVstackView($isActivated)
                    MyVstackView($isActivated)
                    MyVstackView($isActivated)
                }.padding(isActivated ? 50 : 10)
                .background(isActivated ? Color.yellow : Color.black)
                .font(.custom("FONT_NAME", size: 20))
                .onTapGesture{
                    //print("Hstack이 클릭 되었습니다.")
                    
                    withAnimation{
                        self.isActivated.toggle()
                    }
                }
                //
                NavigationLink(destination: MyTextView($isActivated)){
                    Text("다음 메뉴로 이동")     
                }.padding(.top, 100)
                
            }
        }
    }
   
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
        }
    }
}
