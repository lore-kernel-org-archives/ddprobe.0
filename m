Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D93B3BF684
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 14:52:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779807154; cv=none; b=FvqMndmOlXqqMpmy1EAQa5enTNFefAGwQFV5TI/DkhUGlYN4l/P7wosLk0OuaKpdUV/30LWEl6sY2ZTdmTQS6aGUTXaRLhDnnPYqOezL/79J65Gq5F0yDu+xKUZXGhb6WTgAofSe+Eq0IgCs58/U629g5lv2Z/udFnXF6T4ci0M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779807154; c=relaxed/simple;
	bh=b8PyV2BTwTjIL2COgU6L+ZFACANIQ/GFaFz9HYXWC+M=;
	h=To:Subject:From:Message-Id:Date; b=m2BgQkdZ+7KH8YW0Rk/uYRtAuBkjoSkvQav+yT9MWSaDwDkPNT1EaUEAoztp/CBU3Zt+Yl/NMdeFmDjcU79GQkjFxreOaWdNP/a0CKAALrcF9oRZr5hVjKwlSKjVJynAkdFXi/m+KkIqii8aIr+y9NAt57yGSA339u89orG231A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GRSFHQHV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GRSFHQHV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF70BC2BCB3
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 14:52:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779807153;
	bh=b8PyV2BTwTjIL2COgU6L+ZFACANIQ/GFaFz9HYXWC+M=;
	h=To:Subject:From:Date:From;
	b=GRSFHQHV4QLpfzZB3A8nwy98oNOCdlF77Yspqtf3TgjkwnOpUuIjYzujALEigFarZ
	 ZziQu6bJ9dWaHfz7vCaRPDxjaqVeSi31XJz7W+D75gJwkWEXq7UzW7rZ2id25etx/l
	 t3P0U1P30yE6KTUt5HGBgC/JESxlRWadX7yB1+uvd/roKeuKIG3CMz1twRRCcxIY2z
	 Hw5U2PdVsu9oGgD/EXM415Tf2LdiTveLFqsjBqXpSASBB4esajvz5rp1flWan6zkh/
	 QRsxRLVuIgDq+Ktq4c2+VMEpcnR8CU/VFRUsjC5enq2kAfqT76b1xWyNj2oLzdzNCj
	 0Lto/BfpDMRIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA802CD5BB1
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 14:52:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177980715375.9290.14751198523353196817.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 41d0f4c9a9b6d386c17effc04b9a9a2d8e71c1fef0096fac7dfa63dd53a25641
Date: Tue, 26 May 2026 14:52:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779807153
