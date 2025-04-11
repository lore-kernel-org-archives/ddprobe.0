Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4071421ABD1
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 21:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744407594; cv=none; b=ui1J0bB/38imPRRtF1VOENtx0RO3OLLoWiZ19jIi+lI2YiqSyMQ++mrLimhixy2mLLhHhk0ZQsL5yaTmlxXMdCXhpXAcgE4IFd3rTyYR7gWUcMdp1zwenITxFZjHTtMx/bU2KuOmLBpTLU3ZzBq5fWJmNYWlsy/5FGo0JPRtMLo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744407594; c=relaxed/simple;
	bh=8sF7Bkuc9NcdrhyYyBHgK4OPfQfpRuCBtw26M3x3Nxc=;
	h=To:Subject:From:Message-Id:Date; b=tRqwwRnkMl8Rjq1FydsUx36th9U1mrw3axKrcwxo65waL5Ay1xlVkleszgAKvpWe7bpIs+qPBx/1kPYzjhvRNG6cmjHioizaxeugzXKziMj5NnGENNQ2PbJIJDbyVUhpPvY8wB1XTgYqvOcGO1iEgGUUPzvi83deQhSkabvAd58=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kEqXPTEk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kEqXPTEk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7A63C4CEE2
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 21:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744407593;
	bh=8sF7Bkuc9NcdrhyYyBHgK4OPfQfpRuCBtw26M3x3Nxc=;
	h=To:Subject:From:Date:From;
	b=kEqXPTEk6rVY9L8ypYQ3a8WAXh6WQcacST/S5WgUt/gG6iBa8qfbESWRXUqW+ZYuN
	 M38Bi1fRO0qe8HfyhstQWQaKQ2RYexhaDiQ44/zqtAOcmP/GzarRkRjMaFP+0yo0pc
	 Nt2Vw0GUoLTafAhYXnLUyGucV8wGPzKPS6wtOBvzEUb8Wx1zaYbWCgiVJa7yt2HBQf
	 EiFxmqcvxTO50BLxRiacFNhbMMbt4s2BUIJsxaOdyZOmuGvFdYOATWcW1fHhDnY16Z
	 Ry3Va02tmRh8UD6Oh70wL0n9Vrh5F6mDLn9/3MWwL1ZxUu/1duMOPeBX6FVKND2G+N
	 kx6+V1dm3gVng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90AE5C369A2
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 21:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174440759358.18355.12153539172134491699.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0885b499986a3a913baaf8329ce6b57aeb40eef9e53ba42ef772f234da9dfcd9
Date: Fri, 11 Apr 2025 21:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744407593
