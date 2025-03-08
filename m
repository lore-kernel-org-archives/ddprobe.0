Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48F44DDC5
	for <ddprobe@lists.linux.dev>; Sat,  8 Mar 2025 10:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741430334; cv=none; b=JXdE8BK8DsDl0+/P86X++eyGmM6CPBi+RPFRzvCLZ224iBjM2JA402alYIiFMuD9XiY5PIl3Y+YGpgTi3z9Pb085eUc2BHAyAGZZncSH1DhdHNbfI7sK1k+V+rHvqHz81eBll4MFXWYvJfM7lP+Wt2zzMYthD25Kfped8cidtYw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741430334; c=relaxed/simple;
	bh=lH0VkDbX3ejkHLWEhOfX69G0TKXU5tlS8Nn7bsvBNQA=;
	h=To:Subject:From:Message-Id:Date; b=GGrrBQo9rgEqWM5yaiYuPcV1I71lHZ9HERzVsUNN0w1wXPdjjkjkDeWO43VGLtEIIgDgwltprcNxtpLUSTROguZK69tAdYHzAvjqdOC2llupnOCrLycRL2KzcBWJz7e3nQ/OVAgsUt16yAnHwQjyrD++BFccocxumAcsUDwPK10=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FQB2eYYA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FQB2eYYA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4180C4CEE0
	for <ddprobe@lists.linux.dev>; Sat,  8 Mar 2025 10:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741430333;
	bh=lH0VkDbX3ejkHLWEhOfX69G0TKXU5tlS8Nn7bsvBNQA=;
	h=To:Subject:From:Date:From;
	b=FQB2eYYAaAK40//2pWt+grHMUPCnd0/i9t/5cDE7RB0veI0c71/XaRd4g4U4tiDgZ
	 EcJ818UyhfweQaf8w3hS1yEEsd//8H4K+yDCBJixZlkhQletNw4wRkv9kBfmk8Zshb
	 zT2pXBA6w796xBCgHWczfCHsL8R1NvYniUfGSmO68bd224QsdyG/yG6v3euphhU1ia
	 dE1lxMAewop82dbjOA0ZxkwKWcjoS2JL+Zd1Uc3Ez6MaGXypnC4rfTUX6bWPFWDCYT
	 mvpeTJtWp27OBdGNK08e9OQvsMH4ZrPuzLGao8lmfhOgE/PheMl89v6C5eM9ALlr+8
	 xk2v9OTDSXnmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B44CBC282EC
	for <ddprobe@lists.linux.dev>; Sat,  8 Mar 2025 10:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174143033372.6182.16796552079612522833.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 02bf937741bca04b39385d6d258d01025d0ad62f07581757b5c7d34cc7cc5489
Date: Sat, 08 Mar 2025 10:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741430333
