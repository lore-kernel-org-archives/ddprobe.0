Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FF651A9FA0
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 05:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771306494; cv=none; b=XTaLburUw6Iwso9HHzeMAd+5onLYITrqAuBvxLNgn/cucRyKusKi6cu/abAJRl10z1r/z07CsXHlNnbyTIsdaNeZB4LNeQPKECMicbKF6NtHocCrkAwY71G7f5NkhMSd2SpabjU/3cQYHdbUcrW3kbcjJ5Qrcfn4rrFKQsFywgM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771306494; c=relaxed/simple;
	bh=9GY0dUY9qGWcCZIOsbTRdXwH1Gkx50yFiljKGAEsDb8=;
	h=To:Subject:From:Message-Id:Date; b=BmAniigeaeUlmNYzM8al/pVUFy467y0uAtihAdOkl3483qiQVOMBBaeKV4u7QIJ1cPv/6iwfc3HORbzLdHujLQPaEyKnWg6thwArSEBS6ByH7WXzM14iQDGfMGvHbA3MQ1zzjuT0ruY2G9COBOq6ZhB3YNnaaPUjV5/R/wvzQbU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nTyMpTIi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nTyMpTIi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB014C4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 05:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771306493;
	bh=9GY0dUY9qGWcCZIOsbTRdXwH1Gkx50yFiljKGAEsDb8=;
	h=To:Subject:From:Date:From;
	b=nTyMpTIizRICaj+OQL4pMU1hjpiIYd2wjzFtT9v9kIl/PWrlTapzt0u0PFSzSt7aT
	 xYNhe19s9yxxXxEgrsFqKWO8UTGezIWTyzA18EmPSoyvWWpG5HtCPw01iE3q8JU4LB
	 XX7nQ2Xfj9JNs4wFXlv4NdJR2beYsz4GP7edjxNvc4hTXPOFghgJqsWzbueDhmsEWe
	 vS8Lp1vavfoOlDfD7aZbABl+eR9ZKaLUZ03bwinNh7mpCHGyhlcoG+JwQClT2WpQew
	 9dKDz/QtBy0cUBvArx7WS7J1SORyivsys4X5Y9VJa3Gh19ptgUDVyi0iuUYJGPJuz1
	 ycLBEIdWN7ayg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95799E8384C
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 05:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177130649358.28746.8753996754532205765.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd671ee1a8c2e3ffffbd4dafdf35d6ae44857a1ecfb26ea8e4b7076f18a964ce
Date: Tue, 17 Feb 2026 05:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771306493
