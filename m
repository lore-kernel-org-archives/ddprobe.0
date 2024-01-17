Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A0F5D21366
	for <ddprobe@lists.linux.dev>; Wed, 17 Jan 2024 15:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705504696; cv=none; b=rjde7sxwgJBFlvkAm/UazX3ZirU0H8mOO9wWlp0UkQjLnO8IV2X/D77MkGiN5jKEEXeysXRDv8LaRlJJIH0gLoc9WevN6YsYmc0O2zWISHte7YE1jFeRZFxY/WEYaxz9xhSRjK51urGurSiMywP81z6sEW8AM2u550SPUEZHWag=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705504696; c=relaxed/simple;
	bh=pVlR0gVC5TPuMvpd1kG12YPnh3Ng+r0GEErqeClyyX4=;
	h=Received:DKIM-Signature:Received:To:Subject:From:Message-Id:
	 X-Rtt-Probe-Hmac:Date; b=Ww5e77+nXgqORiaWBhFZseWeSYNg3PhtTfb4vBGQE/jpX/pJxME0NvT/0PiSKmFVEE+ubM6a4NFitVTD3sht6hA7w3ffblO32B8ZiwOm4JhAdxPDyuGBndITs+9ZTgdslgPhoFG9WefqMvwpJSoXssrivDMnVoHloufyMC3PTio=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fgjL7YUv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fgjL7YUv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74C4BC433C7
	for <ddprobe@lists.linux.dev>; Wed, 17 Jan 2024 15:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705504696;
	bh=pVlR0gVC5TPuMvpd1kG12YPnh3Ng+r0GEErqeClyyX4=;
	h=To:Subject:From:Date:From;
	b=fgjL7YUvkIlN4DpgW+gANfHaGrh86EXJenWjiEaXYPLpLbaYIhr57cyF0RTf4jnma
	 6ybvWalCDpbpVRLtlZ1KHhwPXZgShj+0U5xykm3KFc+Zlo8SA4kROvFvnbGypA4+fH
	 Hkzy4C0zqnk+XjMPiIKeZr+qf6JY8cJPaa81VTeRQWKz5aRWJTtmLqHM2fRqMkgqhX
	 upenEvnmgbsXGlNoW/Mkc3P2ewbQ8LDGBE2RXC9vkaqxt858HL4tQ5gzkzHnyVNmiN
	 LX8KOuWsCH21OEcXIPFzBeI9mk7h9T28Fg90h6YNTuOWnH21ewWVgNUEHxXUuuDYBU
	 qSQAPp0jfJhqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C792C47DA2
	for <ddprobe@lists.linux.dev>; Wed, 17 Jan 2024 15:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170550469636.8099.9922140037008565730.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc44c29b4eeb1a1e7d7617cb206dd9c5775e33798d84dca5b268ebcd1459d0a3
Date: Wed, 17 Jan 2024 15:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705504696
