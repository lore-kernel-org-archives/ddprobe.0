Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E251217F2C
	for <ddprobe@lists.linux.dev>; Sun, 27 Oct 2024 01:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729993554; cv=none; b=FCG3eCr1y0S26g4K0bLhUhHWe2tSkd1HtGAVrw/kHals2IxvdrqHXajn7pgw39doTct+6KoGDkbUCBeLYBwNzMoehkuwxmPAVhjFvbYxYhzg5IMUPFxSD7gyzArDIEUdiirw+briGW7ser7WLREkBTYQRc84edv3ZCFzamivI7Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729993554; c=relaxed/simple;
	bh=ypnqZc/AdHmbASt1DdYyqHWZZV046xd2u/KOoXYn+uA=;
	h=To:Subject:From:Message-Id:Date; b=X3USWKiaidOzFrEUblEHS2QKMWmCwUIW0Yf4vNrpu1E+5vqfM9S/cAlAe1D0U4qho8bGopMzk1qOPf1jyyZMlJuKNyo9yL5MVn5eLXate/c0aPIoHTOEyLLPEWP5P9LaLAen62lyoTo1+Eyjl2hsBQes37+RqwpOXmhfU8dBik0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E95YEg68; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E95YEg68"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4224C4CEC6
	for <ddprobe@lists.linux.dev>; Sun, 27 Oct 2024 01:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729993553;
	bh=ypnqZc/AdHmbASt1DdYyqHWZZV046xd2u/KOoXYn+uA=;
	h=To:Subject:From:Date:From;
	b=E95YEg68cSIzdzxqztkjlWT8fejOTouZBVRZEokpJeI3Ifx834VU5XvEC7HU+RlD7
	 hc3UNp79SHLNSv6Z1efj7UYZuXpRNTEj7Lk/tuKva3Luq50fidpIdN8xO38V3YdiYw
	 rRzDJBG/1v3Lddq8hgsVTmUI48w8jRheOXBT375RyPy2FPQ0FERL3KgCgCT/k55Uwy
	 Y6McgNyrfl8lJPWMv4WYHrrxDG+McBoZzi0zr+RhqFnxtB4BT0+Xq6nWz8dOjhwaZA
	 rKWsA6GlO2Gp/yv5C1LKjkTL3ZJYMIEOpPjjCO6UksN3wRlTJyeKTWFt8+mLgvQYe6
	 UFmhMsMWxedHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FE19D0C604
	for <ddprobe@lists.linux.dev>; Sun, 27 Oct 2024 01:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172999355363.26659.3267690004410125019.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7aca3ffbe49c6fc71a0aac20dabd31efe8a5909c261ae5f2af1de26d5b24b56a
Date: Sun, 27 Oct 2024 01:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729993553
