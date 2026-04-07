Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40498126BF7
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 00:25:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775521534; cv=none; b=G+U3ldpi8uEm7LREak72Jfifk/LWqrsFUnbHz/akisY8jjp7gBomTL+B0U5g48++1v6t9ewycUT7ot3f/xoE4zEO1LRSfg2D4ZXAVqbZdRop0ePEJ+EyVzTWb3IsVviCWVaaKR4VDwI7x4Zz+5UdI2VPLe6wwV1Ud/oJAAJSBHs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775521534; c=relaxed/simple;
	bh=s19/hsO56tKcKQStKFl20V0z2IL3jTvj6bUskoFwG24=;
	h=To:Subject:From:Message-Id:Date; b=mwtKHMwBvt5n7mMsXgef6EpHfctM7xYK1Bfl0kBqH7Rhb/OzKullfFcd1ULcWe5IdF+1dt6P+0HLgEmyU1SJwvIJVMZKqJklw3QgoJLcneAQVA+rO8Hqr5sGR9qoRtxPp1tw5NPZCGtplolufDRnoljrM/smEUoLFqCFkYsOy6c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uxIUz/rz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uxIUz/rz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C43C5C4CEF7
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 00:25:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775521533;
	bh=s19/hsO56tKcKQStKFl20V0z2IL3jTvj6bUskoFwG24=;
	h=To:Subject:From:Date:From;
	b=uxIUz/rzfKwZD9Xi8N1m7WOrofBq/MYz0a7L0S5CRpU9BaqombPGCeJRaul4phx8i
	 OlP9L7fBLGtVpiShH4GigDfVJfxOUAPkFL+sHzvvtz8gh2dTCyfFuM5KDi87jgNddl
	 m03lDXcppsPiK0dV2EvN603ot4B9XB2OfY2zAA2gcesaGP7hiAXCfh9gZovRQNq8qW
	 zCDFw7niyS36/qp/Phop6PSGo23J+is2VtMRa2AKyZDW/8hmUnb97tW/0Vy/wiH6k6
	 EpkzrCJRB6zrzyvAZFXSkThZPY9j68ooXDmRthq/nSLwjOWPmF6Op2r9pGDGgk8cxu
	 TuFuLz8rxBgQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B12D9FB5173
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 00:25:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177552153369.27042.5742494649307317070.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 57dc701e02018f3e323522c32efdf6dc126ad47ade0d995a415aa3315e50f985
Date: Tue, 07 Apr 2026 00:25:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775521533
