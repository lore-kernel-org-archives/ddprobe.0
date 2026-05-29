Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50A1D38C2A9
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 04:52:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780030354; cv=none; b=nTgIHsjVJmgW+3JcNCMDSkz0SqL2u2p7jJqlQzoV2ujyyGErv6s8BM0CTrjjnCRpOPDZNowI4/HOQv64E7GrxiMYydetc6IaI/WjhpeaX8mBMBI/zPs0EcaWUwIxZ3J0xdiW3MeaVBuR/ZnHzY9v3Bfz0d1nLeRqwSs5IRFTZTc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780030354; c=relaxed/simple;
	bh=9EhCeUuEVvfSB6W8YblNssOei2+4uvxukGrfScEnkR0=;
	h=To:Subject:From:Message-Id:Date; b=qq3g38rRbM8AoqBRsplnmTvyuKgQWhNSCH2wj5cONoGPAy/FW+SsLYeLveHhy3oPZ/60+kD44GmcFeLy4E3CUkGFz0WLiNtgKP+XvLubNpTDdmiV/kes7JhluMjMYBGkse4wGy9/UPok8cp2Fy3DogAKduJVj3AbUAXGX0yuhJw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LVyiHYOr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LVyiHYOr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5E8DC2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 04:52:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780030353;
	bh=9EhCeUuEVvfSB6W8YblNssOei2+4uvxukGrfScEnkR0=;
	h=To:Subject:From:Date:From;
	b=LVyiHYOrZ99ZcKU+ko1W6gXoyEr5J0vYCeYJ6d23BospuFtG7kUWd+KluuXtkHsAo
	 1gG8zNO0GMfyLvY4tBvAhau7LO4ZFFKs4nuqlyxqLWjz5rvpOrB2/pEuA9TDI2oOvu
	 XJ6M+RKJJYnYZ3gNBpM8hWEiaf6/n2lZCddt/L/RgeXgKTqgpnNVhvyEcr74gmxRxl
	 KRHe4riRotoxIzRZCGyGXals0QVs+fZCIDPDMq5y+T2fc3guWOG/IGH+qEoQDdnlQB
	 qrPNJ2MbxoQiMvI39TVmNR1PalU/gEUOge7SdVoaSDArP5aTw4wc3kscGi7SAVwZEd
	 WE7wroI2SRq2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE9C7CD5BD2
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 04:52:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178003035368.30682.11124679829873755024.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 19abdd9273f07653ae84a536aca06f85ea900f661164aaccc4c5eecf046ab95c
Date: Fri, 29 May 2026 04:52:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780030353
