Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FCD515B971
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 07:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768721034; cv=none; b=LiVDM5zQUop+Wz0Wu/gL8ENgb+oIu7AylRvCrHpLKsFu3r3ngHeaL/CfNrLvhlhWAhmgx6FTQjKFJ8qVZs0ZueML1H8TieVDHYtHxXr/lS0Nuy78TLAsJt7pa6o4COu1dXx74UH/bixse7kRsvFOEoUOYFMMItqpJcKmr5R9P6s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768721034; c=relaxed/simple;
	bh=Blg1s7b1iI4ac6V3r1VySmM+nrrEG8LiOFdxdavG7Xc=;
	h=To:Subject:From:Message-Id:Date; b=sVRdsXmRqkuRsa+xD2jJCfuSvgiEdCR3HWU5gO0w8O6EnlS6zdtJIScdHcZFsrNUgDGQZm+diJ+9mAKJIyiCbHzgqSkDbh+fEmPBWsRrXG9bIyunDzwE54DMxUgCNxdvp1HW/awDFo5UIj7vweNPN/w96WbdKDfTTYlJlx6dIlA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=llZI23HQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="llZI23HQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAEECC116D0
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 07:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768721033;
	bh=Blg1s7b1iI4ac6V3r1VySmM+nrrEG8LiOFdxdavG7Xc=;
	h=To:Subject:From:Date:From;
	b=llZI23HQX1vC1tGD3lV9oi/i2pMenUTEpoIzpe2zMc7h4mKRt5JdgL2BxX43ZjiZ4
	 ZDOREYt1D5cdyrNaDu5tMVRSmwhUhx2e71OiglpBfVG2o8gbFUHjRMkVvqywdBhtp4
	 J9B5GfCRd2LeBU7gMV5thPlxW4sSpTupWHAVwYp32jn0APCYrumcHPVfO1nReqavPs
	 lAehgY5O6LUQty9bfB7p1cdlbfX4ggQ6sq0u6GxfMJ/2zUtxMWvN1KPIqW17CTKRtJ
	 v3C6Tg5Ln+m6xsjl1OKogEajfPVPcsukT2oadPAtki661n0uAEEt0fLj5yYdyn2FwS
	 VxWGJqVhRaTLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92C60D4A5F4
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 07:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176872103358.30982.14598109315904665842.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: debadc79d6a5a78fe94f111acfb353780fb7773c27e41af9721580a3a233c62e
Date: Sun, 18 Jan 2026 07:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768721033
