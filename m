Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A07E33985
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 03:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756438194; cv=none; b=Ym5BSr9v6tVcLRBuQfrnBoioZycQCJ/Bdx7a3khwf4IjZoafdXYyaKRhjyu1q6Z/LhvgK2p3ohf96ufxLBEmVCRaq2O6+ZxGBvam2Kpzeg5SLEBCEa1nQ1FkEr6ay5XpQ1VuFaZmdxCJk80ng7hTxugpF+saSiRu/oArexdXT+8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756438194; c=relaxed/simple;
	bh=107+o+phfkEC1zO+8SKnC+xYTNnl6f8GW25+IQeYtxQ=;
	h=To:Subject:From:Message-Id:Date; b=IZhpjmJUq4zxL8D4pbXgvtv+GaoXOOARFwZO/idpzALz+Oehd3Mh2sdsdEIg1Fw3LfU445yHrYX/znqe7RDSizbeM/YIveph9ggyVxF5iDtyeKz1QmHnZ95418D87Hue7y8ejR51m7tllPH9TVcqI13hN7jhWKNyMhksAc/NPTQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RpO64uTg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RpO64uTg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1A73C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 03:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756438193;
	bh=107+o+phfkEC1zO+8SKnC+xYTNnl6f8GW25+IQeYtxQ=;
	h=To:Subject:From:Date:From;
	b=RpO64uTgXghfw6pFtTT9uUWNLGOcsE0S6n0uKXs8MBKuywRxkuHC3rXtBgE5aRt9F
	 SNMip4W5eaxkMLbqSDj8x6LmpCsrXl5Fo+Zo31hP0Tp/GHNZGj4U4CWTqzhVOwlvJh
	 DUfAD9EzuwcnIW1KIx5zJCnkQmGhbubQTD6ycWzF51+LwA8Ei0IjD0QEDHqbT2dYOr
	 0bXb/e4REdgyCzmcdoLh921RfInTbKrLKXemxnA7HKUoezZZibZ60AuqZUF1Dxs4ug
	 0EtRQUWsD+qg0d1zAkaTF/VWbl9ixe0mTuUvTDnR5xNScYTwuOlwBFk6ZjknxhBXZS
	 Wqq9gAnXrsw9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F801C8303F
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 03:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175643819357.25203.13010021867461210523.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73c426f9a61405dc6bbeaf7e9b9bdaf15bbe554d5836b4d19db26b5d34c094e7
Date: Fri, 29 Aug 2025 03:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756438193
