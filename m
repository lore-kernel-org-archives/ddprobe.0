Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3657E2032D
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 08:12:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779523954; cv=none; b=t56Y64KMDlNel+oYclVDiOfrIgZPuV7ppxS8rtQnRXYH8cz5DecKMOfkBIXF7bzpOeMOfoDDnDbNmmVekETUnU8CW1Zrnr0uv22DCNwojtWaARsmMmCBORW3UDs+yqqh61qb7JrTCQtpie0MMqxAghOFVYjFaqYbZeh50EmhIbI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779523954; c=relaxed/simple;
	bh=mXup8tLhEARo+JvyvwnKuzBmdsXVJ3ybWPNGyidtq4A=;
	h=To:Subject:From:Message-Id:Date; b=hAhpeBgEwL0N3pCd/g5f+DxwVU+2oQ6wFKaRkFsYFBkTXADPWIbfc+QDwE/OpUnhQukq/YMGtPpC9tKi9F7Hxlw/i0Fd3f7qaxMfNZb+ZvkcqT7dEWn4TwrHZTMKavcHsmye1ikozPL2RlLVHydjQG1fJM1saVncvljksvTArs0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=blKAQ0h0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="blKAQ0h0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C99F5C2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 08:12:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779523953;
	bh=mXup8tLhEARo+JvyvwnKuzBmdsXVJ3ybWPNGyidtq4A=;
	h=To:Subject:From:Date:From;
	b=blKAQ0h0/auT39I8j7P5RvcBi5XcUf05+q1y1za9MU+jYjhcRsAnEOL/HdDaKFeX6
	 OO684MNFsnhvZiOxSA7dkaXpRA3XwBcxqhQEeYiNmpepdxY/pkPo2FxlMqPG9qr4zt
	 Bm/XG8g2othtqKVsdGBolYlOJen/z03INoERhWce6weEh9EXnwsiiCDGSIwCHi136X
	 RyNtMgQn8s5fQDnbhwkvlJN2Ti+W2QenBPk6xGT4/zeczzXROd/RQUDPgBnJbmYGIJ
	 Xdd2nNxUJUII1YgqjHbGDks+IK96WWRYptBtua+HRYiPI8d3wR08dYgfe+0evffvKj
	 w9vkLvtXIFvjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEC55CD5BB1
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 08:12:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177952395368.2497.15661886173929969202.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e72eff405d1bd788bb8f806a85842358496b1a851ac38a90b0f8fcf232842922
Date: Sat, 23 May 2026 08:12:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779523953
