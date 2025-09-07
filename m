Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3168A27F183
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 16:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757261394; cv=none; b=rE0FViqbM/UOcbb32PY0UftA7qmb9hr6Gyi73445Zr06C5OHzNBIeIIl9+wOlhkDpz2x9CBrr36iABOcpZjBmLiN60ro4paN1tKUI9FSiHtB2p6tF1UA14kA7sH4rl4Bi+aig3Ood+Iu5bjOkZb+NL16FgdN60+nTV/aFyRDjhg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757261394; c=relaxed/simple;
	bh=TbsWDSmV0uTnCPIOz4H68z4307ID+Ps8+7aDfMMAn/U=;
	h=To:Subject:From:Message-Id:Date; b=eE5kmI1+HkJmAhG1h19GUDmwSipDPN+oZ4kxOIe02loYjSM9x63PXRzongJNPKt6M3QNikAXcw955Jx4mQuGIhCsCmdLEh3BJCiMqcw8kM1MzgE8TQl3uT68yvMZpFBDwevAoAqZZF4UaHyn3OEgMsVG/u6WF8o+3zcx6uKuoZY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aJ/SqeOC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aJ/SqeOC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4EF4C4CEF0
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 16:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757261393;
	bh=TbsWDSmV0uTnCPIOz4H68z4307ID+Ps8+7aDfMMAn/U=;
	h=To:Subject:From:Date:From;
	b=aJ/SqeOCXDx2qgYNJE5AgFen3Mfwhp6836ShKLZ5irbXyPGlHuaf/g4hgpIBwY+D9
	 J2i3mWhIFuoscEbDiiZlyqe/OwVh4sjQXzSsF+jaZdAucMHelFbTE2tDQXExwSloOR
	 HrEB/ZUrNQyMMVnCKeoWc5ejtrZNIXDHHTswSp0pdEFS6JpS3UpUZFIsL179BEpDaY
	 kHBZz9kRM5FKTN7senlQPPVPZph9Ypi+e3sVx6jYpUwV/bHrM0bOmj/uI/jKlZeSZ7
	 7CYm8RfnenJGjsW/CIj/b/wUDFEYEks5H4rFC/3SOos++TuVyKh+Ah8V5wHdHB3Pfy
	 QxyH3vOiF4VrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F276CA101F
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 16:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175726139357.8463.15569734158004738406.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d64b0de13a8497cb1791a49dd4b5fb8ac6355d7d576afefed6f222f6ca60cbe
Date: Sun, 07 Sep 2025 16:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757261393
