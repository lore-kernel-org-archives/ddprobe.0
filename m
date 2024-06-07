Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 74A9912B95
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 23:37:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717803443; cv=none; b=TImtozvdd0AQNNGlT6PYdyo5OkzLNMUeXRqx178I1PVkM4yzNWOjyCbHVocN0/C5uLxPp0Dgrz5pDbsS/X0TXNg8KFl8Px2kXKuaytW8yEcnCYTz+JsFtUUDpdzmFlE1884AURUKmZP0TMO2m/gP7Uu1QzxlKNbyyaj6Xwdzkcw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717803443; c=relaxed/simple;
	bh=Ysop6WRDKPVH9vlNFd2npK0yTAdCqpuda02ouvAovKQ=;
	h=To:Subject:From:Message-Id:Date; b=OJHMzxGCBMwckUiTkvm15eg0L5GB8M0zBVqda7uaioWWYO7vjRpo37JEa6DWnrXhg189+4FLhb3iTDSFKrum+vRvBo4KoEO99trZflFKtwjR42K2a50PesUQcE7ziQZOSeA/3iq8b8J0kKs8bnlXHFX5JL9PXlorYdHOT6wDZJE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Nn/lBfZZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Nn/lBfZZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EAD45C2BBFC
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 23:37:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717803443;
	bh=Ysop6WRDKPVH9vlNFd2npK0yTAdCqpuda02ouvAovKQ=;
	h=To:Subject:From:Date:From;
	b=Nn/lBfZZuzY61ijcmU9Nfxwkv0FQOQ/aPuJ0LOrXIO0gswHWn8EG19jqzgjEqjEqX
	 XrZG8+rjef7IeD5OTan6Bs6IIGhRVY0gJE3b4GSP1OKbhN9mHQ2yiJ2GzC+ODoMKMJ
	 fqgZ6LwIj7xo2BQVSq9xmFr1wQ1DsyjeJ67ZbLQl85Lp0suznLzIqOHjdZ77iDmP+2
	 iDYfDFjfknDX44h7VUu5A9++ttUIgXllQL4YCJWO9b8uMHaQK383HJXuN3vqU2Wz3F
	 v9ADCq09OW3md2AbL5/PRZjuEkActF8I3r1iIRQ3SigBir98IL4lI63TCbFw0ceEHx
	 J2NaiwZht8tEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D2A1BC27C53
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 23:37:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171780344280.31672.14887293504204680177.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 845934f716b337424c65bc3b4fa5348ac2f5523c19fa81b75e45d88c14d36d64
Date: Fri, 07 Jun 2024 23:37:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717803442
