Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3ABAA30ACF1
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 17:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787419234; cv=none; b=SM0x4IKO5yo2v8BE+iU397lIfJpQvUe4xwjLbAnoVSfLUltWHjDpDnQPPddgyDViqXfJag9LuB4LA30W7zqB5/Z4c8dXejOWH5HwtEEbzzdO8Z/EvC2Ln5mYPkqwWKyAFmlOgaXYTsCJIB0SmbWjrvn+R0p8Th2DqTMjD+FM964=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787419234; c=relaxed/simple;
	bh=JmTbcl6p6vTUBT2l2f+S6sq3mJOfCfEohYH4meW9mMQ=;
	h=To:Subject:From:Message-Id:Date; b=q2MUPIZwd1R29ieu2IeJ+2MQl1vOLkq2vh9GkWiKiNxhCYPORGV2C1E2YzfzxdicQcNLKZc8h9A1rL4NqTWFQIpdcGhNEUdztZtI21bzWhV3REWedDQ9gcIQEvztdsrOsmeT2tDFTsylcGREbccitYY3mWE5+mW6xpW+gcOAPpQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SlUK2yz3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SlUK2yz3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE2D6C2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 17:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787419233;
	bh=JmTbcl6p6vTUBT2l2f+S6sq3mJOfCfEohYH4meW9mMQ=;
	h=To:Subject:From:Date:From;
	b=SlUK2yz3RJOXAy4f4zXZ4/4oVcXRh59u1zZaFs5C3il4rBOg5pyjAfM76HlYnX/Gt
	 f0lgAweP4T2Q9H08Xi0dvFN0mmZkwaAL7K5TDi5HFLhQOMpzqnrqCa7M08ukHgmf7P
	 Vf2WgG2LvztWkqvUKMfWeAWshd2Tf4QaBshL6qBjZRd9ZD9UUrKedEsCHH3El7AX78
	 Aywq1g7pJEPp1UtPlLCZlWPjDi5STZh3x0w7PRAwk0e2SRQs652BS4YF7B5uCM4WnU
	 qmnsA2ZG/19HB2T2/GD3xFKigfuExPySNbTNDLX3/tZRtbjRcPTGJex6OeQ3N6uvbu
	 Zs9kyBrW0fyFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2786C5DF97
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 17:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178741923369.16245.9103288118434499485.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bec0e756f80f8b85141097b1bae87b6878a5b11fcebdbfb33dd8c0a039d40dc7
Date: Sat, 22 Aug 2026 17:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787419233
