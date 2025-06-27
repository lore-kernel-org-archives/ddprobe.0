Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DD451A841C
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 11:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751023194; cv=none; b=b93NUNpwg87J6Ds1/FCwU56SC5N4nATC7rVneZyRyRbCTGIZcgDzFYzluLWNj+0JXHnoHa5fsXO6p2erK/7uRcZARNV3jvPhruTjy0i5UZHZ1zQWMgYPUdUPKSE2TWUqKpPPyjB6mGXZ6OuqbnICdq+uUMDrMYr2uKEtA9SNn2Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751023194; c=relaxed/simple;
	bh=p8GKWKESGSEZ46LBv7owHm+fGJt8Z/laHA/e32xTh5I=;
	h=To:Subject:From:Message-Id:Date; b=s1q/349lQDMj+dwwN6ZTTjFHA3ckIgN57bwe5ffl1ONRbCRFrQ+FJYuZuOdAv2xDo67EyEPI36ZXJAE6YtSd+hlHeVBLCCfLwHJg3uWs6Acnm3j0Y3zGpSf3RnQxchuP3QUONKZMJpr3Xyg6Fn+nnCPA3V5APU1vYeRmw+4yCys=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RJ89LvPB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RJ89LvPB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A38A6C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 11:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751023193;
	bh=p8GKWKESGSEZ46LBv7owHm+fGJt8Z/laHA/e32xTh5I=;
	h=To:Subject:From:Date:From;
	b=RJ89LvPBTENc5p9St2XPXhalmueI3/kYZxHIKrk1gfCjuKgbj6TfVCAahRjd4bxWs
	 03k6IBdTBm/tu/iW4UoiH8vGEMTlaawVwaCUwQ35FQXWgZWRnvFxydxiEuHDPvmnWt
	 2+djJR3HYiZejlKCJiH2YiQ2RpQuusLa3O2ldF6yCGSYnVNkkZiOLF2FPwjRmooHIc
	 zpE/XPTynCeY+vCsi0av9skAyC4f1b1W3E6HgXwBm2KMtqteRKagJtOrdgYEHtJJtQ
	 L7VyMrhv4lc+2uybezkAZVoj0PGSHYiM9ZF+U4kuh0nhjjDXfGsDlJIOD/5ngRHO0S
	 6+iMLTEBObGdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD26C7EE31
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 11:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175102319358.7850.3545902047790550608.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e33f09920c58a71e9b1dd859206c666d626ab16e09a2d88ee8eb8084605030b
Date: Fri, 27 Jun 2025 11:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751023193
