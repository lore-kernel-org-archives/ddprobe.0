Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 122CD288DB
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 03:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749352194; cv=none; b=f5LWx2UgTShSUP+wwl8dtm1CbBN738NjqfT33RaGcSTHvy6TSWr5fXLpZKarcu9U52Wm7DCM1ew/NnExki+Dya1wC4natVWdehXR3wtryB+cW+aDJyIPhYBOWXLbhKQncII91lDJ1B//Ibtp6PMdW7A/6P9+G5Bw4gDL2GXvoIQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749352194; c=relaxed/simple;
	bh=jMZINk2xjUBrg3H5laMCE00aTJiPzW9R1ECdaC81ySI=;
	h=To:Subject:From:Message-Id:Date; b=C21lbtKgFDeLILGVF2/fh63dSzgyAZMg1RJXJeGaHB9a+EeUwE+2OOGsuf9J4zISU0p6qsO6dKMktH8WSDYLUEaajVHHTgfI6tD31vIAwtusT0zbWrcSfin3Iv8s1CevaqtH+BCOaz+4DRTdY0XN5KBD6xH5mTg3HfeXeSByj2A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ir3NFLPT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ir3NFLPT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A104DC4CEED
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 03:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749352193;
	bh=jMZINk2xjUBrg3H5laMCE00aTJiPzW9R1ECdaC81ySI=;
	h=To:Subject:From:Date:From;
	b=ir3NFLPTIuqw2Z2/G7RX+opuWPk8Y+OmiMlPZFfdyGj6k+ZfHNrzIHBFZTVApEoFZ
	 /C9oLsQna20mhN6pZ6yMiEvvyoMHw2BpDIBBjpP70UlDPdQdwtQRMJWWtZTSgkc4Q7
	 nkw0yB5zSVx6EgpXm3mn9f206egb0ybRZK3lSV5/gJOimzQR0XRJqce/0i7rLM9kXl
	 8eN5on9+CEzDSDf2vuPlZtcnhVoNDkS9kOjOCJNea/2a8+ievX7iI8ny/lX8j7XHEh
	 OUnQz8vsINalGeD8mD+cHOUAARtmyATd2h0sP2p0k8LstuYnBoBwW4F9qRO0rvL+up
	 oszpTMHwdCMbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF95C5B552
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 03:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174935219357.28191.2928955779988853988.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 891c2932c088d90ea84fe892518690e2cfd2b9cba6d83fd4536e152e8566ad81
Date: Sun, 08 Jun 2025 03:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749352193
