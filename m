Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 479CC20AF91
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 16:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736786154; cv=none; b=EJdIC4/RhEnxFVpzQkYnxrzsal3mUDCns1e636s5qAaOqXPm1xaMqHsb4siCKrFjRG4FMPQ77tK4TmtuTwscsr99+EBQlEPtUM1zenGhx9A/iE7cWqPfSj3hHSY3sB7OKejmrKtotycbLhsWwJuXzTNqDfGnWnlZrEncQbmOGSk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736786154; c=relaxed/simple;
	bh=RYw7zxGUIqsfVGnoTls4KkfdhF2RtrOqSJIjVPpHudI=;
	h=To:Subject:From:Message-Id:Date; b=eTgxmASn1UwhGCooID/pKIZyfUPeI0+y30hZxLcio/dtgQvbV6e6Go1uvNJ8K9dyoE4icTtvrnL2asXk0Nca1iPOUy69pWPTSmN5WlYV1V2UE1mP2aUVt+nrn8jc3oF4xFkD3iUqV6J/nkwayCuTeJu49PrqKyr+qm1cJn6nobo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A7l3EcUN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A7l3EcUN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2341C4CED6
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 16:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736786153;
	bh=RYw7zxGUIqsfVGnoTls4KkfdhF2RtrOqSJIjVPpHudI=;
	h=To:Subject:From:Date:From;
	b=A7l3EcUNDRFbnzDXFlsWIvUGT5FhNV2hcY7Idd/1z+zv8s0rHk/nLOIIzKa9Nd4t8
	 fkSE07hh/rNAaXhPEv4KtOnRQx1dT3TaBW8BfFAJjNqXWajylDoqJIdxN2wMGO5Dh0
	 stR/zbJuW1uS0u5RK/hVLAZE1ktACofW3nd/wGtd7pUmHLdbdbvzQDIKiMtOfLcB9y
	 poh5VCP0S4sVrFTpeT4AQaadc+53c8ZSj3FBjN3K0z85XgJ2iQX2T5CC8OUwq6M3tl
	 PTZS/P8gmloeZVXAlizhj+NncZQiOj0RFtfmrStN9o7mq5Fj4dCD/yuLB5zYdMo/aw
	 NcTJCMCCzgvDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F8F3C02183
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 16:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173678615364.18103.202062660967117585.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 392ad54368af9990c9018f1a846e81f294ef3efd2a629b6738ee5e22cece1a97
Date: Mon, 13 Jan 2025 16:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736786153
