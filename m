Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CF0F279327
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 10:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753267795; cv=none; b=scUv0rZ0GmvVEQ6A9cdwYuPRas0AOClCvURt8yXGLUS2d9mn2U+rEfblwsEZ2Bxy8Ubau3RKeIIRNsUx1VQXI0OZhhts9DTW794sanv6a4BVmNcM+bXqXT7cHaCgClu2nj8ZLfvLHNchbuEAVc1zTJ63Q4yixtoIThtRfFu+pQA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753267795; c=relaxed/simple;
	bh=D6nYIYTDesU5EhvQ+X5fQp9S6laAcDi+XH6wlS3qL6w=;
	h=To:Subject:From:Message-Id:Date; b=NEM27nUixtVm7OYYuagvafxNUiN1jWIDivLWBWSS0eRYkQHsqRuueK4qOVB1RBm1Yz/CXrcqT3N8obqPm1VejcdEAGD9cue9tTSGE1lF4Ww8xLwNNHWKftlsAzQfrRVbC8lbsx38GIUj+Ac7AnnpAafiEPu+ZgtxiKI2LBZmej0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JY/rk3qQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JY/rk3qQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0D91C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 10:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753267793;
	bh=D6nYIYTDesU5EhvQ+X5fQp9S6laAcDi+XH6wlS3qL6w=;
	h=To:Subject:From:Date:From;
	b=JY/rk3qQLfYT8Jr/SX3LW4zicEftwEGJ/edAQWekq7gvsisHcdhCSzZW1ZHBpqOMZ
	 U91DxSitI3Z8Kw3rINPfihcRZ5Jutkg3IqjORZB3UtCyGiMR8kEOXD9ghpuE6MY0f4
	 w5WbuucJlskqSuCzvpEvnZigN4jSrxZk/l4zp0j+NoMHKm8WA4NvSb+wPEzBqBF4d8
	 7CFji95MRV9GEuNw2eNCDNysj33IUrPZJAKCTdoVU0S+ZmJOxyQlO97tfeZqz6oazs
	 YRoUWM73R/VRU0RvTY8t4XauIj6RMOFCs7QGRQGW95J7fO0LZ2Mo8kdhxifWQgYnN3
	 xVM1vi8tlQoZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F8D9C83F17
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 10:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175326779357.23844.2442123628456431073.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2bfd9868c5dd5813dbfe09e076f30b33ef9a5cdcc6e48915d19a9bba236921e7
Date: Wed, 23 Jul 2025 10:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753267793
