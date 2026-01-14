Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1985B2D97BB
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 14:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768400634; cv=none; b=dPZjamBgFI41slCHdfOJGW9l0u0BoNUQRnO1CtvpJ+AKO1G+CuMoeZAsFVvUjmEojlhwAnhmTGpZr5pG6UiXQh6LlrL2I66y3ExPUIUxMfq1GVmGdoTHAfE29jpORLV//KXnCl+yYgxfWcYohwkcIlBMEMwNWFJBEGTAk42abzA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768400634; c=relaxed/simple;
	bh=E8FQWhFW1uG7lF4IEYteTvGDSr/0USoLAybAKKikm1M=;
	h=To:Subject:From:Message-Id:Date; b=UIkPfwXD+ORJWNVl5v2i2lkJ2WVaugnhRyvv6T9KRPzMOkIFfb/5Qgy1W2+aesyZ28vKNAvQtMzJ6p7z8YobkcK0P6DStKwyfpFAgdtrM10Ey3283yOHx+RU9MX+EIxFkrV1b0nDRv2muogedXA+l2ZnX9o9MnfltWlcC/y1vQs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DZ/paqS1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DZ/paqS1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2A15C19422
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 14:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768400633;
	bh=E8FQWhFW1uG7lF4IEYteTvGDSr/0USoLAybAKKikm1M=;
	h=To:Subject:From:Date:From;
	b=DZ/paqS1qlhlmMcxsUBqm9t0YN2Eg3A11Pq1LYoJJRVjoYSEShV+yxAK35Zb9RTAx
	 zCldktEowL4F5sW+ciY+1hMbMjeUxWnkRuN1Oe0nepgp34Z/q78mB/gaRV8BQem37W
	 Kg0r+nWlveMFCeUZIfz3ON8X9A+W328RybOiOkK/ARxb6xkERSszJvDO9uqBfwZfC5
	 Ij8oAVIDqqQm8oWPUeA/CJJRl2c3vvOlTzRRZ4dI3LGF70kKp49uooi0+fUIGXBD+M
	 aUdDsLT9ILqwyf85fdgUcA1uzmqotOZjcIzb7y0O2lI8VwdB6hgJfblRoXOGYDtS9b
	 Bj5sA04cp2ScQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 926B1D37E33
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 14:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176840063358.28550.12508784902172486417.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 15a6548e1baa027cc7a38c8a39d1904a5508fc2b1a65ca24defffd14522193df
Date: Wed, 14 Jan 2026 14:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768400633
