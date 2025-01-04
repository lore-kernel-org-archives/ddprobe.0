Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B4983A8D0
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 05:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735969554; cv=none; b=heFwhZtehXXQkRCkbAfDJN8a0pTGvCeeIcoc6E7MqTQKBtD9y5g1vE2RoiOkaXISojRVwYLrIJXomXjGmsv+7GXWBFIXDjM2y0kq4wuBbMmK++ZZbqzwxYLMjiDyj1Tp96CJO4LimixLdjS/kdRO0JQ9uWCeagKt4WWl4/n6Jx8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735969554; c=relaxed/simple;
	bh=GYLABBo8XSwj/UQ/AjXhl1qMRegpHRKHLnALLAQtBoM=;
	h=To:Subject:From:Message-Id:Date; b=cVYlBv/CXHtwzfxsm1sgLdjgGJe+UdG5WgtqU2n4UIOnw2CrnpUxDDtXRR0ZAhAHSM1PF2+dBZSW/iszIE3CkRWwPow3n78BjrEFCS7H7uUPkdh2X03xpuAEO4A6s987l+H+SKl1uCVTqat/IDVJYpXf6eZsuAaku7DcW7tRRmQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HbtxHcH1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HbtxHcH1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEA80C4CED1
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 05:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735969553;
	bh=GYLABBo8XSwj/UQ/AjXhl1qMRegpHRKHLnALLAQtBoM=;
	h=To:Subject:From:Date:From;
	b=HbtxHcH13NUHz1ILMvvpUAQIMBfSZE5r+oqzEHiWSeBSeQE2ySRQ/fqRIh/IANGS3
	 BD790UHQ12lwzkgM95BI0VwEYlzSvMgGhjf73iM4exeon49UpIbgzAX7amsYCXrWqx
	 qrhLwjHZNDmG673Nqscyj5rebOwIGgYFgxzPo+/W3P48HV1hl2oI0a/+YMwxcbkpvK
	 yYbe8u7aFijJCgB3ZaU50Y5TPVa511J2oIDj8+dda6Z0q5fmSJwA6/ShLf5FO4MLnu
	 wc8/BjT9rDPRsNTnu6woNDO5hlFQ7XWuNEmizuMZYA9s9pxR/oYiVydEjZrW8aMdDd
	 kCcvo0gYV1Zrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99196E77188
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 05:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173596955358.25508.18302295538982568617.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 65f3d38cf2d4f45ac83bbce887af5107853aea10aa0bc6e73821d97a1cb5335d
Date: Sat, 04 Jan 2025 05:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735969553
