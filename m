Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F54A182B1
	for <ddprobe@lists.linux.dev>; Sun, 21 Apr 2024 16:40:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713717623; cv=none; b=MoC3rbQSo5G73AImXLzPFb8B6PS6JlptHQAkOh0Gm8bwpDsNx9cRxfrZsKjR8SIRR3DmFtnkYGUMfUJLmdNMVhZaolQ5GhqOui0JbY4s85+QQgo6FoPr93dnSLs8ICpvcyA1n4CMoiGjGiSMSbG/7/8nOT2QiUUhxEliogvVBNA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713717623; c=relaxed/simple;
	bh=60SpablQaVpP/J+BPynZqPegwsICgOqbav8wDSR6Pug=;
	h=To:Subject:From:Message-Id:Date; b=Y5WGl+i14EdjL0fW1eWeAod1EuID27WxjkaCmMXWeLIycY5fJaxcaYuVEl9jEFtyisblCqES0RIGUYYq5vvBFeWSQSwBq7Q5QQ7/2XeWpTRphKw0TcOIRMwDDUhTrYzi+Hl6B+piw8ebiVpqqv/mtxn1eYeZKud6b7CQBmH4bkw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fs6Ym5dP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fs6Ym5dP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC513C113CE
	for <ddprobe@lists.linux.dev>; Sun, 21 Apr 2024 16:40:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713717622;
	bh=60SpablQaVpP/J+BPynZqPegwsICgOqbav8wDSR6Pug=;
	h=To:Subject:From:Date:From;
	b=fs6Ym5dPjtH7pY1J1OTmJY/xIaGuv2PLO66mJZ+a7SVjvCjCb7BzMVGJTcQyEgdKY
	 8xpJXoI3nx0rM9iyrELL9h5ZJkPIS5vQUXxh3tSECaRh5NJ9pwNLjnvW9Fnnxxqu9O
	 Mrteqfhg/8vYFnHkR5p/1y/AkkG0LNAlGAzPeBhkVs3tbyO8Ig3rNLUUMaoHP1gucJ
	 tdVJYLBaGGAM4Jth6vwxHBV/0F55xS+BVo6iALRKtvLg4ovxZ/q7y+ZRmo1HkfLkVB
	 zv2anfyMWLuqBqeq4DfhZk+bhg5kvXQLHuZ7rNCq/bP3EAOXpJpOQpfXFrhcSkf9El
	 7SCplGiJLcu2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C22E1C4345F
	for <ddprobe@lists.linux.dev>; Sun, 21 Apr 2024 16:40:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171371762278.13687.6814057490939001317.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78bdd1ccb600a06c89c4aece5a6d015cfd6d4cb5216d82e4a67aef571ed3979b
Date: Sun, 21 Apr 2024 16:40:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713717622
