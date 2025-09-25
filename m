Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 294112264A7
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 03:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758772194; cv=none; b=quhSecBMdo3OasOBbR7wMqDTZvn2cLMFDgMHUXSah+cB5wf9CYhYQyIklLSsZqvY52q8QKJz45gI71FkplcNioRpZxrd2Lvd5W1m2prGy97idhnKJGUgXLl3/gnPvVomlSM+cbYDKB9GxJ5fAbcubp+OgnhD2PitVWrHxQ/ACHU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758772194; c=relaxed/simple;
	bh=xxqpsEPlqcCLk7yFBwEbS2M9ZrijROnypDUVmnV6A4A=;
	h=To:Subject:From:Message-Id:Date; b=rANyU1GSplQAZM9Hmz/sW9tpzCKYRgDhdkvx1CiKTe5sA4FGs9WTlrHWZxnPedzHfyCIhlPXtWnAGLGW5YD6dkYVSrvYzS8xxb0ONbX7A0ZyCA6sTTxuFd1HzDQlLKo/rwaxRJ8oJxCJkXryGMXnTjF+06HdEGYmUYRGoRk6sbg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hh3tRKi0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hh3tRKi0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F390C4CEF0
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 03:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758772193;
	bh=xxqpsEPlqcCLk7yFBwEbS2M9ZrijROnypDUVmnV6A4A=;
	h=To:Subject:From:Date:From;
	b=hh3tRKi0rpNKZvag4i9gg41xVqAvzE1PKgtSQzyJd0mWY9xG7324dFLiNsCq9yugR
	 U7t9BbPjLneL6UtSUiZffYhYa0+KxEYOMPDV1Lh46PSK27oOt8V49AtCqFA1Q+GINM
	 l9b9q6KOmdBgtDYj4ju4yIdHGChigGQRaVVUFNYwCpWEL2Jq1F7PvMdUHNHz7w76NY
	 xA40pNQL7oOF+GNTEOGMWKeiNCYrc3GJCu3Z4or7qgHUcpfo7B5t8+XtlsRZv/jKqv
	 VUl3nOzK1ElGGyVkT6/GiKBkxxivnaYhDgfP0NQCpT09rsM/4nPEs8GLzqd1mhs6fk
	 KAS7nUdeoQNMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF7DCAC5AA
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 03:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175877219358.12819.11490585696601101780.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e22fd4c4afce1e8254d580dd301ee1ea1976d3d3460f470e66840334b0f15082
Date: Thu, 25 Sep 2025 03:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758772193
