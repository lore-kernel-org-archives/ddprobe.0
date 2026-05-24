Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5741629DB6E
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 19:12:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779649954; cv=none; b=sY2zqZsXyne4B0zoUwD4mB2QzPapTpFrzdvmmpPj6fr/2u5+7omyMtchmbZTNZS1DdborxS8q1MqPNYLMhN9TAjU1F3n72KrvCGe5v0KMaFRtJgHVkdzuObYh5NgopcZNEweXZtYt9Rxk3H4ujWCI6KYZr0ub58vr03tm4RPaoI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779649954; c=relaxed/simple;
	bh=HWvCT2U1Vyh9mNZ2F/wxwx1FLqcJf1CwnGMYcsmnwcg=;
	h=To:Subject:From:Message-Id:Date; b=iVDdxeLE6I1snohOM56eF5QVO46i450eg0SiuxoWoVoZtNrq51CNZ7lcrLzoU3XZRE5+l1tHsdOsyrJCkhwp4Tcx72W3aVyFfEqnHrYRN14nMvPL5ZrvtFyo/hSaCflmFgrVfKyBUM47C2Z0rW/R3D9aAsWBgCc/YfAe9lbrSxs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p2CM8X5o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p2CM8X5o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C431DC2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 19:12:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779649953;
	bh=HWvCT2U1Vyh9mNZ2F/wxwx1FLqcJf1CwnGMYcsmnwcg=;
	h=To:Subject:From:Date:From;
	b=p2CM8X5oTMbB0PmDmOa4jnr0VXT5rFfDURc/VTTbB3xfGYKQQdvHY+//l/78GOeBq
	 lV62w7RaITXtJOSzwcNMv6A2FRARI+bFCzq0pGJIk4ZOpBrtgn1HASTYe1tvJOU9E3
	 59tCtRsc2q/xazM6KoaKgTZcwwXc43pIJYRQylKhlw+6mIPvAnKBoq1h0bqQQAAdCi
	 RAGk14mi0XR19SiaY9oDJ2rvHQUyJVDbqWxghrZigfK/ou5YkNEnbFSpjq/Y3AADpP
	 emIjzk2EE7/6P3Fb3U+mXN4Fp8BUA75fZnSPUWq7ChwlHD0aqqaEtO4DG5x7N+c0Oc
	 koYQOzYY5bgNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD6BACD5BB1
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 19:12:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177964995368.5353.11305485260349220033.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 028b5ff6e381c2550a5c0c8bc83b94982ea645a67f692fbdeb8e0a7247119c64
Date: Sun, 24 May 2026 19:12:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779649953
