Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9F323EA98
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 18:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743965993; cv=none; b=PA7MR+lCuY3TCUTECgEscEiSMbEKU9mjQSNwjP2XbyJwQ78gOh77JyfWQ+hMc0qGaX8yX5XyfbnoJ0D/iC2bYos7OS3z/foYfNOb4UIAs+ghQ0uDVsCxHjh0xBC41e634TK9QGpoa9nccTnS6ySnRoOlVFMlFr0PfRN/I6tP+dc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743965993; c=relaxed/simple;
	bh=Toz/tDvNHIx9CI4lz0SeMktXAPvi79w54ZGyDTZTvl8=;
	h=To:Subject:From:Message-Id:Date; b=su38jMFzljn2iVSBf7DFR0Ma3Bt6FlQmYSI7AU+T+3gI2Mh4hecTmluwVXSdoxo6+quR9/0/QKjA3gw44ujsEx0Xfqr1/CLLTvzigdO1zLFWYPrsZ5V8DrD5qXk49i+LrHx1PqzpmzEqyBLHaXArNIw5xNCE2ezciA+R1bQNXDs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=an8iClvF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="an8iClvF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9FFBC4CEE3
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 18:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743965993;
	bh=Toz/tDvNHIx9CI4lz0SeMktXAPvi79w54ZGyDTZTvl8=;
	h=To:Subject:From:Date:From;
	b=an8iClvFvOquSBzNRWRi1JhT4Na75sa/OlfR1EvJ63SE99Jug81nS4r9Zp6qJ6R8v
	 lM373ZtPSsalC5AZeGb2Y/rhITdg0awNWRaKtCgA2H7KPca4HyFS2cvoh/IVup64MX
	 T5EBuF6JIKU7ol0PwF8nw7nb7HLzQi8o5/mGuRkv/LMg8eUQLHkR8jXmRfPf2hZ82p
	 RFTVawO58o/iF49TWtwGig5v2WlveYHq3dw8aOl1Eh45vDxbFpvitDACNPUM7NgETV
	 S2X+k5LhXPsUPJ6sGQ6RVeM1p2ucAkLA0yVyfVaaIX+Vzsk49kAA2M2II52HLt1XDR
	 NtnWBG2DAuy6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94265C36002
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 18:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174396599358.17470.11560912431629374191.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3932c07ec671bcc6830c96fce0136e4b0d87570773d6a274f489a0d3e471ced3
Date: Sun, 06 Apr 2025 18:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743965993
