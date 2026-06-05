Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16F47368299
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 19:44:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780688674; cv=none; b=GWDZDOqKjFnjgi6twsPg55HNEOuakM4pKIiIlcUYZ8KASVE9Iot8Gd4Vgn8Kdgkd0olHxpyo4PGVOdUt1NED5N/P8yZvvTQvslYSxTS9+m5uRoEs1C1mzrHp3d+w8H23ZZl3m18jdOBcgueu6eVPNqqo92aT64isC2mgJVWYO3c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780688674; c=relaxed/simple;
	bh=Fd9qEjtkpy9E5YrM1s0PWSJ+X6+qgINC/0xx3sub94o=;
	h=To:Subject:From:Message-Id:Date; b=g8M2duYLyOEUGz0KfqpSlRNgVzAhpn1LRgmXzVGE0BhHL9KdlP15AxGkRpMANNwXcqRCM9icvjsaltPteuQ3V55slHtTpzZkbvqK64hUrEggn+k1RmYaWTwOFki3IvTkk2wgFDYW+vdbax+HNZJdoJbAuR7+9Sal6MYNLHTdOfI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CMriiT60; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CMriiT60"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9C94C2BCB4
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 19:44:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780688673;
	bh=Fd9qEjtkpy9E5YrM1s0PWSJ+X6+qgINC/0xx3sub94o=;
	h=To:Subject:From:Date:From;
	b=CMriiT60RS/MPz2dPaxAXktGmQ8Y14Ydp7v2UvaWQktrqXDAcJjVAKD8CAWp/zUyD
	 LN9zvvUj9klAtnGX/sRQCK0wIoKUkL6PscL+0FLutZzXbwO1AAXioXPIwhVf9QXW0c
	 w939zP1sGz2zlOIYeqDPXHUo4PCv2gEqdri54d4pL/xGHWPpmJUOTqQHNwImvhG9t+
	 dQLvx9LqmEuWPUeAgDzkbwJrG2CoaGQBLq4lEh6fAF7obtlc98p8HoaFcNj5P06iG3
	 bECkfYb8S9NyivZqtEN2tY95OINa156fciWNcIsrVlIY2GOunyTy05OEVHWTpxXDUh
	 05E/D7kALKQRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEBE1CD6E7B
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 19:44:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178068867370.29796.144909591820703003.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c63984a11bf397dc91f151049021be85158bf57fb6b196492cd7964b75b926c
Date: Fri, 05 Jun 2026 19:44:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780688673
