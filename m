Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6769F1EA7D7
	for <ddprobe@lists.linux.dev>; Thu,  6 Feb 2025 13:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738848356; cv=none; b=ceU+rFlwDOzjgyrBYuYYdKgZBu+SK6EQQUWrg6P4TfTmphBoE5eNkQv/R+HyXZw0HFtlLW4teyPpFjnUYhVF8BTJwsoxDeOEgXrkTg0WuxGeAyfNVb4W8J9gVH4UwvD6rNOhfykrORgaI1Tv3vDxWHwUrfXf0ITfgi6iWyCZY7o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738848356; c=relaxed/simple;
	bh=w0VCeMg2iy6PlScDySQAX9l9x97R2QoyHCgCZiGYiH4=;
	h=To:Subject:From:Message-Id:Date; b=mVvNFr8+ODQOhU+WHXOm5RKQENLrJM+cXCZoogFgLrtqrv3IY0JX6e6UtszioYOCTted2UYy/At4/qijoNdf2w7gc9p/fy2adhbHI0U3toYXIyvWJnAPn5HwGNCPVOQrlQbp6QYXU9R5S1EsEruLNgw9ENYqA3n1XcyxNLZY6v8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g8yUBtgg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g8yUBtgg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6B40C4CEDD
	for <ddprobe@lists.linux.dev>; Thu,  6 Feb 2025 13:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738848353;
	bh=w0VCeMg2iy6PlScDySQAX9l9x97R2QoyHCgCZiGYiH4=;
	h=To:Subject:From:Date:From;
	b=g8yUBtggb9Ocho5A7jAu1cR38Zp0gL7hBdJ0N+PLckInHBIXbLL2TbFitRTk2J2XY
	 ucryTh47mtQxjIsPyojtAPl7ejvE8xVQ0tWgC2ZS8frMjKZjZ+drqgkz/rkZevpvse
	 MQHDaDXIRbm5VFFbEuo3zPY6yUoAmH+MAY1B04tmRMmBxK3mio2SO14VHp3NAv4/CC
	 5b9k30cT3nJqR6N4giEMl/XR3B2yfxIJt4Q7iFNxQsdsNH9lIpJnRhRwnRkWtKsAPG
	 nxrjiC16TTscXSFELnV2IhyWmrc9YVz0Tti5hi90fQIHKEclaLzqrvvxDjXIsZnCTn
	 +5rIjRR226Mdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B46E1C02194
	for <ddprobe@lists.linux.dev>; Thu,  6 Feb 2025 13:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173884835373.12121.14584118350624350505.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e479faccd88f04dd214e48ba26780dc9743e4073e975ac2e78a2ff8d37669bd6
Date: Thu, 06 Feb 2025 13:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738848353
