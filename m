Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6CCE921D591
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 03:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785727234; cv=none; b=YGIFNGWEusMYAgWn8IOfXEYJV6dXpXw0kWwmzpT/w0PrsXzBRNZ09+L1lhyFXB9CdPUKF7lT0Rlr3QyQVPve1DaPq4y+Zfnid+uOOqZSKuf432DxAkp9OVzVMhDZhvXp/kwhhIf7aVnPDIKbYhSxPQBVqkjWfGjeERAlFtwX77k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785727234; c=relaxed/simple;
	bh=auYDFg9673nfo/ZROlsYyry5IMZV+65voPhSDDp/QkQ=;
	h=To:Subject:From:Message-Id:Date; b=MhMUb2Kmnfx3ejTJm/td9OM0Tti2iltn0RVuutL+S/oY7bTjCj2E/ZXuOWiaNPFbGkWhbjHSViZYzaToaDh1goZjdd/wYqd7p8673rVkctriBi5eiuHYfQpXTWZrY1g2RuhidyfMobFjcaMYjwBKEOhT4/527XC/axFpflCvsiU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CJVSpzGP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CJVSpzGP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBC6EC19425
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 03:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785727233;
	bh=auYDFg9673nfo/ZROlsYyry5IMZV+65voPhSDDp/QkQ=;
	h=To:Subject:From:Date:From;
	b=CJVSpzGPxC1mFeV9Rp9hQD1blQlQklMTMG0+hbjgeMr28wO+hpieG6wyGUH3LlbKR
	 Cm+EnNbrfyg1wnnvm6mfT3CYd0FFwfzmP76KloseN6f5Gh1W/D7m9hlLTSczzc6HQZ
	 kD2Oh1q+mn3Kb9+0hKJH25okYS60iIpQUkIJTgmY6EFrisefnLXPNdvZTSrMLzniRX
	 rE3pMOuGR2RmAbIrx8Dryzx+H3tkqEhhJHTilasSGIsdNo22gLd7mKRubrN3c4YTEv
	 NuxHp3TAFnFbPMUoMq3MDMADidPJLfUYBjK7sryOumbVxwmL91IT/ylUt+Wemd6Rmd
	 02oBlW7XppiFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B32A4C55162
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 03:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178572723370.19917.6086302743079518467.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a55c54c3196f7cc60aa304dfb7d08cb946e07b854731e5708ff08145e04724ae
Date: Mon, 03 Aug 2026 03:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785727233
