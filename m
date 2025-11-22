Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3036A20468E
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 21:31:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763847114; cv=none; b=EES82lVZeRAEu5+nQlfDSc2ntqQMGs3U0EpNlEMOBSRI2P1uyI3Yf+K8U8PoD2ol7NIufi8MsccQkyOjpTnt25rdXHl0k7XxTQB3IqEWbOecYw8W9fH0IuczMwi2NMQXtj5VL6rEAoPiY42J2IFI9oHtxGEus2IEzqn1bTFJpes=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763847114; c=relaxed/simple;
	bh=UtwiJhPgsjlvqf1zEO24lDwmwVfwwlMRL9+K+6V9pBs=;
	h=To:Subject:From:Message-Id:Date; b=NjjxAnk3zhL/cWidQSzwNL/DNVsItO+7xEs7XOyTjKKIUjsaN4Tk+/mbE8+JhoEDvXDM50Ijte/T7vYxE3PeT2smQCmWHUdOa0rv4oRtLVMQ0dDwKtARyuL0HqY0+Mjo4LBgKYrTdxEZNGVIRkDgsFwfM9AvLImHuDJQZnCXyCg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=du7D461Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="du7D461Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB8ACC4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 21:31:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763847113;
	bh=UtwiJhPgsjlvqf1zEO24lDwmwVfwwlMRL9+K+6V9pBs=;
	h=To:Subject:From:Date:From;
	b=du7D461QNMIEYlfQqHNiCz5W+TyN3EBgb+gXApLn2tjuUAelEjtGMGU1gKdkSzUFJ
	 jOA0Z/X9d4mKJFxkUNEMXjVr9APZClrKoo4MpRdWLjhR8ZWiXhdXg1LLKVZFZTF3T5
	 Y0Iq8CvyLtD7+eLE3V2h7keOTat9CpSDYhIGcPjPeeWcNdgoB2cxLiUoOGJ/hzTn3e
	 dTeuY/VkPmvgI6rcFyEwDreu6bu0dk/2PHR60uG5mQzUZHC0SGi01F2OXk/33IvaWx
	 eVHnnxgoVbsaY4CX212QpGyshlwaJU6JqicJMPMvqQ7b53+hNe2cDj2Ygj0Ytp0olt
	 2IxInh5GaWObA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94F2FCFC53B
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 21:31:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176384711358.28680.10584881858036564087.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 77cb3e2a45cc0ac478a758d029f6964761c130033eee8309aca0f172907155bd
Date: Sat, 22 Nov 2025 21:31:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763847113
