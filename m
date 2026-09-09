Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36F673CDBB7
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 20:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788986435; cv=none; b=SxUY0BXSbn/Xc25TRDlk6XmAiEUrkXOfOBHgQYaFH4HX1u+J0UYuPykPZGXFFBq8n8qRo59QgLjh43UKiaeyZqvKWyomsLK3DlDclp8LmDUdUkSSoI/Z1sae77phpHXerr9+xvFImH86IF4vNVcIdxwE4IoRHNa1i48IMOSqtNg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788986435; c=relaxed/simple;
	bh=vxV6Wo/V/pFFjBYxzD+0Y5NRblYY6qhJKbXjKUcgG+w=;
	h=To:Subject:From:Message-Id:Date; b=hGq8anIr6PgBLMCzFMGlI47WV7N1b8auV853DeJ/hDXLhSRNiuGYF9fJ0Wi6Za0R08wIqNZ9+g30ty1Ekpu2vKv451CZIL9Oh1hKKDlMWlNE93Vl42fIzRZaDpByxEvVH2mCvbdDlrhqpJ082f5s68/Pofueki2uO7+sFt0m7QE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HFn74iHv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HFn74iHv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8530C2BCB9
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 20:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788986433;
	bh=vxV6Wo/V/pFFjBYxzD+0Y5NRblYY6qhJKbXjKUcgG+w=;
	h=To:Subject:From:Date:From;
	b=HFn74iHva0HecIiVDbEl6iFR5n7x82dGC90dEO8ZpnFTADdf0SgepmWY0A6MbEtzW
	 K6kjoxYCLAwt8WXJgkekbdbr9/5+Siyqv05O1IJpE+eUq6Rip2dVoQuEv45sDiDKOR
	 iy0b7lLzP/kRcsxO0k2L5P/56D6UicKoQdbtDUP+P6wGpogsmoEUFdel9fn9mqWo19
	 M5eXyFEJDNErrtThu4xRIvL89AZ53uG0qlUkp8KxjGkdzPNRnbkHZItG1wgTtwp/Sv
	 oK/CqTCRY41lxALyc4ynY4jsj6nDisErHMupskZgR1Eu1Iqahn7n+okAnmls6OUY+p
	 uWAoMW6Bu1ugw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFF67C79FB6
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 20:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178898643371.24414.3811506485211101649.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf56b808d6894e59cc28f1d4339f980158780a967cd467a168dd64a9b21f7e52
Date: Wed, 09 Sep 2026 20:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788986433
