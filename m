Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62C4839CCF3
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 18:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788979234; cv=none; b=ZJr+VU4kOBIw+IsqsKpncZcvKBt2NRMXVhkdXQrdXcsII6761BgolyCPot6KQOgFZPC7HfQJ3UjC14v1MODDbw1OwZuqWVc5HBiq3SrynnMjhJQdg5NhptA2UMS3rcGVpWXxGA//hTSXglg1UDw5nnX8WdnbnCbx0/WKvx0iNjs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788979234; c=relaxed/simple;
	bh=i7bXrZ9sID81+NBrcFCbO5yQkIIYXeKvUKgm3ikZUkc=;
	h=To:Subject:From:Message-Id:Date; b=Ewbr7dGiHKojIh9e0ieCG4ZHkrLePvKwEq06Jl42/FMH93ObZVrUKWslNIpWbyw6yPDhJ59l7kCpywEmUOTi5gmSHYHb3ZK+TNF+pI9snEnZmgIqyK7LdB1TS1DTdrGcE6bKjA4G6b0e0iQf5+3i4pvtm1n9TTlayLlIaz24f8U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g2iJzvLO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g2iJzvLO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF86AC2BCB9
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 18:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788979233;
	bh=i7bXrZ9sID81+NBrcFCbO5yQkIIYXeKvUKgm3ikZUkc=;
	h=To:Subject:From:Date:From;
	b=g2iJzvLO+X68IcrIYxBunB1+z+CUEjYOnvUk6jAzTlwjqv0EMrYUfImSfNzX+YHI0
	 C+Kr+Rc1BjvnezeJkCMXMMppDRZyBPHSWoGdPmbYE1TnA6fG16G1tjqomJS1Mytlv/
	 WCOLXfkr8Icq6ScEwwOEqLvypqETahXfTOBehHCAsYM9wQ6i/9hLz9NsX2ts0YxI0a
	 ChY02Jl2VwR8kLiChirWSWjqvpkDCYJOxEcwWC7rtpgeZIX9nyGhT6G+Ei86ZUQlcO
	 c3l/Eiwgi/LZrJj68gGZJ6voTfOcLmY0grdBfuGTh7HAO5RY+v41q34e8gGqAQj3Ux
	 vu+YCGQs2PsFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8176C79FB6
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 18:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178897923373.24868.5772028116308227395.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d52a532852da5f5a37614eb357c320f4edd9be0e0a2423017c857a46dff1a7b9
Date: Wed, 09 Sep 2026 18:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788979233
