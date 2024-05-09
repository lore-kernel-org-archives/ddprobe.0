Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6262B1292CF
	for <ddprobe@lists.linux.dev>; Thu,  9 May 2024 22:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715292143; cv=none; b=Ml6FwUxfb5qCnLujjIIQO5QcIIadi0ZDODyeDxKdVH4aHb2GxjxIdF2gV10EUSRtAupjHbQXDS/07JyDBte4HnGQ5VAp78/PRJE0e2BhFw/bsC4qkD3JgOn6CULG6517iAGTrVQQEm0Wg1x0+n1BOJ8H30DlSJGNYlxRHAtzNQM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715292143; c=relaxed/simple;
	bh=D3faychyxI0hggU+8FpESOD/QuTmPro2NSWoCgHakLM=;
	h=To:Subject:From:Message-Id:Date; b=t1kpB5DnV6Zi84RTV4DeGtNMbwfLKoB0NCkvvNvaegywxc2ASEZrtc8cMVcIrWuClRnsnPkPogcHtW9+/k7ZVI/cx88jWxgTbJkYsEPMPw5+AVggu5JOIhzJEn9ySLd7cD8EP6Cb5g9GMnpmZokfMXWpxBQLvitArrGeptDuoFY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kSsIhL7K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kSsIhL7K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DEAB7C116B1
	for <ddprobe@lists.linux.dev>; Thu,  9 May 2024 22:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715292142;
	bh=D3faychyxI0hggU+8FpESOD/QuTmPro2NSWoCgHakLM=;
	h=To:Subject:From:Date:From;
	b=kSsIhL7Kc9t8oOCYExn4So8pOLTV0tr38AYCezqYldIJwDOEJ/6gfxh7twcBm/boc
	 fTX5AIoVvTm+bLvnDj3bWdtrpn8YPgbwylnqUfyfDsWb5RUEWCcaYtSVZJhEoMnkRC
	 I/uotm/WNebsJXVb+groABKCKJ1yj2Uv/RJopcGMnPfuEb5T0mBwirTGl9AJn99iie
	 QRsb2xmI+/hwrGcBoUPm6uBxqiOxxob3TMX39xUot0TeKJmfYt34VTn6NV1cwUZaNb
	 VZ5hxfF1GyuNTU7xo687CMd1AAF2Wowj8+gExGe3duMncQ/ydN/N0iZgBS3mQkPIeT
	 bM1oiHVEdD+3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C90CAC25B75
	for <ddprobe@lists.linux.dev>; Thu,  9 May 2024 22:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171529214278.32000.1034785581081706035.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72e0ee70af37bf85cd77d6754d36373a5368673ff82b408923b967c7d55268a0
Date: Thu, 09 May 2024 22:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715292142
