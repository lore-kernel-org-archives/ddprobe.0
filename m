Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37A043451BA
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 05:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777613254; cv=none; b=mBaX6P1AC0aj8/nTakiGLL7Uptb0PqPIpajQ+3ChWCL/OEC/xd7aCCdvUOJHEbYet+/EoYGbMV/Znsyt97AhkwZBjfR6rbq9MVuf2GL7VPC+GfnStUWN2TioAVkbU3iion2wWrmXzFPhNlWOAbo+8IGCnAqYsFigcWM0D750JQ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777613254; c=relaxed/simple;
	bh=HOLwZze1DPCP5TP5tO8O8h60XLrfg9xSfn6KdEtZIKw=;
	h=To:Subject:From:Message-Id:Date; b=dk5y8H6Uk+goK5wElo6aQBn8DCtdtzfO4QdnqWN0bEn4Kwle+onGCKFltn9tXnfYh0Lg8AUJ0RGZW6FGKQWr1tmVC63o8vv9EItsmmhxTTVrxOR5Z5qI2bv8O6ASdIVq+OxP1KfkQU/rktylvjjJFyKdz/Qz5JiUnoY9u1roYCg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OrR3kutZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OrR3kutZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE01CC2BCB7
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 05:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777613253;
	bh=HOLwZze1DPCP5TP5tO8O8h60XLrfg9xSfn6KdEtZIKw=;
	h=To:Subject:From:Date:From;
	b=OrR3kutZmP09fMBoYZyBBA1hJ+VfAFl4aSiAJ1D3cj5WXkjf7Itr0Hw5lGhk38PuJ
	 XMC6Dmr6jzHHp8FULk3beYKJDXNmNljLk35t6V3bE+AS9avRSy5E7VjLRavMSBq3nA
	 L6UbHa0PiMjgK7hWVn+0GLmoSkkhvpZDqyKkSqA5NlWLQIny36jJw9++pqRbSfxljh
	 70As9vc/DA5UuWXSWIB1C5UGDCxjgQGUHPvU+U2xpygwXMKjKEzAsaJmqzkry7Keds
	 ajdaQiIUrTRsrK7BB9v+P/GJ+1xYE48RBlt9tAuYppvl6eM/Wz/3w2A4NQuqOcRGgC
	 3Sn7yjB8+0Zow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADDD3FF8864
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 05:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177761325369.24381.11562979154130155618.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d0561950e658ac2d083a0d64cdc76c70e588cc04be5c04144e00de362e4c50b
Date: Fri, 01 May 2026 05:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777613253
