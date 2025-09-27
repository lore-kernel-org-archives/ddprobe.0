Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A82C17BEBF
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 00:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758934794; cv=none; b=kpIOeFJuRXRfwC5y6vQeGO2NoxdVlEdQaQ2doNqa6GRzCjvsQauMcG6NznSqmABJC3FPinySwitHO6tnNW0+tcMHF/Pnw/TiavwsEEu5DO7xnGzt6rhFEorxAh1A7VYKHo4/9Ke1tTiGGTbPt5y/ZZjL6+V2KTs1rG2jx9ekQgU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758934794; c=relaxed/simple;
	bh=YyXxxl/8ZslpRyAPmTtZCTF0G+rs7wlRbiUZVPBKx2I=;
	h=To:Subject:From:Message-Id:Date; b=qo4XIqMUjGlly0UzcZiboIgLe6p6Rc5RUnNrqZK8+EHKzwrXw7gIpYibW8e6VM3Lya4B5fxyBvECvXypL4FzLHK0GUJWpEZuDNnx3XO/loUZMlAbbcgi09dCNdvqi6WWZL+sFhQgTYRmeXfmyCuaOQFUDNYMfy1rs9Q9gokM23w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cfzNnkUV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cfzNnkUV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9AFDC4CEF4
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 00:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758934793;
	bh=YyXxxl/8ZslpRyAPmTtZCTF0G+rs7wlRbiUZVPBKx2I=;
	h=To:Subject:From:Date:From;
	b=cfzNnkUVKyAp62f3Kwqc6I2ZdjKX4CmUmzPORYVGZu5ik4n+SiGFs5PEnLtifAGqS
	 H15sdFNF7fB9rO6mG6aZmuMotkTImNlWUx1XHswS3K8tr1RPD6/Y1vrbbC9FZHmrMa
	 pvQRj278pv+nYpc0O3sEtY9xsD23NPyuJoEZdtjFwgjkP9aeJn6u/jomIhaZ3WiOK1
	 LPqyTTw/G6n04JBycETrE0Bhmm5BouPbHk4NHEQV8sxgHqJyZoYZb6dGTRABELtIY+
	 +aHmeT3Yo7ai+tlEW4obX91zmSBVX4pTJvTzalF/no3YMVq8Pgj/GwyEEv40bWauro
	 3r6WNgcFweATg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97BCECAC5BB
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 00:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175893479357.29339.4308778067555551403.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8fd0a34ddd23fff29537096b73cd6eb68b77d8a6c6cd4f772770c3ebdbff64fb
Date: Sat, 27 Sep 2025 00:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758934793
