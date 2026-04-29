Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D0DC37D10F
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 12:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777464454; cv=none; b=NJ9dB5MKsFyp22vUj6iQex+o5qmm2NjQ1x/Awnj40dFxO+mjOoujPy2R8BYEXWW0H862lgqxvJWgvEGonBXEPr+WnH3EoB3V0clJtxVYHt3bnAwDoImwWFjAURNWPLNB/i7iM7TQ1Q+FaSBFa6bKYRYqrc7A2FCK2R/zyeWbeVY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777464454; c=relaxed/simple;
	bh=XJidvnfM7fN9taFgBagzCwqoieUNMlEnNLq3lJS+UZM=;
	h=To:Subject:From:Message-Id:Date; b=A2qHQegce9GnBngfrzoykfdFoW0ooAqdAhtL4BzTiDVWokulxg7sJYdprFVAG/hZKS/xhHCsav5D4bmaEVyfMSOXnZ0doITIvftQ+QfoeYFFAC/yGd7tGWG8hxy8PajV/WJz+71eUY5hC7cwMTX6jOF/Af3Z6TrLudmg0+dFmQ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mwWqTVEv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mwWqTVEv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7FD2C19425
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 12:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777464453;
	bh=XJidvnfM7fN9taFgBagzCwqoieUNMlEnNLq3lJS+UZM=;
	h=To:Subject:From:Date:From;
	b=mwWqTVEvLnmtwm9lzuYvPRSekFMb1qfEAv6qeFQNmuc+s0aoTYAK7Mxm53tfmAGyJ
	 r3G4645KMmcFiNG/ODw8DD8kzQfeR8IdGSxASfQT4tFmqNvVuqxxzwr03dxEoFjIme
	 Y0u8zCzjaI7T1EpkZR98E+Rj/RXBv3S/f+ioW1elMXG/vIe9yXlmSz/taHLDeO2oK5
	 o/cUznRtVdR+x5yy1k6sKPQ1wFm3eA8Him8Wt20+gWes8Nvit3OOpyMe6FrBIfv/3i
	 ybkLqbxkDrSAX3WaE0q7xak3OlZxUq8WlZGkRPx+SJ2oW81NmW8pCdPEeo6DTOW27V
	 e6vpGPvdSIT8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9F01FF8867
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 12:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177746445368.9018.718706267987987112.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f26931b55ceb68098447b990b2aa0fe82e9f651209bf4bf5f9199439031eaa7
Date: Wed, 29 Apr 2026 12:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777464453
