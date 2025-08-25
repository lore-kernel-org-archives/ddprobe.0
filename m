Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23236230BDF
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 21:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756157394; cv=none; b=kQ7jl1Zt+TU3y6hoeLsRY79Yg9RR5T0+2wkWIMBrMfvhdpgIBXgQcnmpvh+s8xnIuUwYFN9l6V8AH3B2MH6+idlpJsZ19/Mh1mwcV/hU11wGhwkN4reInIZGhj6JNwqyRmNS9Wk6U3L76uu8anopIXC1rgr9bAGozR3ETpRI4CI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756157394; c=relaxed/simple;
	bh=9RqhcBdCqL2UcoCDr0o7p/uPjymGP6itD+J2fHKHO7A=;
	h=To:Subject:From:Message-Id:Date; b=exLeKWjoxE4PASDM4IOgwzBYxsyoxkGCem8zFvEs8QGwm3jODQ7A/Fhy4mseMFLOW/QmcpVYAfSSiNGxfNBilXyQn38tTLm9lLVJY8bdQ9US7bn87NXN0SDxJeN+KiYe8P/b80ClFbP6wtb2R6KZYZgGDs8WWNXaS91Xb8HFBOM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jnAi0sv4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jnAi0sv4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A01A7C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 21:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756157393;
	bh=9RqhcBdCqL2UcoCDr0o7p/uPjymGP6itD+J2fHKHO7A=;
	h=To:Subject:From:Date:From;
	b=jnAi0sv4ueTq4bfoi+ASCJi+5m+6SF+le2FlOtkPOmC+EBIciLz9E714RsoacHQmO
	 pwz/Yo85vFsNWz/SLbiBhGqN9FmiWYnG3iQ1HDOFjx2HFxZL44Vub7UF8tG3mXOMaU
	 +qKVNDTzd8HS3/BdO7N5WHdwdHNFeyllizyJaMmm4yhuEQNYPeUhWUwCsG4maimPMY
	 nvSyTzx+YACM6fKi9es2IDuidXd2F3taR6T64sHFd+SSIDfI1cjBFpJo/vHsnjvINK
	 otPpTnVo/kCiZGGn48YR1rF6ELbEbbGNieY2K7reLAKtDFVNsQjjUZxnpQ8ig/3/xz
	 DXA2s1F04CgNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90199CA0FE7
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 21:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175615739358.17297.3756798992081109747.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a719d0f8bc68b2dd9bbdc4ab036f731f938fe12d188a161ec81cf1f91adbcc44
Date: Mon, 25 Aug 2025 21:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756157393
