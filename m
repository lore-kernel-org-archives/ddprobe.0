Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F288152165
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 22:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728252354; cv=none; b=HpM7hseMNNdDmi7HaTnWkhMyz3fg/UCJG6d3B9Zd73O1unFc7OCl3Ok5p6RR60R+sxc3HzYj4Yw53uFarXNCnmqi8RQlSqe6Zs0Lveip/x6q4ZoYwDn8Y7WGAEvImeo3O2UxiC6UjZnf7QFqc28twmowkRV/WTaw9SpL7TN+nkU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728252354; c=relaxed/simple;
	bh=3DEgJhauMhRlXLe2uUOxNsgSk7yfqHmCXBwIBmgN6nA=;
	h=To:Subject:From:Message-Id:Date; b=O/i1ZhMXCMWRHAjuk3jTvBNTET0K7KsmSNN8XbJrGKYEgezH1JrfFQnW6z1KLTtMj8L8A4cVlf2IRK5iMIliOWaqGAHbxls4kGFC+WGFgQmsPaDFoAfwOGnU5m9flir5tQ3YS8yRtwaKimwRfGlQJV4lNnF1LWcim86EQ2AfB8I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MApl7OvJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MApl7OvJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8B5AC4CEC5
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 22:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728252353;
	bh=3DEgJhauMhRlXLe2uUOxNsgSk7yfqHmCXBwIBmgN6nA=;
	h=To:Subject:From:Date:From;
	b=MApl7OvJTyYJxSesd1PKduEx62xByQn0XQ8qRT3PGXZY1n0N84EdMDVp9lYORZf2u
	 NzApIw4wOFXwXcyNAKmNL4h+9nfqMo0Nbb3VunqC4DQqMnsmkGlGnTCdSgHy/Q/5xK
	 gqy1NkidPQ8r1uQdq4cueU5Mh/tFRL2pUMKjvD+cKnFTpf11ntCwK3wsL7ryLa6mTf
	 n2kFnMUNSKJMduGkG3zYD33bpp5bthq2D6d9yGtFTY01Fv4mZocykD2zLsdnlt5mB4
	 keSLXQmiOSdzKbwhoK+dTxurH4ciLo9iXWRsZ1dK4rBUHfMTz1Y0nxjEWaV67lFp4R
	 WXf1ZbZ3stY3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3E30CFB43F
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 22:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172825235365.18923.4847878720180559875.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a1aa08cb558704d9ad9d262486a60c76ae04fcb7f32dd5ab578e156ee5d661c7
Date: Sun, 06 Oct 2024 22:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728252353
