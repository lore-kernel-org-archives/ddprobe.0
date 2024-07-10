Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4799A17FD
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 02:56:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720580183; cv=none; b=WD7fpu8RS4sUDFPIh/TPjYbg9GpjX4al7+CyLFNA3iywhpTOsTk3f9hanSXgzQOyPEUlXkZnl3H/otuzz1naq5sBsRVZgIg1468BgzU4L9Im6e79eOvTyzzrargtpWKc8M0I9YF6j3+EKeIvvKz8w+8M2bh6Yvcs2oelWA18EX0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720580183; c=relaxed/simple;
	bh=9QkIlMk6wvnyUaIwybdKrFIOEA6zZW2m0pZS2vDRdWA=;
	h=To:Subject:From:Message-Id:Date; b=O5BnLx4/pe+pNVevdLaCfgNmF5voKgvH6E2GGKnC+gFYHmxwTJS0d3VJMAA5bTRg55oNAkuH27tOwAo/rwngjriFrjavfhTMnLnqxVHng+u0xbWLaktjeh7aS80LUylMUseMY2cUw9p3kkNxSGbU4KzP+xD13EP2aXQVjh/rKkk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Tt0uCzxy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Tt0uCzxy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5CDFC3277B
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 02:56:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720580182;
	bh=9QkIlMk6wvnyUaIwybdKrFIOEA6zZW2m0pZS2vDRdWA=;
	h=To:Subject:From:Date:From;
	b=Tt0uCzxyDdEoI1e3nMLQL9tm0MdncScIuL7VAKBQkuUugcmPhaJZfDB8Q1Wo1qYgI
	 l53uOwIhN/RReeti246YJAabHJCb++LvtRDmg1qn1CgvKS7uc1xOIITzLIsjYbsBi9
	 Rrrxmm7RWxhabg9Yv6mB0iNiIoXxdTihAK1bPx+GNvHyk6KWvMowAZGv4OYHxCUXbk
	 wvEddSfist3x26vl2EcMb2Dh/TGIEsRu04V59NWfsl2R07UDt4dGZ8suS0HSuy8rR7
	 Xiowd2wos3WEzBNj4TEwM/tyKDlTddxdXcdjZ225VUrCZQeb3+F7aa9LC4cDBLJWPF
	 jRZpRWrVLexvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2A9AC2BD09
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 02:56:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172058018278.28417.16859516755995516413.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d2ed47b62d55c4e09759f6bad4af8f3037945ffd44c33dac4a14ae99801656b9
Date: Wed, 10 Jul 2024 02:56:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720580182
