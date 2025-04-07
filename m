Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 294FE2561B9
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 18:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744051794; cv=none; b=HhVCIUAEtVFkLpFO5QQZfDs6h0+lHUJYjAlgHLNNcPxfH6dbu59T/FYzUWPcexO7ym0JAFpUFjTy8ZliiNW6HskxOGnCiOkYSIOdtiaFW+znpgn+OiGLGTvxIgYpY2j1gjxXocNZnGIIaBGD3MkoSiUqM6yC/e40rBxABNDeZ5o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744051794; c=relaxed/simple;
	bh=KA/DZttgWgo+M4B+4bncT5NiBpM8n6fd10jkrHP8ntk=;
	h=To:Subject:From:Message-Id:Date; b=F+jRyELiaAiBXciSPK3nEX3DSC8Tba7rBS9atZegN6PxvXp4eO/n1BWykWTQDAzXUjho2PcYeUmKEVPsmMMlpNhOJYal/hKeg0P3awfD6sI/V3V+QsgV5M1Zgr8UWDraZ4caEkIEq7gPntqEVuNJL7rQoIk7BDRTb8X2MU/Q58Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=McVfScuP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="McVfScuP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABE1AC4CEDD
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 18:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744051793;
	bh=KA/DZttgWgo+M4B+4bncT5NiBpM8n6fd10jkrHP8ntk=;
	h=To:Subject:From:Date:From;
	b=McVfScuPag1p9djMn87tdZw3HlK/n1mtyHMa1wqlGISub15o9LGXzHsKl7Ulk8vXv
	 qOfhFfPo8GeML0By7cRbYyDpKbGTWTGA3vDgnLZ9FRw3Mnre7JWpvtXMdDyRAms+w2
	 hgugrDaxRTGidLq8pK+TpEoN4GLSj0DSahs56sF/XegqQmCEdWAu7pYNRC3xcB3faY
	 KwBCl4wuWllO16khLcfEkftuEu7Q/yNdd4dBCY5uM/SR25zRqysFEUuKSwZjskHWz/
	 446FXQNA1pGYInk+2hxwYldoYeHc6Y3iHcHnntsk1GVIB68ypUy9CM3RRn/b6JCGeF
	 2zKKWz4x38iBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9873BC36010
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 18:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174405179360.28486.18168415317461814068.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e45594e6c57f3d154fa2d2f19017f828fc5509ec9a993a0eba380ce0da43d17d
Date: Mon, 07 Apr 2025 18:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744051793
