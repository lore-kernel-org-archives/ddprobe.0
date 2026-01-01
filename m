Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49F502417C3
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 23:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767311034; cv=none; b=sjSHoZFAwRkt+uqxeVY2JxRb4UPZbKmtl5THZQhbFG+z3yaPEtAFcQJKaLHyGO+e53IH5yx2COe4UO6hMNB+MCRFUH2lZrwWumRMN6LRotFtSxEyjgtQHcA+WnAdiLHNia6NmrTagMGiDj25TfaoaOVOlwHuY/8XxYukEwjj3P0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767311034; c=relaxed/simple;
	bh=32HDkWAD2QjTtWppo6NB8tzSSbh3UhZCKzXWvuhnbv8=;
	h=To:Subject:From:Message-Id:Date; b=STiIS0/DIosWXt++n5XD6ITxBvPGqvwQnpup3+4M6obimb698IBJ7XT9vJpHOuQKI1TSpYd+UzRsXucST8iw7TUciDcsYoGkkCIP/v+1FjheJ34NxUyZapTvCj5ixMgJvSDDaFtoqtzrybXr3d39pCNeA9ZTfd/4MpVmfiwNLS0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uZCqC16D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uZCqC16D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7EA2C4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 23:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767311033;
	bh=32HDkWAD2QjTtWppo6NB8tzSSbh3UhZCKzXWvuhnbv8=;
	h=To:Subject:From:Date:From;
	b=uZCqC16D4xZNdGD8bUZMacaqINd3PGhDInCo6JFL/WsfqJjvgaU1EK13rz1w4xgPV
	 3MGwq1RKHRTyZ+rVSx0Lkuqz9xtW3UIDXPo/BxWTsmRVRn+B/2+7UL20Byh/LhPTr4
	 /6IxFY2Hnm1l8P3+0U4NFUVIH5XLMn6ttux0tNiU1hmcIUDuJ9c/u89GkJxWavQRIl
	 m8Rxc4Ufkp5r4u46uH7R/F+wYZkLmUZeEeFUpShY29VBx3UZCvmcwga8KMB6SSIRb1
	 PKDtv6tdubcgvuT/jTKgkk0g0pSv1PmVGSTKrRs48DYTHwj4CTXOl4EDqxqIz75nYH
	 DXUAgtgriSSmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94316FA3722
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 23:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176731103357.23315.55537692123925939.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7b3dd08feff3f7c5c8050a067554054d7693dcdccc3a71e369a68f230a882ed
Date: Thu, 01 Jan 2026 23:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767311033
