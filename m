Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15A1786344
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 09:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761556194; cv=none; b=IF2P6Hp5zNkqcFArF83nhCA+DDUo/q9B50f6Ji12rPxcBZgnOgybtvkTP+tvBhIl5PoHdQ5typRV9+cuM2Bg5fgDP4F0EFRtLqaRpPje/J7YGe0tqkPeAy+hmICPhyIL7szSAcq2NbH3P3hhxvx73ir7DoVtZYF9QdNK2GzDm1c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761556194; c=relaxed/simple;
	bh=XeigkvPV0yl+2Pv/9pivj/VeiwcktSAZQWS0XGlSoWQ=;
	h=To:Subject:From:Message-Id:Date; b=ttqiFJ8gBtBnw0q/Y2Dk2gckc5OkyEF0x0CkX1+TKTRYUQ+tJ3/6ixYvlli6TgmOb2dvcdyniAKogyqdDHRSIRSArngIWjV4sRIOj2g6ogZi8kbynlodrZAtEcg80kGrSE27aBtyqGsZlbXJ9fIhmCP7lWaeo1fF6VY6CWmLGb4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I/22zbQI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I/22zbQI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5CDBC4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 09:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761556193;
	bh=XeigkvPV0yl+2Pv/9pivj/VeiwcktSAZQWS0XGlSoWQ=;
	h=To:Subject:From:Date:From;
	b=I/22zbQIslFXbGPdZTsloxEGaSPZL3BysOgG7iY9U8Yb71Yi9bUQ5N/lbcSQCqzsN
	 TNpvg9WK5rBs8771i/CfGNwZI67/V1cSw4zBeIj0CG7SvT5ZHG4YQ5I4ZA+147wwoX
	 g+VJfJA+/19AigAR7N37C8GzNDNKka8OrWLjp4rf9HxC41Hfl8d5nrjs7nmFFXw9Sa
	 KWE6fF5DggxZmZB5irWEco1OnDu00eP+dMByrplENg5QY9J2Cm5aGXNv+p3Men0REc
	 Z8pf2yGeAkDRJvM9gqkAOQqfe/l5MsCcDwOL+K/Zm/u6kD+UZKv9NHde5p3/AoUFr5
	 6KPJmB/KlknTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 934B4CCF9EA
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 09:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176155619359.7982.2871745477972607562.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db2a59cf03129f7e01f0f7de6263049a3456172aea33f8df741280c78950233f
Date: Mon, 27 Oct 2025 09:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761556193
