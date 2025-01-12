Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18A753C1F
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 20:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736715354; cv=none; b=GNIFmlJjQvxuYT3q72TSWrsEHJd45PKEln7P/w/lGSNBYI7mc7BmxKGpFuqwV5PRaezIRxf48zkW/zx/NCeB7TTwB8ulRQiv8YNVw5Xogp7RXyYzPuK3KcuZ4PYpVQ2ORbaCVIRF+SqiNTno9IMX1nJQ1s6le98pK7QEkcAz2os=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736715354; c=relaxed/simple;
	bh=X47BiiYwpDJ6llIE0Mg9Zv89IZs44tkMoq9oNqq35rg=;
	h=To:Subject:From:Message-Id:Date; b=X9gyZJW4vXKZlKR3z3IX8ZRNQ2F6hwE8WMmdRNFNw2VrOT5rZsAdDd99yyxApLsJD0sjA/DPA2c3ZUdk3qTgV7D4iJ3iP3Qbkt/7MO1Zj6Av1Io6wMl3fmkppAFRCQnblBYeLgGzrWgVJ60nPDqE6tDBtq7wNeTnjp+gc3qvP1o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fxPkk4Q7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fxPkk4Q7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABD8FC4CEDF
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 20:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736715353;
	bh=X47BiiYwpDJ6llIE0Mg9Zv89IZs44tkMoq9oNqq35rg=;
	h=To:Subject:From:Date:From;
	b=fxPkk4Q7KrNMDj7n6PiGXF8kYXGXyXMmkLCuVTyJTwjfjV4rss29aQmkJPNQMbrPK
	 NZi1i96pUn1U+4/e6QzzKO7Tskog+5fRK3pr2M95bIirzo2NgrM5Rz0Rb6Nwl8kEKM
	 k4zqdFDm0kkg/Vy33OqxUjJWbehYLByWlzr8o/DaX62WDVOR/A90RPb38dAEymI2U8
	 qMSfx3vdAMJ+Tzz9S/Zm8IdjVa9QeqtyBnYrcnoxxg08njQvb+5qjzdyFLSJf5Rcn9
	 f5REG/qhHqhYciUja4gT++c6jQbiZKtzqkk/enxHH/qgdDXvHkZ8QGSrE9S2QFzLzy
	 5RTVyjZ2DvLwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 992B7E77188
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 20:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173671535359.13978.2396773685257370022.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 57113d99e02804f96b6042b53b7b742dbd096612c76d63dd6cd346029cf5bbf0
Date: Sun, 12 Jan 2025 20:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736715353
