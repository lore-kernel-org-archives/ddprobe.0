Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 454CF15EFB9
	for <ddprobe@lists.linux.dev>; Sat, 24 Aug 2024 11:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724499354; cv=none; b=tKcZU9XgWJnRdfT1JZG8gsgQdYRkw5EwOZS+pWOPZXlGF4sN9xiynYbLitHl8qm3vA25WXuPZlhQT+hhCJrd8UQpJfPmzEJq2ca6qTXoD/C60VkFWJZzSHeDhl+FWaV0ad9OfKN7uCGhhLFL+RgPabrx62E7SoRb2MopjoMvjIs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724499354; c=relaxed/simple;
	bh=YXwe5Hc87bHxXRbekGlvofgvZTajyh/4YZlBW3nbqFU=;
	h=To:Subject:From:Message-Id:Date; b=p2n4p2lOT54CppBMcLtze0a2CsobGFR1CHZYM03mCNXfwtjmdkZo5o194Ezrq1yE19kVy+T1g2c231Map6kk10J8Wi8a8WHQ8xvdxnbxDOc2ZakWRPhecKUT0uwaFehRxP8GczvNBZd+GNDOjP0kKDWfkFu6phfB6lVrBRtQNp0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MPPB/yYE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MPPB/yYE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA5A3C32781
	for <ddprobe@lists.linux.dev>; Sat, 24 Aug 2024 11:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724499353;
	bh=YXwe5Hc87bHxXRbekGlvofgvZTajyh/4YZlBW3nbqFU=;
	h=To:Subject:From:Date:From;
	b=MPPB/yYE/ZUICdqY/7i53rsXUCXTl33d6EpzwnA3R0FFllpECyZXi/ZiE+Y7hHjP+
	 dbgmT9Cmd/WpFUu3Kl8vR8HwlGsQNZ26FaamrxeY5ulkGTrNNV1E44N4BkDANKXG6q
	 IwqD5sTOYHOMI/DRZpOZWj5v3ynLUzednNvxrZ7+UonC2TJAmkTHuQAS0U31c0JVmi
	 LMzdLlLVVnhHDIdFvC+iDtEapw0vEWSPxs58veUP4VoBSNRbINXGM1545xKZNatThj
	 wSAAwtUG/zKLUwG60xvpj/fBwpy3sJNjNVCwiMps7Kdapk0stMDPQbnqBEVbsVxup+
	 vOgEPYFo+i+vw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3B52C52D6F
	for <ddprobe@lists.linux.dev>; Sat, 24 Aug 2024 11:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172449935363.17988.13765764477201155823.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b9168655455ff07cd48ae65321f99e692d2c22b82b6e3d96e034b12e5e8c52cc
Date: Sat, 24 Aug 2024 11:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724499353
