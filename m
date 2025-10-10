Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 236181FA178
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 11:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760095794; cv=none; b=fLpLTw63PjD9lHXt/qQObH3UGFM2dHDzum/LRvTVeN8YI1ZWVQsPD1cl62rw63OTu4+a/BQW8INBD0ZM6wQGAGktzVCMm+fFnQ5lb2/TZ/u6cPaoOLmnoe/DsBYlj09fCWcGUvJEp5ZPgsXalKLaHWtgTkQVU9RQQ280a64HvDc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760095794; c=relaxed/simple;
	bh=SMoaUGuwyjuhnAB682xUFtJsn0KgwNMw7NwM/deRhas=;
	h=To:Subject:From:Message-Id:Date; b=prOrlE/QXqzXluVxqJ/NcCs4rEh/iOjClQpGWis1Hj/fH2QO/0mFK0VG8bjBjO4kcxSDyMu6T3tC9TGEi//GHtkuc3Q3eRMtRWVyqw2R/UBeLPcb2B6vPJ5r9HBzvIuewRaVbnT2PpowSnrct3ovSuKy7wXI6ISrOtXbbIPMzq8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lr7nTCr4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lr7nTCr4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2F4BC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 11:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760095793;
	bh=SMoaUGuwyjuhnAB682xUFtJsn0KgwNMw7NwM/deRhas=;
	h=To:Subject:From:Date:From;
	b=lr7nTCr4aJU6NwdrG/6B+H3Gn0Gds8Fj7LbiTemAHY5LDoRBkDUWPoyLPB1AtOver
	 lM34dLpBs0dTrxtx0nBauIW6GlomhvHaBPRQwXsl7nYzgsl4xQU38Ey+oEKwEPiS0P
	 TblKoVFLvZAMwx2tRGgvpH/OzJhNF7ascnJzlev3qJ40eFgoQDjIURZJbdmBV7X4tf
	 5+Bd86oOdT1Ez4bp93Yb5XL/muJRKt/38HjklkQanIPgzucXqeXdnPkRCcGANm0Xhv
	 jr2AIHeslnr2GnX3xP3NxW3b9kwWqMmFWV+BgNv7qwn8Kdcg1y2y/UBTvV/B+nRUsE
	 ICTg0MMqFPdCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A468CCCD185
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 11:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176009579366.1347.11541802618153827673.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c08ed15c2ec6f35456bd44efa6eab64447cc91322c56ef2dc26f555d38165bb8
Date: Fri, 10 Oct 2025 11:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760095793
