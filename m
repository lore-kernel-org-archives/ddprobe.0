Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14C3A36D
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 23:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758067194; cv=none; b=b6I1dJpP7p9k5K5Irj5k2Y+rTanRh22NyV4ffOJBNAL6Df/SHDX7BDs8UJFvJOCXWK81mToA3viNp7kzsYBf5C6BE8FbPhM1cmzcinvR8fyxcQ30YhVKW7bng3a0kH4a6ayQ78BNfEi8vDuvTjjrDh/FZJGI2BYThD+LSjLkUxA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758067194; c=relaxed/simple;
	bh=bp4d6ENTXBrnsD4Wcev98z9PYdZeUdC19QuM+BBYdHs=;
	h=To:Subject:From:Message-Id:Date; b=lRqfcyR22aH87Y4TA8Gde2bmQ5w+Z+eZYV2jVTKnG1Tz8zI4B7jfzuZXmmbZXDnYBBFF6si1RZlGi30+G+QmBcYcae0ePkdQe9YyZTeBI4in5MPKP9g4+PdTnkQucMeRQKaFUq0CLSKIEmFtb9lzQRllR9HZHHyIUMi1WcGGUi4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rwuw/gXm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rwuw/gXm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3378C4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 23:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758067193;
	bh=bp4d6ENTXBrnsD4Wcev98z9PYdZeUdC19QuM+BBYdHs=;
	h=To:Subject:From:Date:From;
	b=rwuw/gXm9MrRSg0F2fmQRHciVpGDMVh8Sco2Kqu4UgfzQyGecKCe2zXcHq0MaBx0/
	 4Vyu3XcxnV6/4VMeADg6Uo2yR1GlSbEviG3mNKx9WedymRcggOQc6ZKZPrZ1pD25Pv
	 7n0Cm9hsedyihPCRE8sg59kCrOLHLJSGfdZhZfSeovHxMp7xlcemqcaGJekL0SainK
	 lMJ9ZvUYrEJHIW3+jCG38IxSzdnq02PYyBL1jUPd1ueuJy12oYcgvJ+Z7glJUK5w7e
	 YiJVM4XBfFoyi2hukEn2fQjDrOZFgcBMp6sL17uQzeQIggqQQc3NARD7Do2Pu7nGco
	 xCvysCgWemwRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 946E2CAC592
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 23:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175806719357.32247.15939498550310545374.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7733fd3e7c4118323341858a95c941acc7237bec70253c66510fa91aeca39f6a
Date: Tue, 16 Sep 2025 23:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758067193
