Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2669D53BE
	for <ddprobe@lists.linux.dev>; Sun, 21 Jul 2024 19:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721588754; cv=none; b=H1P/hSIlR/Zhbr4C/8OfbRTpt3AX2KBupvYZcMcFQ5nDNgWmaT5+CeQocjC7EftNHNTsStKCv/qTxRUOugiON5QLd8bbsAiHr7izMfFf7Fbtuondv7kkykTh4bpeLOuYX96E2EV0irFlM77vLfrmYrdeLdkHs7nNts/dpXWzzbQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721588754; c=relaxed/simple;
	bh=4cLkH7Jt/KJvmORUjali53QVL9N/LoEGmPcmukyoksU=;
	h=To:Subject:From:Message-Id:Date; b=EZ7JxqzWh2j4Z5LgZHCCfN4Kq6Cr1njMEXGP1H0vLKp8AUIVytqZIGzELkPlcBxqY23ElOQtIAWPc4S2x/i/jGEHl/KlU2zg2mXsFXAXzo86zGHYLnScIBiN6fj7aLxt+o3zeF/IHwlgpAthax2s4PVVKKwsYIv0QR50W8xFrtc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Pwc27krC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Pwc27krC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1116C116B1
	for <ddprobe@lists.linux.dev>; Sun, 21 Jul 2024 19:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721588753;
	bh=4cLkH7Jt/KJvmORUjali53QVL9N/LoEGmPcmukyoksU=;
	h=To:Subject:From:Date:From;
	b=Pwc27krCBUr0JKpOZiJ+K1Crijhj4xpllVHoGtbYSZftXIfu0MvwFairDM2b1uFH4
	 Me+sd4GnO0512e7Y7Q+ISe8PPlP3f32Rm3dA2z0Ak74+OAckFqHA004olWF2Ptg6nT
	 mogslr8obkSa6/ejFoKDlUkRm+7wVFbYVt1kssM+DREMJ8jpsFb9ho+jBGSo72vzB5
	 rUBFyWFy9RubxY9J194u9o5vdveSG30BgfG727EnD7b2p57tLwZ9NrJjLuGHo5/nKM
	 qTbtrBrtls2DsYn7YCAJnemRLy1noYc32aO73oAF1Lve5J3dPK3r+rW23WP7TPK7up
	 TtAMiLphT3Rmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94DE1C3DA5D
	for <ddprobe@lists.linux.dev>; Sun, 21 Jul 2024 19:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172158875358.10040.10773305444012381087.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5617aeefb8189e93489b727b9b563555ba09796d953d106258f28c1c1c61b624
Date: Sun, 21 Jul 2024 19:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721588753
