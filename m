Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2414F22422B
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 22:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762121394; cv=none; b=qoMmRt17CWf2GhCKGfEShExxnDRcXF+aoaNsoKSRIeYPYdZyTalqHhc8y++YURy/dgim0AXJRDHFqVnUtDMpMml/aAoqBNJT0yD53t7bqe2Dajz4qCHSAHV90SBxVS5w3mbScodUVO8ldX32bcMHbqvB7mpDDnvY2hxRhjs4D3A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762121394; c=relaxed/simple;
	bh=Ca44CWl9gVoMYUthVsT80P8uzsR4UYupIHS2OxZw6q4=;
	h=To:Subject:From:Message-Id:Date; b=TXL1ouv6eg7sOrbL1LUxCoZ+liITMShIrfNdn5b4EKPVrOpKCbGOe3YF/Y6A5eIGbcHPdwA9nYXGGfDFM0csaN9wf5522+Z41BySRSCunZFzG3y5/08WbNqMAMapSKjRUHNbbc7o9ls/JnGOPF1dXaR0OfHRNiVLAWnboN0ePJI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FTW8OrjY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FTW8OrjY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7999C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 22:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762121393;
	bh=Ca44CWl9gVoMYUthVsT80P8uzsR4UYupIHS2OxZw6q4=;
	h=To:Subject:From:Date:From;
	b=FTW8OrjY7irmPIcNP4NcqvBYOjJ8g1Lq9MoJ3RE/pVcyE/kX7z7babz1hbfLT2pVg
	 UtHdnNAIy2CJv17fSJCSKnpDWf3JjY10iAT/6B1pbsJ4sTDdQF/N4vLWvTollMFdh/
	 NLLrfs+eE1NSI9/lgL9TY/gA7b4xmpfCkJvVU/EWP7DKpGXKA/KEocE/Eo8OBPctr8
	 yooqXJdMmWIZVQHpQ5vKCvjhD6/0r89jH5T4FIv755n0CK6+0ry7bKdAZtfk8I1+Tt
	 bE3JbgbKLSjl82S2p5BFe5xS/SyRGgLCfg3wrQWWOo/GIoLp+iKAQOCrvFBB8hz7qc
	 468q9H1LPshOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97313CCFA00
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 22:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176212139358.30874.15347338777936216023.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac3b9948302bec2492e864ef5e27c21a3a454d9c70fd60842e41c804eec9bc36
Date: Sun, 02 Nov 2025 22:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762121393
