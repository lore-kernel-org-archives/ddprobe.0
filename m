Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D42D7462
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 21:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749937194; cv=none; b=aVugRo5/OVm4o1Poolvw5QOGCmJf19XxIdVN1oKgGlX9RrHV/IbtehLkiwITIesGGTDHTW+VN8FHUM1RK+5P+4VUsbIssbimWo612oLyC10171r6a6HswbhqujcKpzDL4uJMGgjFJnAM3v3sp2VfoqQpj8paM1+Da9GhdGfstXg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749937194; c=relaxed/simple;
	bh=iDFA1XldgKn5Oe/x150ANgzbsQBDNj6B0bv5Q8Ew6ls=;
	h=To:Subject:From:Message-Id:Date; b=nwQ7JoxoTTHLL971hq2rTbEQ+j7jhd8sGENQPnBa48//dPiPRiL0zZ9R513iAdHI5bTQY2CS8/+QWKBrmwZNEW4sDa8avWli9naim6Vw3R6buOZpXKNwU5hWSRY4ecOnC3SobD0M/FpGdSiOESAtHf9ApNBj20yDjIrRGfptN4k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bMoc8VZC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bMoc8VZC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE064C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 21:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749937193;
	bh=iDFA1XldgKn5Oe/x150ANgzbsQBDNj6B0bv5Q8Ew6ls=;
	h=To:Subject:From:Date:From;
	b=bMoc8VZCwTRF1A7YjLddn8WwYBwunpJuhjUZuhFCOasKYRbpXRLbddiqN8hDbQDv7
	 yzneHiVHAPDVHdVlp1VzuzDflHtBCvMhUf94479vqN85muNpu1ETTRY4jVIgfZgw9s
	 e53duE9agmS+x0mLKMcD2epELpX92h5XbvJIm9I5J4+F4fVBR09SHg2mS7BMy3sIza
	 nleELEQNbCTdn3qP5SCkmb6Y3f9N6KR27tu5SvNgvbyiwc3h8sYNIuzrSh7+ZY140C
	 1ZYfyLJFQ3SWuWIDDN0nCt8c+aU1uxYPMUjBZgQaVyKl9iJF/TJqDpok+dACRuZ+YJ
	 urHIfxxDDv0gQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CC80C71135
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 21:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174993719360.21990.17698933814956609776.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c099d572555f70460040e3f7f47efc605a059c70a01bbb55686e7a3403968ccf
Date: Sat, 14 Jun 2025 21:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749937193
