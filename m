Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26F268BEC
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 16:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752337794; cv=none; b=fneTg1EEvInuQ7bNAm/m9u7TfSymbLVKszKNfbdSJX/mxSRAV//dUZIxH5/UDU6tJoMHtFaQI8eOw4ZRMNtlYQsTyPnCeIukWT4vo6VDNvhlmhiZAZrPqslmwyiy7uJ7TehZAp7gbrBowqNKtVRnLu78t96hU8o1sjnp9neqYvc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752337794; c=relaxed/simple;
	bh=cHU2oZVntBTeFWsUI5+aeXoUqHjITBvzbvV+DBxilj0=;
	h=To:Subject:From:Message-Id:Date; b=OTbB6EX0884wq6bMXRYHTPFJy8DSv9ScAKAXlt+508Z2KRgbwUybKq1dgv96OUiMJdinyovfli9nOoS2iVA1d4oDbmHoRfPNuO0EyjCaBqIfKGlX35zI7OyvriK4OFx5/PT2RGYAmHz8OyVUqqFiv3NT0pF25AD9kbVIMPdM6w4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WORF7AEi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WORF7AEi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7FDCC4CEEF
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 16:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752337793;
	bh=cHU2oZVntBTeFWsUI5+aeXoUqHjITBvzbvV+DBxilj0=;
	h=To:Subject:From:Date:From;
	b=WORF7AEifAkeevPOYo6ga3I9KEzM92lc+ZNoUlu4owDzmbIBMFeImxHvH4Ab32OiZ
	 HNdeYt3VS3Gr5t8Wf7nVtRcTrwk2zcqha1v344/i3Ls6X12J4LCCIIQqaPTTbQFdrJ
	 9dvsOKzOJ3ImajVeRvb8eQen5c5KWHJqry9CSaPUVv0n+RpIhl/lt/WGQlmXEnHNcU
	 bDXEgtf+OGsXQ0WZVupXCmYVB/fDKTaPRbfNHOf4+h3WoY+TnbsPzbhBBJed1N7Eyi
	 1rGiMZeITdgxGaDLK6W8jFaJHzpW8Mi1T3BznPZ+Ue4c0fp3LxrXAId+szocUw5MYK
	 yVs4IiMz/v5dQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95B6DC83F1D
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 16:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175233779358.12442.7932885757253594863.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8356f7a312f17fe38064432bc1c8c2c7b4fb839bd3f4d231026869c6d8ed04c9
Date: Sat, 12 Jul 2025 16:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752337793
