Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42857225A39
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 20:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747945794; cv=none; b=oTtOwr2R78BY6yoVHkiOeAuaP87/+Wkl3tO0nDhzp4ltzlHUowN7ov7o6ifIt6GtDDeT5xMnMHrxcetAV6WbugIUP6Af5czrWg4KUaZlNotgDxQ5ZafE3icyJEFCT3P7cYl7smDmGu9Xc703wMat33kv9GAiscQURYW0HXiqd1I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747945794; c=relaxed/simple;
	bh=1Jl2osC/UNLUMobY6qLXTZQY8WtKRbOMwc9doJTyhPg=;
	h=To:Subject:From:Message-Id:Date; b=XWjdUMilPQVGcB1WNLP7GrSyXtHAuORdOMixKS/EQDehK6dSqEJUfZkPvUsxuw9vZefQstCg9YLNEsTP3Zd1jiG9eVnem12Wxb5gepHp7A3lXJHm36Lx/JMMvKRsaAN43qmT4nSkv5bWZMJAJEm5Gf29bnb3ifEyNRYtFSeZOU4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eq1jFxIi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eq1jFxIi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8604C4CEED
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 20:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747945793;
	bh=1Jl2osC/UNLUMobY6qLXTZQY8WtKRbOMwc9doJTyhPg=;
	h=To:Subject:From:Date:From;
	b=eq1jFxIiiEipASe/hbgsMc863EvIv3awqzVWwScbkNT9yBfIcNXSL3iDipfMUddTd
	 hsW9PaBCmSvO+kk4vJPzoXcnQU4EO0isDYGtYk8WnzA1K2gw1IUPZXsf53HY49udJj
	 kx0u7FUKP4c11mxXCgzBRQZTsWcOcEyLKvbGBhEy/W31DOsfe8XKeiUPpZs2mYJktK
	 x9CRvaS+us7C4g0C7cKbBZ0+BfLis7kp2f0M7VgB/mOQgHWNjtkS8+4a/jZJ+/JZgQ
	 2OE3y8V1C3MTentWEn4NQItfhEnlp3TO9+JCDDiep34y9OUPHNTiEsZsDnh7ItyOvp
	 aDpMhxk8C8GMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94FF4C54E65
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 20:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174794579357.26718.4108668046281383705.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e75ac96a8bf77896da3a15a26ab793a83a3cbb3155457b5127926791e16f9e3b
Date: Thu, 22 May 2025 20:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747945793
