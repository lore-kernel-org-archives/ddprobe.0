Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3296F4334D8
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 14:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787580634; cv=none; b=gnRc6Kp0Nk29ZAcHAii0nFeFOuZBOJmARYj8874ePFTi/PeDjdiI2xKopWrxgYH/m53TnZMOtwuvhhYdAAaKBeT2vVw1HB30PvEnpXScOpoxgxJi8WmcYCt6JfoGODmUGr0iR1ZDN9pE31R7BL54Ab7aeMFWb5rvCaOCebujwho=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787580634; c=relaxed/simple;
	bh=L2VtNavlL+eu6Af51ui031Gux41h3vhjSF3kMC7FxA8=;
	h=To:Subject:From:Message-Id:Date; b=rbFDyFsMunsY5ESQ7a7YBefaUdz30+dYa0mUWV1v3powdNVUXVa8YYgNp9K2PSPa0zzVkDmAkOCS9bTE7VaJOiBIPy4g2kvm/i2xS5SVlYVeIN4yrHaON33tPzySm1x3TYwj8MA4mEANM7Wj5/awFGh+ZGH8PPXfF8ZwUa7ttx0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Nm9oDtGc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Nm9oDtGc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD239C19425
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 14:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787580633;
	bh=L2VtNavlL+eu6Af51ui031Gux41h3vhjSF3kMC7FxA8=;
	h=To:Subject:From:Date:From;
	b=Nm9oDtGcKS5QEPh62EZI7U84dAH9BMuAZbQ4PF5C7Zl7zK7ThNJ3E0Fr2Pg1Fgnn1
	 HtwihBxTlH30jsVaMv6sXk2NCV/+ktpXrdS2LMyRV5TZwmjG7Q87AQuHJ4FP2PGSzT
	 /ZNkjD0Bh046HLGfEvwA7Ki6qWE2yQ61TTYk438S2cAUbMYCjAPBqTK+9UDvnkbx/w
	 obUlURmdLk2RtcZuSsl/YHA9EzEp2HNlfmQLhuCMgkc/egv9GhGql2cK4DHtVNZG43
	 AlzoJ7F/ZAThqSErZv4GQJRPD48FvxO5r2MKY0Axgvi13+u6qUb6dZmzADVLpjfh6A
	 ePn0R8HlcmNqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA90DC5DF94
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 14:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178758063368.17156.13513417233681216995.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8619aa650785d2886f2c2d58f8e962b2371b4ae62fd41225a7c716a04549278c
Date: Mon, 24 Aug 2026 14:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787580633
