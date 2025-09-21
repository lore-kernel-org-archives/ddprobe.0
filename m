Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DEF91E0DCB
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 20:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758487794; cv=none; b=rOco8X/jOz6bit0chCamUJFfvg4hdLzQZZUUOOHEb0wRuOTabwPAtbvilEBhbV2RdcsPbevHb6d68UeRq/cCAuyBkiv/UU5PFdngiMJasVkOURIWNGt9KJ5XyWg+e2MQL2/QOV0v145dPCTd+55qcjtCLFfF2aa0WUHa/qqJ7YE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758487794; c=relaxed/simple;
	bh=KbRSqDxeoYaxr7irFCE7MNBTSxL1ntvfz9Xz3GdJtkg=;
	h=To:Subject:From:Message-Id:Date; b=N6cztgB/uVnA64qR24kOXcniPEjKwLNueW5tnIbZSTxOKtKdVsVM3ubkaZueSZBd/RhpG3xlmFTHHwkfL3JpsNrg7TRvFKZjKQCpwRF8UTuAp5hvtFh73fSADswdLOcavvGxH0g46civzjVC3LiEGk8HLRl44KaKJ3PBxnkalks=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Al5sBQNn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Al5sBQNn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0C27C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 20:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758487793;
	bh=KbRSqDxeoYaxr7irFCE7MNBTSxL1ntvfz9Xz3GdJtkg=;
	h=To:Subject:From:Date:From;
	b=Al5sBQNny2vjulIhjDvXigd+jYBqjGNWwbjJpSoWw0lffqFY9GO+hdfoPVrmp0him
	 SxJ7bAjkBqt/4mmAA1Zc4AzbS0Z4RiVYaTbtdatN0fr8kDzln73nVIkwYCUGJw+ura
	 q319cnm/RPz5XbzNiKTI00aI0TWe8EAq52nD09HR0JSeaCk71Bn/UHiMWENIX5bjNE
	 p96kAE6sB/YEKDwrYK+71U5sGxXKuj8PWv+8Ol4qGwkUc3F1M7uzhIIKAUjJfzRKN6
	 LMmtZ7Iwv2c8od7xkP2+aeVcF2+g4ONNGv32pp7KpMHMAnZMKtkxrieWedJdHUttZi
	 PuZtT4lOKEiSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A19C9CAC59A
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 20:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175848779362.14738.18395431763038217829.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 718bc66f04380045f7018237cf030f2b583d24392669e10c5f2173c8ff6b0beb
Date: Sun, 21 Sep 2025 20:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758487793
