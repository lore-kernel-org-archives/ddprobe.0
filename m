Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13AF2346AD1
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 11:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769513034; cv=none; b=vAlHL+xpgiRztZ5Y48BdU2/eY4oiklzN0RC0R0ZdY8F+0gOU1h9uGIw01m96dHrsK9I124Qq4QRVwQ+8RYLrxNjAftYg5bs8KUcNdnFEEGK/D72KZcriu12tidAt1aHBuGsZXmblDQnMiHCu2pocxnQyj588atmiKmPGbhxKlQw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769513034; c=relaxed/simple;
	bh=TQZjk6AYqTl+y0jgfzG1abo949WdiMieARG36vFrtOY=;
	h=To:Subject:From:Message-Id:Date; b=W+BmnXAhPC74dR7FIrfFKELPnIib3XOf3aHHHhUV1Qx0WOu+N1OU2cCFzBiPUvwWRyVAs9uM+68gout8VjkkWTrlvfrElEF1NcYlXoP4quJC6Jqjsmunp6c2HXG6CTIjAR0FKiRGlulL9BVKmFACeJiCemgkCJrK8QnfEHv+Fgs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qq1qg+CB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qq1qg+CB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD3B4C16AAE
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 11:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769513033;
	bh=TQZjk6AYqTl+y0jgfzG1abo949WdiMieARG36vFrtOY=;
	h=To:Subject:From:Date:From;
	b=Qq1qg+CBWKOBgAIZz0HkJ/TS/ves2C7pMlFDg5zlCjvftyRWbBEPNsRXjx3Vj6Ytt
	 90U3n3IJzcjxnktNY0/y9ASrh2qHVcwrMor583mZRcnAy/T3+kU5pxN8RKqLeOLfRg
	 5wftnAmKov9LA62l7icsJIPxd1wHkNQc1DTwWKTkHvmDSCBfa8FzRIw+BhGWuj1UVf
	 vtMmitf2wyZHrYNjuZjTvwqlP78H+pCU0bHzjln6csrvIzfM5N3RddLlgKZaz+3S4p
	 NUKl+LSRI/MoY0eCmn2Swl5dQIaL8e2kgFVrHsd/WOAlO2KloRxR3xponYdkLp+SfV
	 A76jTpPIlKnGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98889D2D8FE
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 11:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176951303361.1410.12571366899904435637.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 054ee21ad59c44c83a0e4cbb9180bfb25e4738ba8f2914952b27ce255a226a0c
Date: Tue, 27 Jan 2026 11:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769513033
