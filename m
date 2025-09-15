Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 353EE2DC783
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 00:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757897394; cv=none; b=oIMWiHaFuY8/mNuROksxIk+x0n31QkxBoP86M2KlugVe/PfsxddBuZAMZvJ5oJZ32/CUVLGMKp5kuLfTkO3jXzZVD4hkdOsY8n564+cHD91otr6aFaOfw9uQxn6dE362QrLRm4+61nnn6mqg9sMKtu4Ftjec3nyXhe0k8jwJtAE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757897394; c=relaxed/simple;
	bh=8QxRyOXe4JWqKjC51nEW2yb35xoqi0GEGBBaI8LUXVE=;
	h=To:Subject:From:Message-Id:Date; b=dEOFCcLq4mcPK+LM/9yWzlKvEBkccuTsKzgKtPGJ1Mu/cS59UiLFrlCcxJlvZmeJXYcFTLQHcDDbNq88QvyTnf+/ImygxSDq7yDBOr7QkIDRFiFfGNDww1RAZKuXo9nQhxQdvVJK/kTySFkIXf9r0yMuo18hBQVajP8yV5+PwZw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=au5vA1Ey; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="au5vA1Ey"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A276EC4CEF0
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 00:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757897393;
	bh=8QxRyOXe4JWqKjC51nEW2yb35xoqi0GEGBBaI8LUXVE=;
	h=To:Subject:From:Date:From;
	b=au5vA1EyocYp0t2OG7Rhl8nN7pNoYb3DLIhepZi5sJ4QKeLyYR42/uzJDpsYT1kkV
	 tOhoUx9ExUm2FCWMkv1tObTDLNxTZZCvoOutD3wLmhJPS1jqpL0WxAPCfuTzPtAYR9
	 bUV0H6/IXGmDFCmS7oN8NWx8XYkqeSUjAUoYpxCboKHAMG1cQBUGfX5ibIKhd1wmUX
	 bmjO/iSEhoVOKL2VyA1YkHRhEIoweYBPzFGDBEl6pdY1ufmVFwd9kJ+OeXc1lWtJJC
	 3F9ZGBPsxTJF87fEkqxhFz+qxAhJ37EgIfhsATM1UenSE/VYy6Fi+gGnjVFOdJh6G1
	 PMmK3sdPghQ+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91168CA0EE8
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 00:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175789739358.12019.11345607480734105327.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f0d4e07b14ed156ffd75c67e7db116403371727fcca3722a5ce7e128681bb23a
Date: Mon, 15 Sep 2025 00:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757897393
