Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C7461E4BF
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 12:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719145943; cv=none; b=AQlPhVV2NCOt2uGypdbavGZyb5qWuVzpW1iXGQbAZZ/EKs+D/355Iw20rSYCUKV8LeO0kmOm9F4yy19zRV7EWdBU6kBlPl3eCffBWYTNP+R+ueVSt7sA0cpJwn9hyTG+Vc8camugEcuTNd3EUjR1wFbPh1JUIDoHWPPf6DoO+zc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719145943; c=relaxed/simple;
	bh=oD0VaHOcXPDPNtcAXxOhu1P3yLTgbTKjHI9Z0IkrJxA=;
	h=To:Subject:From:Message-Id:Date; b=SYEWYIxrSGjxvd/MPc/Y1EVFbVJGFGqZzb3Usop46hcKgRWrUUamDDNKsuJ20Y00pwxNOEO+nMbYHBChTOL4+gC6wiqfEdJB9WXeo+QuBY/0tInQoPJPijaLD/ujD+B+88lBUUGXfYBWzPSRipcvHgUospM2tKBRI7BM9arUWrc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ibugxJSG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ibugxJSG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9408C2BD10
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 12:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719145942;
	bh=oD0VaHOcXPDPNtcAXxOhu1P3yLTgbTKjHI9Z0IkrJxA=;
	h=To:Subject:From:Date:From;
	b=ibugxJSG7j4t0E03fm4i1BRsASlQFB2tgtotX6g+OLIxAlvajgFe44xlBUnP7Y+LA
	 gk6Vhw4x5ev6XO2R5k6outybn4hutAmZ83UZ1FZ8fuD66jTlPRvNm+8+Cjj+bT1p7s
	 EVLR6RWTTIyZL3Mqy8v00dw5H59IdRuUZpgafzbLwXPCXkvLQ3lL5Oq71T//dKgbSn
	 l0u4SSVvuuLafukLg0RiouS9J0VO+McO63inpGfCm4Sa0diTLtcCc3XPOyvXWBXJNz
	 uUV+NbnIWbM3/91szrVY0iMoQt0S3glk0A/qKLncJcZnK/vl4SBDmxyM3x7eu01i7q
	 p3iwrqh6wuDzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE93DC27C4F
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 12:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171914594275.15343.14835012672369425505.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78007d4b9400fcf0eb6fb57e0095fcc0479cd50f22b3e2092d80f73a2a35e95a
Date: Sun, 23 Jun 2024 12:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719145942
