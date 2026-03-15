Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E773239E9A
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 05:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773553494; cv=none; b=VtUQY781Xnes+B2ZUaaJEO1sIoJQMuKWbZRYTEIjB9h9AHX0fpPzxyGkNwIlLZQcgj6AQQlgnQ7mfnbkxtdV5K/qcj0lKoOWXXEOipEP73agALi2u8kn4avuWTjOupWt/uwUMpRqTTnkAMrL9phb9+GiCriDXcchJApJRzguPmQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773553494; c=relaxed/simple;
	bh=S6SWgLyVoMTfKTqqalfAyl/B1KBus4JFyadLSMcB/rY=;
	h=To:Subject:From:Message-Id:Date; b=DfmjsIzXmmrWUmc8UrlDMcAWHLTShxON5x+MNEl1i9mSZxL5PZR/H4wpzb5v6rj+QIVK8LpuYZVySLu0x6uvkwxro99bACejXumpdoAPYaVmplbDrNEOwmM5QEZ5B71CsNsB9kfj2sH2oqxy/ftuFytX3rpclxiSAi4DyC+4s7o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m0XJzVca; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m0XJzVca"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5A86C2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 05:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773553493;
	bh=S6SWgLyVoMTfKTqqalfAyl/B1KBus4JFyadLSMcB/rY=;
	h=To:Subject:From:Date:From;
	b=m0XJzVcasFlyVj+Vamq8b4a4TTHz5KBaXQ5mzvGiwLI0K+1Rfz3EDJLE53XoKPeZW
	 2rw7MtVOcoDz6tkmGumN9NXjHHbCncl2nsD3i0RE27RUm68D0+7yf0KeG0BFjs8Lz7
	 smp3XXQdEDB6X7aisNibMorUXvb7rp6Vq0MlwCpj2E7/YjrDz00NjxfIJ+L1uCyQPK
	 PbmGIFmALSTH92ZmiOZuYZHriOSf7NLj1qSwIDdRLC7Bry2YzDm9/7s+4F3VRdQyhq
	 gMxkMttjc9ZydWLvvuGqg4pXn0tEcZ95NZalVOdJ4dwVA542pxyhL+Yp38KUc5bYsr
	 Pyt8ML3RkuDPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95651D58B0E
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 05:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177355349358.19252.15435866550546203577.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cae821b49a9c09244f3d8760971368b289d1b5a3e27ca5569564c1084a8ca98a
Date: Sun, 15 Mar 2026 05:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773553493
