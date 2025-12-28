Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F96838DD3
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 16:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766938434; cv=none; b=T/BJOuChU0DRnsr1duWQ6W+J3Ichx/KS6xcTa+ImPZbZTU97zJ/rYOwGsJZ6uEjUg5JS0ucuNhu+qq67dKHYjPaiIHiJ1bwS8oDacbdqvsDM0Jx8f4xfeQLb6H5FtFjrQU2VArAfLzeWc+dGLBgGlcnwGLXauW3IO3gNJQ/GsvY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766938434; c=relaxed/simple;
	bh=aRnWPcZSw5b5IDM/VZf5B5WGa8tisLLrShRn2HGLOa4=;
	h=To:Subject:From:Message-Id:Date; b=ImTuCRpFOiDEzUMl/jKdeaq2MoQiH2p2Ovmoe0rld+vpQwCbfMpA36fOqE898M3Ruo0Vx1gRaBgbcXaLx0CgmnXLATG7FQz876l0KahHVaSinsv0y5u+RZuYUYQ9RUUP+Sf17D4aZzZ8v8FFr5WLOGyWtx6H1AM9QyQEHeFTL+4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f97864VY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f97864VY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5B0CC4CEFB
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 16:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766938433;
	bh=aRnWPcZSw5b5IDM/VZf5B5WGa8tisLLrShRn2HGLOa4=;
	h=To:Subject:From:Date:From;
	b=f97864VYdPS4tM8AsyGqp03wsXT7HYYfdz6RqHfclbPdpGSC5iehNscIMl67OQOm+
	 lw6pJf3E5RSUF47bE9Oht0ypzUrjCUbaSrdwa23nyi4cP377uxkEeQ80c4H9USnI9f
	 ATc7lfZuJ6hMfktJVA+QhXUS4YbkBUGr1EcOJClIDGICLWqJAPSJYPClITusXM9Iuv
	 5hzT25BvB7zzsnZ67pf1QGPHW5fJETCfA0AFVE978mtprDs67A63D0VaDvC/Hwxmz3
	 qFxqPz6Vby7QJ2Cxrwsre+0yWxw52Pvcus3Gc989SFXbHkOnLS4MWSoC4I7UpzOUyG
	 dZWFKl6gUvmyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91F51E784BE
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 16:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176693843358.12221.15456069931808383386.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ea5bb784c4714fc1c7b0b6f395abda22ac7740ed8059f16b909c2099a108fad
Date: Sun, 28 Dec 2025 16:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766938433
