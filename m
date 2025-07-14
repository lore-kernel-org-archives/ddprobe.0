Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1FBB1E5B63
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 08:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752483594; cv=none; b=bNp/4XiOlgw00RZf9Go3HwOudKsC6ulCPu1o0MQT4v34s133BFfWkSy/Q0vft81ey3KB7Qg0pOqcWB2E+MRE823aVjYBRsdnAk36WZZBByIp//mXxmeSMGKbwUdpR0kCJ9tUvNLxMYWMHw3Dxjx1lJBGYCPZ/WEsVl7iSgOxvQ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752483594; c=relaxed/simple;
	bh=UjzcurE3ihVZL5trdHakIn6YPGfAec7mzACuaZz9O58=;
	h=To:Subject:From:Message-Id:Date; b=Fzr5mEyAVoGaA+ty6CceVSmqKTN+XR+fYI4Y18lZMzkcqEj7Gn0+l+O50/snE4dKPZosTCckz5mCfzewX/DPgA6Q6rkn8koKrWRF/oy9XkaTFrXhavipIvuJmP3QQZ1uYNm3XjaBl2UAjgGd7uA4z8O5Yl3oiCVmO4tHo64Xg6M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BGUTk8GN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BGUTk8GN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C6EAC4CEED
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 08:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752483593;
	bh=UjzcurE3ihVZL5trdHakIn6YPGfAec7mzACuaZz9O58=;
	h=To:Subject:From:Date:From;
	b=BGUTk8GNpV0pZitPcYjmfJA/8NUcyTwNjQR0lrjfaAYFKwKM9M1ZuBqeSBR6d7+av
	 mJExY6qGnm9N5fjpcEmD3esKS1uKQRNtJwMU7gOK9JJGS6RaXP18au/cPiT3dcfC7X
	 U+rGKQ/dXgqZLUzZeS49MT/ZnCHHYDwEsxKlBqeCdm/Vkl8zRWMmNGhJ3En/0wiL1a
	 55YRpv7v6ZSpPvHt2gGRBZf6wH+4HD5AyN6whGosvc5ZKnQ9LPniqaYafO1s1ETlqS
	 grw46Sw1WrUnKHtXUPsRqlmGhm6UA3RMmxai2YMFQ5X3Ch9OLVTO08vs9P2Tev1RtY
	 wSiT1lLk+ApgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E3BEC83F1A
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 08:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175248359357.25745.3062712608163141760.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f95e0e81d8617eaac3f79f6fd6bd36c33e6e2902d8b45c3fe8dfef831aa37e8a
Date: Mon, 14 Jul 2025 08:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752483593
