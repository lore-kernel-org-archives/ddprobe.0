Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 603FA2E62A3
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 09:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743931194; cv=none; b=dn111SHvWQVkv7+Iq3aJyQvutVgG5Xv1KcB7uhE5VuJc+SnGL/cjEjStSeEL+9X5exb3At0SBLpcp7ZMJ3VJ7Pb4hBBNNpDlvY3zBcE4evMfVr45NLEasAyjthft7XMSIRRaS+LykybAiNOKxsfYww9ecbRRYge3hYx0CuqRmIA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743931194; c=relaxed/simple;
	bh=F2zRMgApF4WeO2FAViOqU9Bb1UmOgFrPTepakTgoW58=;
	h=To:Subject:From:Message-Id:Date; b=nd7q2oyoybQi/pukpCm8yZyTjHsZ6jacC13mjlgdj+ekrmSwqh/LKc+2B/52BrgJDrGz9HqKKGnray7HxGH9g1blTFKeNO5z/Rlo2cFhye8QvrfoQ1cP4Q6Jlx7AHiziBj8omicF9wsAXlrMcWzdxr+orkElle26idS4MsF81jE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KOFIgd0w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KOFIgd0w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2036C4CEE3
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 09:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743931193;
	bh=F2zRMgApF4WeO2FAViOqU9Bb1UmOgFrPTepakTgoW58=;
	h=To:Subject:From:Date:From;
	b=KOFIgd0w5HkC9AfXbtcx3TaWhCb5qivNLIFKiHxGqExeX4rKb2L6lUXVIrOxjVZXJ
	 alk85voz4t5DGDWuEwgIg15goD3QDcPYGjaJbPT84nsGdDCVniafKj36y5GXk755IC
	 9FL9zcQpES74FotCsii0uCHEbJztgJut0FASmuRS5b2TmTz7qPRcx4udMhGzTqTooq
	 IWhrIgjSM9zjNEa7wuZXlJUZn9W38J/90Jk7JDMyMKrSXMQme16MdrGwDSQ42+IxQU
	 ssCy5fB/c5H3amGrCemE4SMAekNH6koKV0Hxw2rdrVqLJsw9yCsX2w9PRDC/szYZqA
	 fBI9QBbZp4x4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B61EC3600C
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 09:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174393119359.24529.17292090971078648274.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef209999c8f531ba5e3a2c039b5eb2d918358e73bf246c891d1cadefeafe263a
Date: Sun, 06 Apr 2025 09:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743931193
