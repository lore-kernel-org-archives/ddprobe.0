Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2826F208D0
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 06:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759818594; cv=none; b=b+SsqLU2xS3H18PhruwqwzL7/eFCpT0oEtISLPlEKNf2wuKc514nEOd8gpKXRH1sFsyzgNF2ox5Y4VCbowMq4F50hJ1PR1bEH5T0LMk/062/RA6UtnbtHwwJh1gIRjYziFw8i9PDFlRWEABe0UuycfrxpFOYlejrjoURgdwPUOs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759818594; c=relaxed/simple;
	bh=UZMXVgw+BzwMYtAKaRHXQ/2T2GPDWuzmYlqbZMel1EM=;
	h=To:Subject:From:Message-Id:Date; b=k4SiZaAI8kLL3qzcDyB/72uuUk98lXWMqyneRT26MD4UAjlOpIZfGwb1o/oHC/jZIr/bC2V51K3VTHDzPt8IJmIGgedgDV+8LOu6p+2qFwbAF9ffJ7aEXVoPaBRrOoXn1UhN7EEPqvwLSVPs60GXUoQDHh1AHXyTA+Axz2pDnjU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dOQ+C5CH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dOQ+C5CH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EA9CC4CEF7
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 06:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759818593;
	bh=UZMXVgw+BzwMYtAKaRHXQ/2T2GPDWuzmYlqbZMel1EM=;
	h=To:Subject:From:Date:From;
	b=dOQ+C5CHcMxmMjLCnssNklPCdexcNUGeQIYNgsTYTovYpXVtnm7JziNmSAql029zx
	 BbORExTFcsRnriSiQ30s0Zq71gNO23h54j30o0ZRxHYuTY1l6/G+SCDGRnk/Vc4uhQ
	 GelzM+NF2vulrcRQRhnLPCoI94zTbQbZjY4Ixzu9GX3q3cUjyEh2jwN3TStYDnJIeF
	 401cjkuyHcI5pkOp9yyDbphG99iOzuvfsoGC270ccSIjHqJ/NXMAO5fbEs+JHsp1nG
	 fwMc8U0AWWQe2E2GL1hVRq6+CDkZ2kniSfbaJxR/K0S/ASLBsRwySFPX0THKadKcSE
	 0erqdkkeytnrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FAD1CCA470
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 06:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175981859358.24164.12954603172763527250.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 66e47b16edf792469f02c615d6ca67d08ba355351aaad3d76c7a3552d2c36041
Date: Tue, 07 Oct 2025 06:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759818593
