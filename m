Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 369ED4CE69E
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 17:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791567634; cv=none; b=cNYU/DzyXIBAY/8QfA6MLH1u+G0ctop/NrD7EaL0ISzoojTUlH3F7VcxJKcjQZrAzt8x2aXJdDADheBRQICMVp7jnTbrt/A3TPMeB5R8KAJajkeiGRcFOyVVtwe52jhJWBHe+chdDnekUgiwMl9CoiYlurhyyme3vWJUSRPtT4U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791567634; c=relaxed/simple;
	bh=Y7MscHhiNJLojPP74DbhODPL7lxvnt2kRcOUu8DMXzw=;
	h=To:Subject:From:Message-Id:Date; b=WAxq4/KlojJRyHznHXaVLXys9s1qE2uHulENLTejql8vT60eHScPHUNejjH6JufunRtZScvXEGd1fy2Ed5naL4+m9D1yjHchf2dgQwvjrb35dMnv1EuWqZPZpxI24vEBYLYN5NzTE0y5BoA7NcQ/GrMmGnZJnM1JHjDluB6gw+g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qlo8IDQc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qlo8IDQc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF4CDC2BCF7
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 17:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791567633;
	bh=Y7MscHhiNJLojPP74DbhODPL7lxvnt2kRcOUu8DMXzw=;
	h=To:Subject:From:Date:From;
	b=Qlo8IDQcrQWSSHN8N0k1PpHd6ViFsd8shJq8I31jK5ZZFI2EEI/e3M1ZexNfNCqiq
	 NqQXCI2ym4WO1x0LkADjZqZdLX2mswxrSyvUCzb3dQVNuFNaU/51UGm8SV6zrotxj7
	 h8IrUb8On26naXnEHVWHakZC6CU4sy0+wwqgAIxwCbAgkSQmNht1cT9NIFQ0qG54yv
	 6hoUkgQVuXKY6jmSW4RX/P70LUWRSI+XpluMpNnTf3nceOiyxtGFUoUV8rgMJPI+P6
	 3TmMXnt9RMgZn9FgWApLDy6gRgzTltfaTOaG4/EAuSkwPoXjufJn8yRCYNEfnEplri
	 X+gBWMCK3kJOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC4C0CA9EBE
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 17:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179156763369.9040.5947887905648540662.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e6d903c2f72938ef0a8350586850c0fc3172518db25d7da5de3291c46c961e0
Date: Fri, 09 Oct 2026 17:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791567633
