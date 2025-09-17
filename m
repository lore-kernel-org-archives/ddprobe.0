Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28F562FFFA3
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 08:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758097794; cv=none; b=latkSqU+xPonMkRb/Ksi2Rln/2acIQdrLPHwWagv9B0XQKAgwjp09mRsYWAPydxNM+NrW4Co9TtBi2H52iPMUjYvwNLUZM8l5dylRF+qj9pE93eweSBS7wF+vai+I1QvFCuERf80C+6ryuDh4EOMw0AKCM2yFjO4b59K71aBskE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758097794; c=relaxed/simple;
	bh=idRpqx1s5JF/I2lUnAQtd33Xsg7LFehH4drdUd6Gw/U=;
	h=To:Subject:From:Message-Id:Date; b=NzfLTo/kLLWi2pI47VF42reiQkiEtIPJHG6q1MhbZFrnVJgUGyntmGeOLY1mPa2ytw+UT94l4ajawkTteaLUnvYp9c7dPfAvHGSUgTbts4DIIwkBY1I+zCFV6JI/DT6zNagux1dhBRVTAElSzf5h+RrBxNrEShkeLM5KWe5OZ/0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gDFPGyPx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gDFPGyPx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3A75C4CEF0
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 08:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758097793;
	bh=idRpqx1s5JF/I2lUnAQtd33Xsg7LFehH4drdUd6Gw/U=;
	h=To:Subject:From:Date:From;
	b=gDFPGyPxvj2d3U12zVnr8X70ikmMsOQI1HypTfl53zKzDB00AnlNOU9PsgZtaSb8o
	 mdtPRnxAzt59z37v3SG0GI3JFssOiqWPMLKDL5rvZreGTgYkhsaghkqQfwuikb8T08
	 +u8V1PowI2p1B4/4XolrMlIOuCHoxyIxNvKHMBt35WfyEu2k8NRg1AaLdPzandXRx6
	 1yLy45/kRYcIKbrZgu6aVb0OLOJmrQ1YOTnOuL0VePsxN0y9pRVZ2KD4BQuTSo3Qk6
	 03Jw9Y6njuI70964VjFL/eq2AKGJBzLlPH27fqrAoVsXuPj7HuAdsIjajC1egQ3O0e
	 6WQb0dxGMH0HQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90815CA0EE8
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 08:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175809779358.15045.3029538940921395819.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ca6ae69b82a073c013993f319e7ce199918821f4d82c2f865394c66e11c3ac6
Date: Wed, 17 Sep 2025 08:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758097793
