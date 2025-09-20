Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C3BC2AE99
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 02:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758335394; cv=none; b=HI2XLU36PDTVCPSbUdlhzlihdJ9PvAbIjeIKgx0X75t5PuTO5w/gohjLaEnlaMoabnO3vV6R1/yXpmDFQLh0OxGk3o+5rJYUrGJsqnpa1F0s0CujYPvhyvFKUklALo2D3bpMRaVPUm4qM42/z2LbcaHsL1qhfZ8CypGuK6bGk6Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758335394; c=relaxed/simple;
	bh=qJ1YNFOQGH52cdRrx/meoE3uzjsQWK0OmLa5ZNisFSg=;
	h=To:Subject:From:Message-Id:Date; b=dVw/u7t4YsaGDaEt8ho8yQ5R2qbdgNOgto8dHZmnnoYrNS7g6ykXOoscrQ5YenbA1yM4wBkivPEXkxpaJKowzqqJepxsu4Czys5+Zor7ZXXH0j7wm8jBuglPhZavWSubsA4N0AMwKka2u84ibNR20lbqNFfE+0kXNsilWMuG2Gg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lIfSyw3H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lIfSyw3H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A85E5C4CEF0
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 02:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758335393;
	bh=qJ1YNFOQGH52cdRrx/meoE3uzjsQWK0OmLa5ZNisFSg=;
	h=To:Subject:From:Date:From;
	b=lIfSyw3H9XmVAEblhUHOzyyqyhIZUXRHFdc+EIkEmsjEDMdRY18D3GHAIjF2PPxk7
	 csa5MXIAgk43cs+3vpJRyjcXWyJpydtlS60ygjgrFZJcU4BAj/we09FS3LV4uTeMdm
	 XO1MToF7i2CyYmD26o1mgT5oujh47NB2iD8T6z5uJHlLAe6EYY0j52VdO5pBFy27bj
	 0FftOBo7mqPBsZJTD/jCpdwICwul5EaJgM4IB5IcxFc46yWhQhJ7lhrNRyJfs/QMCJ
	 YD6Oc4E/VwVVmHCHvny+rZHOBDG6fkt90HkNT+BG4RHfFcqYcTeob9VwBUCB6/bJLr
	 /Ttx3mlsMF6JQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9556DCAC59A
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 02:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175833539358.13937.14441029119399247906.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 630d053febe9bb4285ed46295faec47067c55a76e7c1f68dd8b34d69239dc39c
Date: Sat, 20 Sep 2025 02:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758335393
