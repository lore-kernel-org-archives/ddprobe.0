Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E3C948F02B
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 11:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789990234; cv=none; b=kMcQBox8zwtzVlY2YUhEVhso8iQBtgINFlvCC2Qwv9GDJL4p0pVv+WLJSKDkpSdLuT8NZl9qTv76sxw+/6PuMsiEUxopJ1etf2Z8J9wtaRHVT14dgl50pUhSRJ2Yk6N01vqbej2XJ8Js5nuaQLcumfydmxXc9H3+V19LCnh11io=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789990234; c=relaxed/simple;
	bh=ZB6mzBOfftaa1uVimzkgXkVH3Ocmxw7EGoHbQFVfcHc=;
	h=To:Subject:From:Message-Id:Date; b=XjmRRBd3xiBbYOd6ZmEFMbGyE2TORQ7yqWtciejj5TOtFIek+sYYqqsG0CRW3kTDSZOGnrrMrFiAbRPpGeLPib3wotbtsA0CsaeSR7mrOCx8tgmrkdA2XrplxPXsBgtPpnKmEv+IsQWkTNPsgkr/GNMEFhqT9jax47hUTALrEkU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZWZ4Y5qc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZWZ4Y5qc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7A1BC2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 11:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789990233;
	bh=ZB6mzBOfftaa1uVimzkgXkVH3Ocmxw7EGoHbQFVfcHc=;
	h=To:Subject:From:Date:From;
	b=ZWZ4Y5qckZWIHZeDcXUL/SItiWsSOtiH8oUQ0MWwoH8dGWSzUJptyV+t2+AlLwyXY
	 XwkqoFbhXF7ZiibSymSoIZX/g5oCqnOb4/JiZ4FuyYXWnCqvnTysUW3iCe9rOfB0/K
	 Br7WGDdQ50ejfoWej2KgnBekZRvYzPj8Vlyup+xzIbhQbj/U9XqudC8jJ55XdgPv9M
	 Npv86CdmB6gLbFJvhWYSKyTbyb87ZIvsIanxRZCrva0X0a2sA+bLDM//wN8H19RVgg
	 SM1wwvuo8qsrFjP/u03fpK3+E1KNjko7uO8imI1tGuVerxRGSRhVVJBGuLO4N9d3sU
	 kwYVOgfr1jhug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFD54C982E1
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 11:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178999023371.24868.11985401542498201626.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f565e4fb75cb577c592fee5a29cbd32a025fe304d7179e92eeebc4ce175b4cf
Date: Mon, 21 Sep 2026 11:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789990233
