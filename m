Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 266BD1E5702
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 14:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770906294; cv=none; b=tvautWtoRphRkJkZLEIT+JE4ONK0O/bIUuAfMiBOhswuzANBOCmkmy4t5laqKCEbmAZiPE2amCXQneLbcAywadvfMV6nq8nk7IEiD1Yu1uXyDHbcy8r/vRtyAPOBX53pXSZ5IUUZuKVPY1PKrOohlFZ0ruSohn9yYo99pvgjGeA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770906294; c=relaxed/simple;
	bh=SJZTlb6oHbe8KBOw8SkTijOcYfruxUwqfar4MfentlI=;
	h=To:Subject:From:Message-Id:Date; b=UQz+vG69sJtoPoh8/lZy7rUeNcMGwWry7sZE/Qludkeo24C8LmWwzyIQEYUb2tmxYhh2h+rNumND5eKj0E19hw7FczPV3M63JnKoBXueXRO1Zwa4jQ/B2QXm8RbGpwfSqbsXwLLNLxu5gTVyAEvHwyDo4K3K2vQhixNDCgXXHSg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d9B9wCy7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d9B9wCy7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABD3CC4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 14:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770906293;
	bh=SJZTlb6oHbe8KBOw8SkTijOcYfruxUwqfar4MfentlI=;
	h=To:Subject:From:Date:From;
	b=d9B9wCy7kH4tjdBm0+1Y3sYuJ00bOK9r0QUBAcUqDjw+xxkwvsdki+eFRdRALlsXj
	 U20b5Qe9ph/1IwPw7lOiy2jtexj2xN3JW/8CD4DbRZppYmMnMBcORiQOX2Zy7YTENz
	 yJukmWr+SH9PHQLWTDqa/CmIcoK16fYe/FkTc1etwieY769iw6uPavWCNrURPR2t3z
	 AV/A3FmqdL6/Eksufa6/POYkfc/4l39YFYwCQByHTsS3L+SW00JcJXPO0H1hWlkEhN
	 25mlyMLPA0sZmzjN+6RQ8rUIp2LknZ4OSZsTPUV6HhNji9oT4uvElOFuC2yu61ce/a
	 HNy0/lXkOMZLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 957A9EE368C
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 14:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177090629358.31458.5406784740566151621.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ccaba28c74de92746185fa06cf736fc5e901538d9042d0738e337b43ac662df3
Date: Thu, 12 Feb 2026 14:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770906293
