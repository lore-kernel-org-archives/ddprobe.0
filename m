Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FF4A392836
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 09:36:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782120994; cv=none; b=K6e4gc0M93wPtaYkTj6Zj6n9Whtlcu9TjRLI94Y8Iwb6RO/SmRbLA47ufR/bWe5+IxkHaqoKLatDkLOX/1q4j25/J3h1ualuDhVG9veJUOEfBwhJHgdqHIAz86KWBhwLfmBR3DMn4CBl06ulVyVytmRQNe6Jbx6YSsXCL5ODqkk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782120994; c=relaxed/simple;
	bh=0zVKM8hckU5IRfbggLiJ0hBNPpj1bAiDvWwsKsqssS0=;
	h=To:Subject:From:Message-Id:Date; b=tqfI2UA5Bmhwf2kmnAZzvLB2oWF0d0Ch6BKpI+Ze/ZmKiFHMcBuea+GOr/0p/cBNrvwyaw+45OwFBek2m+xD7jutQ0p0OiWNZe6wSoKp+RgWS3ThwMpv6fqbGxAjqxhKswGasYCd6qUzfBZH2Pjm8C/fDDZElCOIu1zHEpDnrK0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jY/sJ5Ka; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jY/sJ5Ka"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB3F5C2BCB4
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 09:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782120993;
	bh=0zVKM8hckU5IRfbggLiJ0hBNPpj1bAiDvWwsKsqssS0=;
	h=To:Subject:From:Date:From;
	b=jY/sJ5Kast/UwBSMb9JZSe/MRyRSXmFRgODnl6gPtv/wlEEFNg2Ie3264SRAR4QDp
	 xRAzksf2Bjv1B+uoICB4+H7+3IUxLIS+Z121JcB9RXFymTMQwBZSxTcCu0y0EdiYPK
	 0xiS+MNF/8mLpkqbshIU7qI6T+N0oATzwICQdvwNUYTQ2kfuTe6tKXDSCjBhKPDc6e
	 4vVJeDrpQwTK2dPH8ZqPCNXIYS+ng5s+fCZxITSVbvghn6PKGaSKzdKPwEcecjF3Xf
	 0e2FTDdzqzFXsvSGJwc0WZO10lifjH8z11Wj4MZaMRAWaY/tZED4Yz7IVJpoc3Btq8
	 y8toI/Rm0uvzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE15BCDB46F
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 09:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178212099370.15904.3887972195815735753.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8198e77288593899bb66544f83bebda334bb039b4e4b08cc47d830116dd32d6d
Date: Mon, 22 Jun 2026 09:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782120993
