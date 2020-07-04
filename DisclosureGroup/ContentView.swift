//
//  ContentView.swift
//  DisclosureGroup
//
//  Created by Võ Thanh Sang on 7/2/20.
//

import SwiftUI

struct ContentView: View {
    
    @State private var animalsExpanded: Bool = true
    let animals = ["😀", "🤹‍♂️", "🎲"]
    
    
    var body: some View {
        DisclosureGroup(
            isExpanded: $animalsExpanded,
            content: {
                ForEach(animals, id: \.self) { animals in
                    Text(animals)
                }
            },
            label: { Text("Animals") }
)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
