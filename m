Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 303DF17A30A
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 04:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765340574; cv=none; b=dHzbiF10jPNYLXliXwYCveY3Kn9QJbekK/D9wvnHIHPTH5JwhDm0ZE6M7DA08/fEIG/BdmAqC63MQuNJDpzf9F+OzSlScu8QZqPOUPhQ6VwVWxLO9HYyeIufuZLWrjoIrEyoIRPjzozNCWmryaXme90A7mJ/5purDnDb5GdFdhA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765340574; c=relaxed/simple;
	bh=9THzwkbX8+Yl3Vcc0oJxWimIeRCYIJsgZL0UUfFn/YA=;
	h=To:Subject:From:Message-Id:Date; b=Kn4kOdX+Zr+yhieEtSLLcKK2VzfvCw1UOVOxj4WXvT1lbgJFMvcfZTdi/ldg0KUZ+sBIlEtii0KQlu0K9oL8i9/spGXtW/3cUfvfHMJixvBZJZdvKDhbhgLZiIk/SXPzzDbGR7hZ/LbywWWBd1mKdd7yVlvehjT2liXyB0xE2xY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ifhFPSF1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ifhFPSF1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD185C4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 04:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765340573;
	bh=9THzwkbX8+Yl3Vcc0oJxWimIeRCYIJsgZL0UUfFn/YA=;
	h=To:Subject:From:Date:From;
	b=ifhFPSF1vVJsoanvuHKiJRwIqEVcV1mCfB2eOn/tJYzSu9M0G3TxwbIq39Rnq4VNJ
	 4dLmvC9B2/JVNTeQTE81ssFXBbz+yfqhf/Hyqqn9njgJ0w/WquIXRvkK8YmM1I9dsr
	 CRvEW4R0h1TrlefdZyfmdpMGA7m7KmwjyKcy8CYDCRdIETBzcakhSmLOWf6xjyj03+
	 PeEWEiswXXeYBu41L96NyO5+zZ2SZwH/x1nq+poQ4j6gfCnQJk7nZtRqT4d1vw1L7w
	 8QNbaKotXnpNIuAmIau4AWKn+zd5paLqY5Tkns5nKfhZpVGbsRv/bbdVZAmQRIWtHW
	 GuHMLEjHKPpbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93D6AD3C526
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 04:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176534057359.17903.9884765494846677073.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 97435ce32aab4d1b9839b669ecf9fd606f16155834dc2f29c53cfa220ebb9cee
Date: Wed, 10 Dec 2025 04:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765340573
