Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6727837F314
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 04:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791865234; cv=none; b=GsM91C7YJc2tE4kpTajWF10S0nwf73f5M/1yz5JIoE+uYG19obtrIAKn+R83m+ih5YPD+0mmPSPVeAF2CDA05AB1ZdFrzqX/9S9MD7TEu7xMbtk4XDf/rwdCOuSor2zr++bwIspokNDAKolog4Zw+/G3YWnoUVs9lFgGJyaT48o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791865234; c=relaxed/simple;
	bh=0C2Vpos82g9qw4VcDEn/b1MCn9SW1fw/DO7lqr2mU6k=;
	h=To:Subject:From:Message-Id:Date; b=UTW/Zyu6WLAv1ROXhNJ6YIGOUXdcSbPRRYpEQwajppBqGn0+Xlo7h/1sT27qzp6S4s340n1sY7wHZNOF9sz+KC0oVIDpoJPRi10/rzh1Z3z4+dvQCeSzwtc0uGAHCD2829SKTLzdAf2dTLoLyMWgvrKG/vVNdU4jbU946WpCH7M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pwK5UmPW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pwK5UmPW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EEEFAC2BCF7
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 04:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791865234;
	bh=0C2Vpos82g9qw4VcDEn/b1MCn9SW1fw/DO7lqr2mU6k=;
	h=To:Subject:From:Date:From;
	b=pwK5UmPWfqH//HxjYo9T1Dc7brZ4AgedooFWV51oSxMZhI+zVrkOaVnAfbKNFkKgw
	 5QBmcuOPAdbVjSX2Sngi1lWadDVz6qtochYEQcKQSu+5rRIzvmFths7AtrzR6SIIz8
	 xoDZk/wS0Xs8qnTl16bfGJvK9B3HCGC7xaks9NWSOdchYuoK/s9FqA9rUT9DoW4ADY
	 k8djyGldYW5+CKlXSn5k7QUI0p8wg01llkmNyztdE6PJPnDgtKysANv18AbdivtAyR
	 gt/6e0eoS2Lo54rANk5lRxCyoIVfTBPqXdIqnzw27CzNrfdeJHYzfVS8om3Tsv337o
	 oHC1R8+t8Wh9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C75E0CA9ED0
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 04:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179186523380.13854.2969401214812580260.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 76b1aeb39e6e1ec48dda78b1568903311be4b340c22833b753456c3cabc455a1
Date: Tue, 13 Oct 2026 04:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791865233
