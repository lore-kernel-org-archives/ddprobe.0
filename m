Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5708F2C9A
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 02:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738376155; cv=none; b=GsqY/YNEpNzIKWvcsTaNsBQ6JGwhQaex2lI2pNc2OXGkMyGtOqS37cIvOlPFFQNhYNsWqYUxlap3KJdgGClUbd0FgbZap7ytA/S5ciaGvKmL78RwBR6BOCw5RpT30rNxLlHxKXC/3F2ir1Emy2Z+LNDvl4EY2zPFsxxPiaVKVAo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738376155; c=relaxed/simple;
	bh=tsblCWmidTo3pCz9UFJujg2KnP7AQZzWTFj67fUGWck=;
	h=To:Subject:From:Message-Id:Date; b=RZ91p3TUfRHGAZ/+iBS5wRNjmdSsp/ar8txa2pcuvVXCgBHDfGyJevvIy/Chc2NzzdZlkiZhwjemj32tK03Pak7iVUg1LLrg35VFp7731xBWkuYpaGVgZBYy9ILflmmCyXpCxt/xpaeEthQ1v0tjG0Mmf8IBxKCDKvUVRDFZEos=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ONIPgo++; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ONIPgo++"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFB1DC4CED1
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 02:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738376153;
	bh=tsblCWmidTo3pCz9UFJujg2KnP7AQZzWTFj67fUGWck=;
	h=To:Subject:From:Date:From;
	b=ONIPgo++y7R9fA5dTvFb9OyOYHZQUBoLDEv6OSfNMYUTkA6YM8Y+Dscf1v2URPkez
	 fAzdjoY285a5JyWV47/3O1AEa2CHHDUDMua/nVfsY2s91KIz6yrMJvHilDG567hZ9K
	 DE8Kkogc1QGxRXgJQJChYIXjawxj1oRDXFDNabMidiRGrSWr0DreAn8ipXYSBq+UI5
	 A/EdD2HdIPinrk21AIM4eLEzF9+5YfaBlRCs/pMjadGr97D2fc6W4Y452TruPJBgdJ
	 3zhrWnbUkaYdbOEhCQVpZuNygdHQt7Io+nfWdpEU9P1QlbRbDdqn3wEqEdFPX8VS1K
	 XAblf5CegSy+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3D7DC0218F
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 02:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173837615365.13728.15340791701887627113.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f78c2ad548e9019278aada815b870930d98fc33c412b6841bbb92e659a0cb961
Date: Sat, 01 Feb 2025 02:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738376153
