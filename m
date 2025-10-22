Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25C0AA59
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 17:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761154194; cv=none; b=eSBVgn0zl+c89kg4ltLMh8GBFePe4RVJa7d48iZ9S788dQFvO4mHObJwD0o/2ove0AyV5n6c0xoGLusKNI0mUAwM1qZmzD2X18BvZLqY0WKbCQX/GV1ODb5mKvYWMM+2hZ1N7mLQGFPsU8CzmXwEOr0NC73QD4+07uETUydzzQo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761154194; c=relaxed/simple;
	bh=kQS7Isdv+w5vIDogb05KoyLDwCB9fN69neFjglS5FSA=;
	h=To:Subject:From:Message-Id:Date; b=sVwkTvsX2d/pJj0O+i4eANULm11/Fhz/WpbXJlpXmR8DGlNidaZZgjyB0OfglCfNu4OfASWavVn93sDNxTFI63NudGWxDPvLueYcV8+LME8DlctPGHrOfejckKOYNKfGtxHVLj6v57DdSkSIe6QFm4Mz6p70l+FoQN1CiIIjGbg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=noiiX3HR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="noiiX3HR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D9AEC4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 17:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761154193;
	bh=kQS7Isdv+w5vIDogb05KoyLDwCB9fN69neFjglS5FSA=;
	h=To:Subject:From:Date:From;
	b=noiiX3HRff6hqY+AMg/vPwfYDm0J1LpsZBKsWyjqYMeXkwvbJY+HlA6RgzeSDz2GO
	 qO2Qro6KE0ty24CF+HLVyRT9zAYTznjYUjMoIlhBlbIPwbnsRpAg0plvsQl0yCN9iB
	 xCoTP61FU1hYia1fqxqyHyKNIrIMzdTCc7+N3nTWO++xkv6y5ovlRyTFFjbZCVXUqR
	 tmYFA1EYgETc8WCrLq8XZKmI4s2PM+RvXEXqmZRka+MKCi2GV0QvVppDc+3q/0kngI
	 +wvKcPPRgGJKrj1avhkYK0l0W76bU/ISb1iWa4lqKdsj5iuxI0DaMdIMntI99WbTJt
	 O6qWcBgTnewPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF61CCD1BB
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 17:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176115419358.2531.13720440120098230998.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d0c33d56b9a172f7d425991e45dc2c92cfb0de1d91077dff8ac1f0a05f2f4a2
Date: Wed, 22 Oct 2025 17:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761154193
