Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9E56346A05
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 10:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770548033; cv=none; b=Jv9MD2tpRYS1VTxVwp+eaLwAziznCqcPylTBOWgUGFBpBtfDDYj+IrbFqRQaVWmFyCFldQeFZOajT8LZcrMNuXZrFpPrKmhkCblYOZufQVPIzhQ8NzPvKIG9Fj22dC1r0zyAvsokBO7ytnwoaq4OJ8wJO5VI3yPZDwJgkAOFLQo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770548033; c=relaxed/simple;
	bh=LhAe05jvMa6yTXyMaLgcrP2TwYuWgK8NhK5HTdQPNmo=;
	h=To:Subject:From:Message-Id:Date; b=snE72182m3DIVxotVLDFYBR1JD5pV3ztBVsVMu1/Qpr+p8k+LMoTCE8AEiGmW/T1q6tawUKPrpPRjlJJ0uKY8TxbFLrk2CpLKRjIof+tZz+TAenZLyfbu5GOe9w2kgelId5G+xOSBHymoUkXgqFA0CBRXvdwfD2rAAX+SEkQ4YQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=slN9PkjP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="slN9PkjP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC067C19424
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 10:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770548033;
	bh=LhAe05jvMa6yTXyMaLgcrP2TwYuWgK8NhK5HTdQPNmo=;
	h=To:Subject:From:Date:From;
	b=slN9PkjP/TBpUmDzuaSfFQN0j50mCPWq2WEcDXhu75IUIK2pLQl5WvYgSeq6hvzX/
	 KI/8QM/RdfX7UOKOOHeorNALR8340xBrmgobe1a5Jb83S6rNk5w4CmZOsDU5sddeni
	 5lT01cytiI7gW8+b17KRT81BBGxLCD+0p66wiquMqqxoCYzcoqOFjsKw4U3QquQCy4
	 5ATtX8yWLhfAcufUJQpf1jGGVgAceaNI+5KN+oLnI+46UcTz0+1liJy4/51qK5xEGZ
	 Zhi28TLSloLilU6p1gQfWH2TqIfkvwgqrk4c1qfJO+S8Vod+VXM78Ufzw7e0McmVp9
	 tn6d5AVqf2cFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A78BBEF06E3
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 10:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177054803360.21112.8886625780093550872.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c5c873553c6d6d3cee4ed4e7d7bf7506fa44e1f65895af7dfe7d6d1808acdb2d
Date: Sun, 08 Feb 2026 10:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770548033
