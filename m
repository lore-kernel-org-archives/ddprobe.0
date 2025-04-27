Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 408787E9
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 05:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745731194; cv=none; b=KjvQw+EIMXHh2K8zU8hO9mTusyFXaIN+G3XvzqEpfZcEc98sHYw3fCq9/bWJTsAPx+li71EGLxV4DOPoJzF6V305bdkMx0wI0s3i8jbYD/CqQLta/SDs98Jl2nevtEOZjToCt2W1VLNegvhGq9L3bHXUPawBGQLF39rhNr56Mqs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745731194; c=relaxed/simple;
	bh=YbDA9huODfeGmspIROhcPB3AeTP0H4z1PvqdHj+y4cg=;
	h=To:Subject:From:Message-Id:Date; b=bbDfx8k7x8B6eYR7GhTf7XZnJdpbybZa6uWixgmdavJfGLimsubEAt/LNpxMVdP2/pP0Z1TE1xYV4yzDzaocmcSOnmKsQYISR7O8MAbkSU7kB49mjtfiwV3DzRfPue0Uusp8P2ryC3zBQ8AT9Rn/PnpWXMTw2MzQ/EKW6ZId+uQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Rjw+lle5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Rjw+lle5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9D45C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 05:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745731193;
	bh=YbDA9huODfeGmspIROhcPB3AeTP0H4z1PvqdHj+y4cg=;
	h=To:Subject:From:Date:From;
	b=Rjw+lle5/1w88+p9Ra6kjZxLkXuiqCIBwTkiLU6WLG/I4Z9jjvZBWHlF0t5F25N+A
	 SiTiiKDT1yPVWWmfn1kBgR5t+ED8w7aou6Zz1K6Dn0f1w7hfWsLLO1k3su1cf/BE/f
	 D4dwIYZnopOIE7+49Dlvjybg/fVVqXn7XxlDRvLrwoR4y8Nt1sGfGMIUZbQINlpIdM
	 52roqe5G6k8Fxab2NxiNAahOlmhBK0vkJu9Vlxg6d7/ZwHgxk45S/X/54vfBwvZp1S
	 iSgjp5NSGvxl3iQEJ/bqy43BAGd/2tIMHTuBb1rC3amrT8hI789TzTptD79PzQNAzl
	 s/91dgIhod8wg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93BCCC369AB
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 05:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174573119358.5567.3648625307722499603.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cfa4ebb1826e8a36614196ff106f1f2da77126cdf4282c3c598de0e19fb974ba
Date: Sun, 27 Apr 2025 05:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745731193
