Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9B9A03DDDB6
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 17:05:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775149534; cv=none; b=qjtN/wfyccLkrXNprNPPonfZZoN4nuxtDOTVe8ryhtnWjez1Q46qToZVVMWYmEpbnQHyn8XIovScH7Qld1dVlT4vERBfSlApVAU0lYluwFRQeU2CnsrRAkCRlMza/NMxPvfys7PjsccgYZeD4eiLx75z2KFP3vgex+c8rs+KgWk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775149534; c=relaxed/simple;
	bh=Ts08zmUyMMrNC9wN6gDfeECoPLlXQGIIOapFg/p8x9k=;
	h=To:Subject:From:Message-Id:Date; b=MbH4qeQ1YiDx23hKGMnBdW/eFV7VEr2FoXdYAgn8hqQcQF2MPFnTn92scGc2ow8xRfhiqkRExSbxgBXzLoobqkOTwhg3ymCi/nighfvSg338wd7lhS60rO5QBYJpj0euMCe2us/tI0o0TTKZjKmM9/O2QUUX7gecKcVfY42P07o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BRw3Aao6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BRw3Aao6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2628C19423
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 17:05:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775149533;
	bh=Ts08zmUyMMrNC9wN6gDfeECoPLlXQGIIOapFg/p8x9k=;
	h=To:Subject:From:Date:From;
	b=BRw3Aao6eYt9JTom6XIQqciKoS0HnYoW1TcuuYSkt5mdWXDSLI73Ee1rpU8NqHc+O
	 HVSa8/AosV9euWg9MOq22t0F9r/iZgF+0Wquk03mXHd8Qp3Vx2HtGQJwgXi2+Wggut
	 MvX170T25pvcS9kcYUHe9BUtAqAhs1kf8NtYByHJWtmb/8jEcuDfF19F+fzlm8gw3G
	 i3RIerI089k21VHAm9fo9NtIXnRbLBOnOclNVGCgwPewPhoTjdUKO+FTkuHGhp5nTM
	 svh1TVsORUAemEmh0f9eDFjQcCtui8sNnc87MM/GolBuAGQ/AbLBz5kymEpRR/32CL
	 6PdBoia22I8nw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1AFAD6AAF5
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 17:05:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177514953369.12628.16568225908587300703.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: baf9ad031334d2c9ded07c72301b3be2df4ebf022b7fc01e7c82f8d82993ceb6
Date: Thu, 02 Apr 2026 17:05:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775149533
