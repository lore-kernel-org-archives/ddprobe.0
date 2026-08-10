Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E32463002DD
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 02:00:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786327236; cv=none; b=nG32ySML2thmDi5qYwvFWKzakVX0b2qm58NRqIAxLRp4IDTtL0TjjELqgfgFevPygoFBAxDvR6LjWKFaNS4sX0yO2HnBOV4wzFeP1ZSvpPtVqxOnAs3t2Yiv7aIroG1oXuP+aqJ5XQ5uu7Bl28u2hAO9jOHZtyTXCuLG9PSGBKg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786327236; c=relaxed/simple;
	bh=9eYLHvT/bbq93GUVFbLQb7rxUDIAk1q/CrTMkAyClgc=;
	h=To:Subject:From:Message-Id:Date; b=fS61eprTs9DmEShDjOm8s2SliZcyeXgv58inQBebUziOtFw1EY4+5LnshdyV2aXO06CZ9hli0msgC6D0QdBNUWNf5pqQLKi5eb3ODH3ROKaJ/eClrj+3cKPxOrLTfx9eBQNvB5pD+5zAXGEnb+vbs7gC+6m5eULRhAyPfSQFzHI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VrtIFk60; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VrtIFk60"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EBB34C2BCB9
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 02:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786327234;
	bh=9eYLHvT/bbq93GUVFbLQb7rxUDIAk1q/CrTMkAyClgc=;
	h=To:Subject:From:Date:From;
	b=VrtIFk60L2PsG+6kmcQwESU5UVnarwgNHeUvTPJSYzktNOnsL6D2Raa6oSKm6plUL
	 orPb99PeqKz/oqnoY8iUeP55onvIbkplPmLRyvXlnmEb08rY0yTYSplUjxopGsSM2K
	 OU547F1vxeJGPdZFHUv6orXCBvYZwsBKMRG9ZNEeHYkcmsnhW3VsysMRrgs1f57G0G
	 GzBd2yzKrVrMqS8iKrCL3PYbV13oxZBKNaPWq9MPWqEaPolyOxMvQME2oAd27Sxcc6
	 dChkrWjEbcZHH1TyD3sr/gXEFaFuPiZ94aXTtFKwJvB2PZfPIgZDUexBYJv0U1efWD
	 CABJHQf4wgHeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C198CC5AD5A
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 02:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178632723375.15958.3365074929204016837.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 58efbe5baab41ac121dfd48e63afa9cbb54fcd0f8a3af85d580709323abbfb46
Date: Mon, 10 Aug 2026 02:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786327233
