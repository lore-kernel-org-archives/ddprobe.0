Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 300BE1397
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 23:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759101594; cv=none; b=uZwuHBGk/ce9q1t6BL55RsUzUpFvXx4KnXgVpLg1HS0wvHAmSn52yaKt/MdXhvLkcNDwwL+V4NR8Xe0WHlx2eVmQP0iRaPMoR/VWCwNKJhheO0bWG+zOGjRlW085oU4wqTHXyHaBW5QmozSG5WRHFcAulooicW1rKH37VPcfB3M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759101594; c=relaxed/simple;
	bh=U+KiyLikUUDk6ffft3PUkN5muN6QIdBhova9Djf3XhI=;
	h=To:Subject:From:Message-Id:Date; b=HNnAuIwXiXnpT4Z+q0IATtW7ZswrLb05k5PQNRadlbqM6XTLNRQPu2zMl82qpl0YMX9p1ZPUPS45NiI7bZcyB6tTYDGnN54AH+Rtwcd5dLzhDG0ciPbViQ8HId1PuXnOzWzrfpoI2308jpDW9XbMomIVxb/jBJGiG5RLnqJZEzs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rNyDtDY/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rNyDtDY/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAC5DC4CEF5
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 23:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759101593;
	bh=U+KiyLikUUDk6ffft3PUkN5muN6QIdBhova9Djf3XhI=;
	h=To:Subject:From:Date:From;
	b=rNyDtDY/XuUkTpFiTd+2C5BrZhRWEePf9tYG3R1pBejuxIoim+bgsLoL5h+Ed6ozX
	 1JdpKFV532CZ+6KPTrLJ1DnNu59n5GxDRqLX5CSfVvHMnkHjh0NXyVaaIAeFej7y6k
	 fSUKUpd0JZ2N1CM8aLH4nCNL2tmz3UDwX8W8URPgx8qdSTktGuDCFA3eTfA6h9DR8X
	 zDB/JUN21LT18lQzm4wZr8B2XxQQNeBY/St605ePxSp06zrUqQMOa0S2xg8g7J7zpd
	 i2cEp+CpwJf+t2Aozc6MhJ06U/p8XEQdkypIy2qJGYN4dARSEL6bk6xZ5f5kLXryVo
	 RavoUy4rzj+tQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 943C0CAC5BB
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 23:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175910159359.4266.3124666645627858937.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f967be22c017823d553d6c44616e630274d5bb53bee81c6c5784a1a1c1e3bb2
Date: Sun, 28 Sep 2025 23:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759101593
