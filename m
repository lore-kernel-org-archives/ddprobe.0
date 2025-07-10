Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A7232D5A10
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 10:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752142194; cv=none; b=vD9OZc0sMENlRc669MnRJJe4ybGY2xCTUgIbvI0z6+t9IZk+GmEcHTYisnXjLGyIFTZkddL2Th/84jtiVgJE9JIpWEnyz6Vh6ZYdmxrTc9Wkh6B2gh0tjgM3qGalGY0c9vdiRhde4JTzYmN7CAXakf+gtkiDlatZTVKKY881lsI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752142194; c=relaxed/simple;
	bh=I/JSg3tK417i/M/IhCiX/aX1Cy/v5SNX2plTlAr3hxY=;
	h=To:Subject:From:Message-Id:Date; b=nOn7IxSI4PBPi750HUN+hm2AJ/sq9Zmp64t7MF+nBzdtHPfbNIathA0kU+hk0u/3Da9q6BgchKeL36Fege7ArqFi5NBxkjNUK0JI1yb7BVl0et1rPppLEK7W/Etd3nzVAdI9pH2nzLFporM2xNtp/JRryuWdV1P4h/3NbRg2p4E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hVpEC6MH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hVpEC6MH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A743AC4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 10:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752142193;
	bh=I/JSg3tK417i/M/IhCiX/aX1Cy/v5SNX2plTlAr3hxY=;
	h=To:Subject:From:Date:From;
	b=hVpEC6MH6jZZaHSU/1fBiWLSYUexPXBG9OvyQI4NSJJUSsgeVLsIpMryG1Zblmz6o
	 08yArsEZJnQ/TMTNE/arEPOdHMweDieR/xpYSdA1UaoIKAiZz49LDiwVVTDlfnlVl9
	 SdqrOpF/FrL5cFHwSaA6KTuaUETEFl3ntw1YPhQeYmwzeDy9jvAzJJknDEwk42mZSu
	 MvcKz5aSa5enQMnwgnjssopPk+RtCGWMv2S17NN4ROVSLtFKqqOwlZM6p/0WyGexWs
	 UO18gryYYCfUpIvGodHrjkBaCQNc6KRiX0EcXG96bycKhNJUNkx0q00gdNvC7kJKMR
	 vEGgwCDdWnXSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94761C83F17
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 10:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175214219357.7741.9714053306040366142.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ebd8c092339dc41bbfe5ea48fbe03793e46343a32b5bcaebd6128b82d165609b
Date: Thu, 10 Jul 2025 10:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752142193
