Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 531413597C
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 04:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748753994; cv=none; b=OGYFQpzIeDXwfits4Ie9APfUnixj5m16yvD5AcwV+uvLh+kUEfQeZU2O+tzhTEs8IswQS80mVcdLJiQER+VCrPUtXNZq1DeboT+EweaqZsbBzZ0nrq+vNeY7pDZayMhAcCOJ1/sen03WCU9my9Z0wDA8mxsa+uvW6fMQoMevTJY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748753994; c=relaxed/simple;
	bh=Drib4ieuetObwJQiq/fSI36N6i+AgbSdgBS8a9hxd1M=;
	h=To:Subject:From:Message-Id:Date; b=Ts4TlCE/oSf6Y0iOYsjr7Rp10KLm7ULKFWRUVPvWMPduedT0h/ZEW9a7G9yMPen1SvCkYEUIz6/djELQHzcBbhjFtRy79il0Wask80Tq0osJH2bzg6/xzXOr8G5x1d7fyUCnS5tZwExO5vFwd+StfR0bPj1FOuvSCLahag4210M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K3q/pN71; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K3q/pN71"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6EE8C4CEED
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 04:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748753993;
	bh=Drib4ieuetObwJQiq/fSI36N6i+AgbSdgBS8a9hxd1M=;
	h=To:Subject:From:Date:From;
	b=K3q/pN711gSM9f8P3YPJVCgnz0liVIqIKMM4LHaG8BbfWYqz2H4LYYcAbfVz8Hjpp
	 NEVfO4x/2xWuc25ILsd+DlphDFkQPPiWuv0jB97QgF7aH760HZS25eRBjh6fxEMFxp
	 zgVJwDy/Mn7ib2BoaINpvuidiKtWwnD/J1eJGXNsjTQiVrLLmeXF6R9NU08Ih9+whC
	 r8NWPIW3MV7XLXSmcKL7mPocVhWuOuqjvsytFDmT8m7361oqhWBSz0KmvSe9/B5zdb
	 OMkj0TwJnkbcq+EWJP63zcgfqx1oY74HLQgHRyrhO7STMSrcFmUzIHxtwG+fT+zjtA
	 FVLZesl9uU+Ww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94796C54FB3
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 04:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174875399357.4494.14805739397122009001.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40e674aadb3b94766633e9ebf8c0aa3ce691b874d2537d59ebe6864b318892e8
Date: Sun, 01 Jun 2025 04:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748753993
