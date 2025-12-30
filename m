Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 054F9137923
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 16:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767113034; cv=none; b=UjuT2m88lVA+iRpE7scnUQd7d2vTJ1QHKtF7E9hA4ztOp0kShDn7rqIZHVdzEQwH3VlOQhNaH2QXcX3wqb+wk+Xx/4tCq+s/SfBbtZXURoJDyKZ6R6ex/2ZUjZQ9GqtuVhWmDHpppjF8s5bLpjoK1ger1Eielpixx93ukHiHDj4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767113034; c=relaxed/simple;
	bh=FG2HgkyBWoVH5hoiLjppbGUW1SpamcySlVSh/juU1Ls=;
	h=To:Subject:From:Message-Id:Date; b=SoPuKKdPY4ZX7IESh+r4MvmTiNcmx3M7amu6H1RSUhBS7f3p7VJuDrTWv9vySsn7A2/usi+V317KxtErtnJHIN9svfM8f4CNKKUg3EATEZEgob4RhMLsETW5zk8q82nP+1GFCnQNsqzk7y86sGjctH7EFXzGUoYoxr0luCfJZic=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rXHShd1h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rXHShd1h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CF6AC4CEFB
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 16:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767113033;
	bh=FG2HgkyBWoVH5hoiLjppbGUW1SpamcySlVSh/juU1Ls=;
	h=To:Subject:From:Date:From;
	b=rXHShd1hScosuKl4LNCsF75uzl6bW2F2+gXlqI3E5cSINjQkxMB7FNaUP12kZW/2U
	 SGMjinXkGgP+LMR+5hGVXzV8CoCXnxh7010r0pLw54epm1BYVvb+fVVJxpJK8RIu02
	 KoQYf+MT+6MXgiRESnK0qJ3c4bX2K3CScF8JE+HHl6e+xCFx7ssOKY7y74prs166bJ
	 FPwU0qXfevXFLz25tQgnKMXjIOKQxPYs14HGtj3wndeMQ3npJinl9KE8MFz7BW32xx
	 5CjTWuBYk8iZO/RxtTAYhcVQOCPlzMZ2q2WxQdpGgNDvp500ZD+KKoW14qk15+g2bN
	 Beyo5bkhwWEBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FCB8EE498B
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 16:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176711303358.7323.6591104111629677205.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ecf4bb00f31d3b97716bc134305ecd3066e6e69f413d19f5e6f7fb939c447ad5
Date: Tue, 30 Dec 2025 16:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767113033
