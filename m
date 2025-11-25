Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E5DC2D0C64
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 08:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764057774; cv=none; b=fRdXA0LTD4dfL3cAbHBpWuiLTd70T6OhXcAXdG2TlAlzyE4AWLlfBokyGnBnXbmlXbFk5E0PHYv3cu82D6W9IlkbvO9GQtIKC5D+Cso+xX53Peao9CtHWi7m3AcWs7Dki2Oy6tISmyibRtpRKcbMi28pP5CQSbWsxnULDPO+7r4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764057774; c=relaxed/simple;
	bh=gxo0J9PDMMTSbVWuuLchnqc7zWOJmh2wAzhoRTcqCPE=;
	h=To:Subject:From:Message-Id:Date; b=WA+kfFXZ0V7zWDKX1AwdpbYHNI/D/PpaE6R52ZKr8ZhnB4C2SX1lpegn8GqlIs+53l1zqQsrTzgJXSqGacGg6zyRHM4K7BdjMHgLZkwE24PHaAQH5BECMapjPaal5PNH3yQognB9EDzBZ9s6JJcXA6LqQBb3nsz13v472VZmWvU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WgSogKc8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WgSogKc8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEE19C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 08:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764057773;
	bh=gxo0J9PDMMTSbVWuuLchnqc7zWOJmh2wAzhoRTcqCPE=;
	h=To:Subject:From:Date:From;
	b=WgSogKc8JTpsM5L2floWbtn9EwqPgJQAB8RN07P73XS5sXrWcEuzN4oqUlKf+lgre
	 8/8/mEA7+2ipWnAJJKYTG1aaM1cn+GJY+Mvg1hb5rEI9SzZuxDEJbuT/5yocmddxI2
	 DTW2ZGjdXZVti7xuzEqyGhE22rqQDGaApgJTwjlxugNLT8mVRuKAEqKdQ51HhPBQM3
	 sgQg8deUajIQQ0EOXD5OYTUGo+U36I7e9tNEjE5XVaHWWV4iiDVJ8Fd+9cMaNUiTqJ
	 eKIvyppPpQ5uKsj8ajmW6FeHVyumz3oP9j0XasNu47a04VNyrjulmveCDhDv6Ek34y
	 XQjk78Mwr/5Kg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A052CFD364
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 08:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176405777361.22030.10532566118043076309.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d801267e42a42b343ff0b650709054eb2eae6db9730a2330e4d97c54a5517609
Date: Tue, 25 Nov 2025 08:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764057773
