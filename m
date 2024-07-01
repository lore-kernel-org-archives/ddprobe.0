Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A4E33236
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 15:45:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719848723; cv=none; b=ieV/ixDhiwueY2nZekVmgwX6l0gAGQEG4BxgWrBdO7eEifAMQ25su+RoSKmpxOd24r8Abgy5dcBocXwqx19jEX7fYEZX0ItDVcmlWKlOsgUXyylv2hiWBmzg3fDtlZIwYOE0fHJP5MRdmFlvVI3wqcOQHGFXpUUsgc9MzCocL9Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719848723; c=relaxed/simple;
	bh=wBFG48eoLC8gpCYttF4MaUieAaRyhaRlE5gn9vZjadQ=;
	h=To:Subject:From:Message-Id:Date; b=Dnlen8biFvfFDw335/I8MYoS7swYv2onVA+cC1t+XBBWpYxAOC2bHDArEgDCiGAtDV/hLmnoLYmRkj8r4x3bHkTRLLKZTrbrP+NMRlRo5zCHDMwKqAC5V56PAuGcA2dqi1aNV02ue3QlwQO3odusZPmoA3/0odT94CSVMVAOrNc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aatnDHq/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aatnDHq/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6884C116B1
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 15:45:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719848722;
	bh=wBFG48eoLC8gpCYttF4MaUieAaRyhaRlE5gn9vZjadQ=;
	h=To:Subject:From:Date:From;
	b=aatnDHq/nEPe9HQuJapaS+w2Hy/acueOtkHtNfhQ5lAxUGwgSYqq8g9dioxf5gNOB
	 SUsNYdvBNBOf1Fy9g9irJw24qPBWLnsn/Sbs38Oe7EUUxef051zkxlr5CyavOe6oqu
	 YzPGEu+bQQZcs3wZl5F/jrf3s3T2ETxImE6VuLNyao36bdC85cgOMHyo/QaFkWvbAp
	 D0RL1rwDRvLFS01o2JorUQbEpYoweuchYtBDLY58YBf+dCa8EELCdd6/F5ixqvl3oz
	 U8+mVrrConmq9Io6/FeX/B/fXun+Vd2stcmOYk4tP6u2pIrVqp44MRuPkCk/GAbd09
	 gvdeLE/E2GBjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF6C1C3065A
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 15:45:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171984872277.3483.629136613393266376.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b2b20fbc7a41ec4acdf76c20627e1799ce1d063cf33a9d20bf7692db10751f69
Date: Mon, 01 Jul 2024 15:45:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719848722
