Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 345D4548575
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 14:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788962434; cv=none; b=IgEpo2kVzss99aqRaxrvfQIZLWKw110NQNd0sGKhqOlBeigkDk1+Qfob2cAOj6o8OTxqxyEbWCRZeSHF/YYXWcbsNp08avbqohiMu6R6AygaZ/ENJMbXnAbFMeWGQXLARZrZSHwLL1KLuC1/kHxV9UYKbn06MW0D1cK1VH8CnuM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788962434; c=relaxed/simple;
	bh=LqdvITM5YMBbDw96fGSjieV6je8q6o2ybQ+/l5ch5Oc=;
	h=To:Subject:From:Message-Id:Date; b=FLSPKB4LTOtAlxQoqGEBdwgC23TpkszrhJ0lHjLnykJ63C0I/rEKJTG8jOa4eRiaHPvt5v+sOMN2CejGhb9uJAF2LL5Xsn2VZxPAkcO+dHbuO37dB43Gcy2YTw2Y/mg6/on8QiOefZDGYdvxu0d6ymaSzAHsQbsFxSU4JwghJQc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BWccKU8c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BWccKU8c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0878C2BCF4
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 14:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788962433;
	bh=LqdvITM5YMBbDw96fGSjieV6je8q6o2ybQ+/l5ch5Oc=;
	h=To:Subject:From:Date:From;
	b=BWccKU8clboKVccdFsfboTRx0GfR4WERzYlFtEJsqpSiweLfX6KRriLAhE2QssDks
	 HniZWGXVUjdUR5sNYzrCLOwN/AVTbbHocOrqMk3ENtaNlTbFrUXwnFNcQEeFkzlvBu
	 Z4UXs55rTWNxNOqnE8jPbT9v64I6UtpV9O32Sv/qQ5AhkHX/5GY3XCry2mP5Ry1AlH
	 8iOmmMyyKLYyIf8XIgrEfY9PYrQNKdLRIj9aqazNrZ27fbGtvLMwcA0HSrUhqyPokg
	 Qbo07hXl103UHx6hPJDP3h+ulkXcptaL1+oST4HaPbnIwZDQHwcz2fovQWpxEqWs0Y
	 ZC4HaPe6KftpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF0D8C79FBB
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 14:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178896243370.22208.15622921102207374576.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 966ebc5d57595b9ca35e59dce129d95cc428c6cd37dbba375224fc53df968e09
Date: Wed, 09 Sep 2026 14:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788962433
