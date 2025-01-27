Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4542D64D
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 01:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737941154; cv=none; b=Rw0fnvCUvkyocxPaR0iqHUGv50w+g5AqaCvuNeNV0ei4rnoB3PYc81hG+D5maKrh8xe3Pr/gIvlqFUzUOvVYMXwrh3Rcti0E5sVoX0WptkOre8g11hBr5ekQ/Y1DxzlLGuPbbbGmuAlX0Jee71SpDH7Tgths7O22gEkcG7xxphY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737941154; c=relaxed/simple;
	bh=0yF3+QwxpL9jAW0OFSpXtkmh4betWpFqdJRRp88C8Mc=;
	h=To:Subject:From:Message-Id:Date; b=jQV0qUhXTJ3zi/qnJGJtsxTwMeFFBwFlVBoO0xsjD/zWb3xcLtTJBNuu2k+bc2pwvkLAzu6trrgiCffcA7mtOe4DBcVYkFqSLpH1eGAAmpbGX9r7HlTMf7r9gIb6YOE8zP3dBMiIEfSwzC4k92LkxuM3jTf4g6YdjtNWXmEdD+M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n3BX1zbk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n3BX1zbk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4DFBC4CED3
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 01:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737941153;
	bh=0yF3+QwxpL9jAW0OFSpXtkmh4betWpFqdJRRp88C8Mc=;
	h=To:Subject:From:Date:From;
	b=n3BX1zbk4mea7UEdQ3iHcresBVtsFg5ot3vBRfZOkBUOlhElIGkFFd1Ot5QTYv3Wx
	 zCA616L96v29aoGLIrruRPfSLXFutEEdIaAW/U2iY7m2W2rLt79xiJNGAXdA71lhJd
	 MvYt44pi58/8wZwT3geCc/WokX9RaENY/HwcHZblFz8WV2OVGqPizqbLB8C3j0fB+C
	 aNVcwQlbPCr53rQIQBUK3mdR9UqaDXLkEoUGy0S7GW2h+FuWa4VvnnW732NhGGaJdP
	 hagBLtEIoX7miTXovtaCht0ZKTB8CRoTiPgeHzW3COSBSNMWs0swlagZcirBy+J39I
	 Hn18hgvlfT2Rg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90ECAC0218D
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 01:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173794115357.29246.14392688752598029078.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d138b960e02befed8de1a63e30265fdee8a7d5eadd5cd0eb6768edbe339bfa7b
Date: Mon, 27 Jan 2025 01:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737941153
