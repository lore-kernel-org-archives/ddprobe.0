Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 76EE014B97A
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 12:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719059543; cv=none; b=VeDX3e4QC8MakcYiMkLuFdAxNNPRSzA0jjB3HwFF0mOMH/ch990+aMjnDFda4k6qnbWaW1BdIuoOfYHtroG6KkF1IZyoKE0PZSIwE7TynGBHTWx8F+aEMEFbGn3V0M/TrgtU/Pd2zT7Vgf2C0awrQjqIxaNj9qGc2sn/8fDQLvE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719059543; c=relaxed/simple;
	bh=dLN7V9LK6rqBQCJPscw1vpXLtuTd667dmhEbmOQrsK8=;
	h=To:Subject:From:Message-Id:Date; b=Jc7QG0QQ6pprO5J/Pw2xWnwgMpUSAR/8i/Cl2GGB7FzmsA/rKuk89OUTUqhJ6nfx34oSx98JIgqFBscCmPYGaO73V2i1Z5eKaFrLYgRQl5ZV/VWhN+U1EQzf0u7P2XMGq24Clts/F+Y7uP0TqIR/mu0cg8o0Vrn92mmIPpZ8mMA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YUBX5OYP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YUBX5OYP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EA16AC3277B
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 12:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719059542;
	bh=dLN7V9LK6rqBQCJPscw1vpXLtuTd667dmhEbmOQrsK8=;
	h=To:Subject:From:Date:From;
	b=YUBX5OYPN3cjhoUDFiKnnDd8mzDGYtpW+dcer6CjdysezbZ2wCmSnSWlc+KzQIc+V
	 TF5EtCp58JHON98Md1VeKS6DRb/8hbx0/uTEWlnsKHg8y7GNOw2qt+JhW8rZUTm1PS
	 Rm0636P8cwm8xg5DNKG61DpVZnetiO0ECsuoe1v4Ltc3Kyc82Je1bd6r4NH1DGs8Xp
	 FlPmCJouOPz6VpaurK/8pS/+07DFBV7LALDneExsFi+VWteaAMQYI3/jAXGTd8LFdr
	 x5easZl1lNyQ0Ot6hr/f+aUM0xRSVSGmmZbczgRGQTmGmCM+Ug9VQ3yjaGdER1Nj17
	 +VoafcTQwlHiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB235C27C53
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 12:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171905954280.18140.10286902587745112899.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c1824b9a07a4467c96011b610c2c800c5262bdafa43ab1e3b1121a4fbd04e280
Date: Sat, 22 Jun 2024 12:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719059542
