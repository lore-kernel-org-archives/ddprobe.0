Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C789748F
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 11:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749035394; cv=none; b=B1lzUDu7aI0y6aAQD/ef5pvyFAfCRLuYFT+9TtZG+hOUezRvjyTmqUtT62GuNt0EgUe5dFPGpZ/Ds/HQqhghiDWqz7nv4b/965UQ07VsAG3hdVTf0Eu7mXAj83fMueTkrMALQvVSMolX92+cAu6mtu7roaHNVxIuP5lryxC4DH8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749035394; c=relaxed/simple;
	bh=WFrL65TDfE1jw4xJsg/c1SN9Uh1ygd0+WAaURw4pqXM=;
	h=To:Subject:From:Message-Id:Date; b=YEjUx6IGandTTtHENSTJTq7ny1GSwlZhiWl+r6ZeIuaYSr6ltXKQckUilvGLRw1lr8zyodTACJMbonMBDPsEvjYeLY+rvDO3RFFWwcPyn/E3pQGxco2dwqC///JFCYgycBharRH11yixV9NX74bqmUkMOTfka/dt6SS+k4IOPEg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b40poo9v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b40poo9v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A283EC4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 11:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749035393;
	bh=WFrL65TDfE1jw4xJsg/c1SN9Uh1ygd0+WAaURw4pqXM=;
	h=To:Subject:From:Date:From;
	b=b40poo9vQ3dq0VggV632yYFl1RpJa0PyKOYwsd1GIedgx8ZezSq7ymy92n6uxz9M2
	 RoP/WBJI2N+xTBgItP2JXjiS0yj8MWIy+ag6Qvl0T6aFFQEgSD8DO98ZzBCY6UXXX2
	 49zBVzPcMFBu1aZqwoDv94BXvwYOfBN1ASSG0zc/5MTxiM6FazwcG9lDsKtxTkcdWI
	 XghOlkjBgqLmRRosQBsU2Gxbj2HXY6a97LB/3sRaR/HeD6M1TiX5OCgtI+N0k8gUYH
	 gbAUqB+nqpNRjzDvYF31c/qQKQPple/8bpTuGeMHypETGBMMS/qoMDRUOp+16Vsqey
	 dJDr0AuSuOkLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91C1CC5B543
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 11:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174903539358.24535.11657317783440762955.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8798993f425d6d4bffe3741e0df590e91a817e8ca660a429b8e58b604421665
Date: Wed, 04 Jun 2025 11:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749035393
