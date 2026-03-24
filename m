Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0129E37B02B
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 17:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774373094; cv=none; b=XwVhMmYinaOuSu98zF+8y7+lNmD4LldMCvDavZVmL2uFMnt0KMPDwlSR1C4iOYtoD/dJP80xL6YzeiEu1q7pCU3ueE9L7B5DqmTPT/oMArmOONQIsow4hGYA0H7he6rOPo/NFmGP6ayAvQTHMzEuQ+22JKa4sskpUwHCIywSH/4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774373094; c=relaxed/simple;
	bh=tu3+gqEcxsYJ0pIsK/GPY0ODKnIzCBH2yHRfxtMzudI=;
	h=To:Subject:From:Message-Id:Date; b=VAUqTqb4Zdz6dAgWpsoctN72pZ79nFin7U951zbhJ98QI8WNvtkkeUL8l9gpUiGiMVS2Ahkr+vgaJ+qI+gUQ3oHNofGlpzoHxsNYZWzZcTyu/oIDywSvy3w4bQAWM9jK8VC7pPARgXZHMYhT6caz8/lLKtFBLfVt0M0TLWpUKTs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FJVaPahr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FJVaPahr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3B26C19424
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 17:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774373093;
	bh=tu3+gqEcxsYJ0pIsK/GPY0ODKnIzCBH2yHRfxtMzudI=;
	h=To:Subject:From:Date:From;
	b=FJVaPahrhpPm20VVlE4NxMDQHq571SQMOrXW6ScDqwX3BmNBsvSXNN0WJBOia66WP
	 QbnZb/j8OXR+R9+Y/pn5rimNfSh2+kUtS5/YGwLD+Ar+7cX2ppd9v9DaXYF/bNoi36
	 Fa164nCU4BHmaH2Q7fm5FoVdf9wIsU8O06tIHB8Z2AnnCeRN7ic/vDnUzXOoxPa6OP
	 pD+lkm/uES0BlGcUeqY7m5+QTVsPKS/XrEUz/HTYvsL0iNh6VXCDQalrNNHIwMQdL6
	 dGq314Hs+5VheT6jdy6bPe5ngribxXTmGDp6gGHEMiwOzV8u7FTxt1gqAmOQr6+qZ4
	 bDWZO+wtcSm4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93339FEC0E8
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 17:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177437309359.18862.12337657482135804535.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c8254f08d2d367c47c64d3551310c729ab96f3ab0b736f8e6345e0da80e4900c
Date: Tue, 24 Mar 2026 17:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774373093
