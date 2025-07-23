Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15E7B1EF38E
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 19:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753300794; cv=none; b=Z7hgas3mi5gc6XdNGWDe4pbp+J5WQTOLCsPApy2wepagOH7/VSGqt8RNxBSmy2JLulK35j+H6BBj4togyOLboc2RjbZi1tbnnEDkvWXd3Xz1b5qh1KzjZqVw5O/Y2b4K9L+/3kEOdPTdPKEY+Zb7iZ3CmtcMT0zP6NTsBN+BVY0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753300794; c=relaxed/simple;
	bh=meEClwIKC/u0H03VlJcXbwV6fL18crSgD44FmfbGr3g=;
	h=To:Subject:From:Message-Id:Date; b=jVBDmWNjnGZp9rKV22wRm0pWKkMe5YdiWhGyw6arAhYc27xDsBPb+8dRbm3OJz77bKM+6JSiSf99wGw4PtXj1DXiXVgfUa1nhXuFrIg5repPsliG7FL35WknFcS5jT8lB7+mCQQPVp2UPUNanTFTy2khOf85Hn3RRNFIEsOyHuQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JEhrpXy1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JEhrpXy1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1E5CC4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 19:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753300793;
	bh=meEClwIKC/u0H03VlJcXbwV6fL18crSgD44FmfbGr3g=;
	h=To:Subject:From:Date:From;
	b=JEhrpXy1CpBcr039If9OKmAqiVq9i84JripUjlNdtinj+4ZKbvsxfWGLyEoQA+Gdj
	 Wo/oTcpUZrkG2JX6MhDEccrVhE18Rca5980puI8IPcqZwPu7QjbnYYW4IpiKyXtt2e
	 mT/VOx2gLozwEr59bY3oKLxzPTFo22JYEhHQ+bT5zXwZdioTbvmnDrFoLluPiLdT6g
	 89IaHRr5bfgxIF18yGaE52KFuqbWdWXaXv6gRrrqqSLD3FrSS1yRL5btqb4DA8qjy4
	 L/N8LSg58y6v9zLIv4fI4hPnV2XzYLyCm9jgmiWoQmmKbECA+xdcFE+CMpEDGmQi4K
	 RRcAZLhFryBmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92A78C83F17
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 19:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175330079357.2797.5249946944339201547.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 33ab6d53388f3f63bc5998e26bd05a74b2f102c36c0bc1ddc2dca162d65fa8e0
Date: Wed, 23 Jul 2025 19:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753300793
