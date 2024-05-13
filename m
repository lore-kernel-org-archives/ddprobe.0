Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10C07155335
	for <ddprobe@lists.linux.dev>; Mon, 13 May 2024 16:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715616743; cv=none; b=mWaB4PLsFnaa5VZX00A/gP+N4xl3vB7A5tlbZyveiAflz/tnBO8hGsOClVdS0Iob4InluPiAuhrlLX2J7qC1d+Xxhw8Za3aIHg8qSq+pJ3L/0A9n+TJ/ySjbh6V1i4N1gogB3leLVv2qlpgALMYX3ZqSoFLJNZ6KA0ieUiuEY8g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715616743; c=relaxed/simple;
	bh=4w2aUbYMPehXyTRkJJM6CX3sTY+NU0FKqjeBYSMTTTA=;
	h=To:Subject:From:Message-Id:Date; b=tsSKHv660lM9R1Rzj80rP3mTVITyrzvs/jCdBexZhQ6TCWu9IS3EQohaXQ+9Zzgpr+H7BlowIT70reZFEZn3OVygE36A5J54RMw9+pq+mx7fXf/+G0s7tQ8igOj91MO4LIP0iXlCg1uv+42JDb14cI1CEwigKdnWzUo9y5QpiIc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FoJJU6sk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FoJJU6sk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D915DC113CC
	for <ddprobe@lists.linux.dev>; Mon, 13 May 2024 16:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715616742;
	bh=4w2aUbYMPehXyTRkJJM6CX3sTY+NU0FKqjeBYSMTTTA=;
	h=To:Subject:From:Date:From;
	b=FoJJU6sk4xEy5P+uPqnXVzDnQflerD1ndpQ+n+YoUZYwUWktbJX+jnGlX2/Ycp/pE
	 uHEvmyRxirMypMDZWlM/0i01fcunkVPBk30RXipKRx0NRRy/AIJfBav5TEJXKeiDbd
	 +UxUxyox0fuR6KfA4sS41YlNw01FI17hTn+bvPodF8MehZ/O57Pk5liinBm7dFLh20
	 EUY8r1CdF46kcB7Zbf0AkAB9IIx/QrRIKWC4ipIDyNE5aJN8y1MQNxgq/OpNJB/AnZ
	 Td32AsloMt9LbAn86cLjlr2y/A01nOMRnbNShorFESHwiDdCtIS13jnsId8iWHVNig
	 Rvx3KjJAW7DiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8310C25B74
	for <ddprobe@lists.linux.dev>; Mon, 13 May 2024 16:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171561674280.25519.16781257039894491943.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8cb3ec260779051748ec5d316248444c07c8e6e3763bf1aa97a4ea38c695a43f
Date: Mon, 13 May 2024 16:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715616742
