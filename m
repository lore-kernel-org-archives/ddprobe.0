Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 450DF2D4801
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 17:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759514394; cv=none; b=YgB+imuJPZQsU3nxt5UpEm4GoZE8bvvA3fai0/7h/ZZKAkojwSjM00IzH+elf/eEmAIIfnUAcbjVURHZUmG8IHwUB0u76eru9TW/yzoCMdKTuibAC18A9XJa0AssgMdIHe2l8UUaz1N5jrqiKnmge6StEqNSH8053OyrDFSiQuI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759514394; c=relaxed/simple;
	bh=T//JK2pc00uNSutAlAZGB9ysbV61uWCNeUs6N4TNjHs=;
	h=To:Subject:From:Message-Id:Date; b=OjBeGE9i7p39r76f0O1jBblxMtIK6yStsCySaPNzc5CCNkmCgAifVjx5+kNVQKN1OdkF/pJkYvAnqW4acCLDkgoyogg4KGw3ZZqW+FtlBPv8hCwn1aYyflWU27A56Yme6eeEwF9rNfSaDi5SpK2cSrPxO+ECiKL8tHnCed/ZVe0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=phtVuYFY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="phtVuYFY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A718BC4CEF5
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 17:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759514393;
	bh=T//JK2pc00uNSutAlAZGB9ysbV61uWCNeUs6N4TNjHs=;
	h=To:Subject:From:Date:From;
	b=phtVuYFYY0SIY6INcvtmARSTuaqcwrAkRoReT8vvNuVFTPzEDCO0xbsTcadfOKdyC
	 /JB82hWG2tqQZb+JtVJkbwEZjd33v3ZGkWTRCFxhxEGBvSLFXuVFwwcJw3dXB1NLZQ
	 QGxJVyBYZpe2ahw9mjo1GLLEalsVIj2I9lSIdILXVkIjIIvjFNDNiL9pw6Zk6FYd6j
	 2gEnKArxcLjuIzidxnb4ekMxNTZgrODdZvYys4+7hmNfx7bMjjrna05vW+/MjgNilf
	 aY4BaQOhtBak83Q+MB6k987xhO7lwkXGHAPjL9VTSWu+8Wld3PPS5035zOdWbk4bPQ
	 jF5k1H4dMflvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9508FCCA471
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 17:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175951439357.21035.285939227678116346.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 738f9395cc66304606c9456f065d9ce335adeccb1026ca1348d6068128e54e2c
Date: Fri, 03 Oct 2025 17:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759514393
