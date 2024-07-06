Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6CB3A3D982
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 08:05:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720253123; cv=none; b=aueySSwiJ5xGpc2W93uYVI31N0rI6yOsa/ibx1ee6NKqh+gkfK4U4T9Hl/2rQNa0BZtSAz2bK09peIpR2St6LZnhgFiMeplayOSKdHmsxJeLierkcAmuQJVbGA/hPOPr4IeJIJcS/azRURJKirWujKNafUgNJe6xEe48YaBq4pw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720253123; c=relaxed/simple;
	bh=A3cRAHEuVlHhu7lPPhi17p4by1f1P3nmMD3M87vURAY=;
	h=To:Subject:From:Message-Id:Date; b=P3xmRdHhJwnZaQL0Kv+W7q7mYSBYptvHgveUtIt4IWK5ZGaVTy9O9HoK90Ajh3YGuNidAYCT5b9Co7swVQjHL3dSqhkcpOE781Geti3phifC8Rjlj6xiPGCQklCYRCZxf0rnVyWXP4kC4K3q4+52UACMkXGNkgS5fYCJkK8u3TY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MkWyIuMF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MkWyIuMF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE61CC2BD10
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 08:05:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720253122;
	bh=A3cRAHEuVlHhu7lPPhi17p4by1f1P3nmMD3M87vURAY=;
	h=To:Subject:From:Date:From;
	b=MkWyIuMF9NU/k+zkVCer74Ml3PMUKAH7G160ZwvZnwoHQtNjTmKjoD4mVGf9e0ZQF
	 epWVazSExMkaLlr8JkMpmerl/+Jy/kh5l/IIfTHQ8CCaXBy7rfqsV3flB214FEJSQr
	 XGOblcRWfdDHB9tRa0LJ/NwyqLYgpWVYosLJgqdkBPtb9U3FgCZF38SibMbTR4UgG+
	 EY+6od3h9HEK3cNdGDAl6dxiEMEwVzv1/BXEy9UXNwTUoj95QxJMR8Xqnohkn1R3Ym
	 hxNBL4NNX33UFgVzSnE56iOw5bTRT9MWQKEVp4qohuN0ZXAUm+/JbRjHGuil2YfLpT
	 e5pDZNLBfe9Vg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C18D2C2BD09
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 08:05:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172025312277.26685.16107763618035226888.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f2a3f0cdcdaa6c45ffda3cc23a69f1e7157e1d0316a7979e23675f170aab751
Date: Sat, 06 Jul 2024 08:05:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720253122
