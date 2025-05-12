Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3990F29A9D6
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 19:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747078194; cv=none; b=bIx/eTEM4cr3dCVsk6aO4Rf3KQPJ14vgzQWnd7diTE1K+JXIx9hYXGqQ9+hnm9ndomVtv0mpNeyzh/CNaPZDZBOIr5jfh632w5aebPgDs65hk+qH70rD3T3tPOA8WT1fN2Yhj9slj3YudHGe+nUIxDqU+FQxeOTtWrBbWlqU4OE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747078194; c=relaxed/simple;
	bh=ciexyyQj7K2dBu+ZU7n1Sq5pQQy4YGitj/ePHCtgHW8=;
	h=To:Subject:From:Message-Id:Date; b=RkGBDgr60j8lNau/pHbfN4IP8Jgvqst9/tchLVmrsBxiPO2UQIyvKpkb7Hbc4BYOqZYb20WVnddaoZIw4l6UtEMXRQMpKqOQgeCOwWr5ae3WKjtHZNcLdwrlaUJ20Ipq5JwesKqg6HhyxjIfRIh4QFNVlpAd7vG9aeoAQ50ogB0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wq2IvUa8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wq2IvUa8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2153C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 19:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747078193;
	bh=ciexyyQj7K2dBu+ZU7n1Sq5pQQy4YGitj/ePHCtgHW8=;
	h=To:Subject:From:Date:From;
	b=Wq2IvUa8dRkwMMNc/NdGcDRdEX0WuRpjAQHq9Ra6TYd8hK3FqzGNKLOZUX4nMoXHX
	 8HygZi06G41/KUYTzr+SLeUCQdxZcpauWmNPBJVs6BbTEyXzYRcTdyN2tokGpFoGtn
	 dRagp4zQHTRwEVAj6G0CH/fR7DvmCBKSd3MEw2WBEb/BG6XcKXKAgHYoGYTtmGX5Xr
	 B3NMzy5nl04D9/XI1RlKvsZ6y6xzcxI+GTAJHGGHz4xh7YpDT9BvnCcbSi1K7OIL4E
	 4v+tExXF+HTYi2JvKcdtyF8WTf1pkzZ1ZBxqbzGqPrA/fUCBAlaxaIYwaIQcZL3nGt
	 bdLSAxW8XDUvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F566C3ABCB
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 19:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174707819357.12033.16976144746520147770.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d2c7d53739607f67be1c3651f41b0f5ac938f8b42aa86593cfd7b9cfb1ed93de
Date: Mon, 12 May 2025 19:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747078193
