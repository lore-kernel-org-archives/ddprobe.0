Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE4F97F
	for <ddprobe@lists.linux.dev>; Sun,  3 Mar 2024 03:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709435297; cv=none; b=hRfX409FM1vgOaPQZ7YJebR1TBt1+GYf8t0YKku0gDEItAygz5n24s59ZnEovpmwyt9LQ47trIxk8KtxpgU6sr5/ebyI0T7dFqqiAOUAOefrzwN3iZZd85+XHFqJvqi9KOsiOPzOuzX03ECT1K5WI3AjzqscItlKiHGAC+BiKaE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709435297; c=relaxed/simple;
	bh=zLmEP3LZk4xCH9sZVScKDTiO7dKIn+MaA8Z3XOnOU0U=;
	h=To:Subject:From:Message-Id:Date; b=s+Wi9y9M77Ql0BjY1kXOHmLpn5PG/CyK4huvZCCE5E9UB1xSYjkHpccuwSRkUlST/RicHrX2o0Wlt8+w3w/nJ2Ft1CZvkzixj9hXz8L3mG1CdcGJslq/niXoyVWGKsK8ivg+G+AzhzBh5azsyLB2fJKvYpnCfoOslVyfemAnzB4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RaurB/pk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RaurB/pk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D73BC433C7
	for <ddprobe@lists.linux.dev>; Sun,  3 Mar 2024 03:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709435296;
	bh=zLmEP3LZk4xCH9sZVScKDTiO7dKIn+MaA8Z3XOnOU0U=;
	h=To:Subject:From:Date:From;
	b=RaurB/pkc7a1O4jp6nylt/+biqDxLxnxzlJ2/GAaa6K120RrQ386wCrFSvUMWCE6s
	 v0HAt4OZ0gTSwyWRtsApRIYqbh1k2bJ6Q7W/HyJgSn4uv4LRQm/yH+IIDELCWiOz+3
	 3iKT9eUoDJp34i85E9aBJHoc/Ro4hDzmE4u4WRl1d+IYsg0YC0hYro48fxV8wnH2RG
	 xujt/pMllev6cbSDw5i7JpB02xUpMgIC/jbh2gCGVcoZ+5iVmLYQEL6w+XiA0A6OUG
	 8mWmFcNEP3lEEMfEVR7WHHIWIvTsWZEJ/R3lfERsZNwZMgSr4rr8u/02P9XG0zM2op
	 xGZgTivJwakXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62F78C54798
	for <ddprobe@lists.linux.dev>; Sun,  3 Mar 2024 03:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170943529638.28833.15202234630287454924.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b86712622ea8b68ee3eac07f7741533d0d86fe84fda56181dc8115b7e0860a1b
Date: Sun, 03 Mar 2024 03:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1709435296
