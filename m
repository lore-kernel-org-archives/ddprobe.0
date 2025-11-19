Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8929E2EB843
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 07:51:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763538714; cv=none; b=RGojIRVEaqcLXUz8x5tKE+PFXTxl6S0P4ioq5w/RZNgTcPEzu3bJ/u8exWXOw1fXQo81rBEfBeZ7M5fQ36YrZ6Fi6Vm6ECKjUz97pbjGXsRaLFE2cYVZ6AKHChTGBP+IXw3beYNj5AOKWW9FbHvUKOcEaT0eJ2FNcNjg/TE56yc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763538714; c=relaxed/simple;
	bh=rFjAzajzkLkEHBrshPVRhw+HUwwdQwZyLbegSRPjWps=;
	h=To:Subject:From:Message-Id:Date; b=bEXqiOR71KTcHlJ+TWUNuHHbGO4yGPoPh20DMC8+cWiV6/ia/e2ofreLW/2eVB1Q7NGJmctIBgKxBKyitnY4w7yfCoMVmaXR5vSM8KC8eOQN7YyWWjFdi+BiMU8j9JVCru4XXUqPffFl7c3mLjHhlzC5pUXtl3kYzMVBZ+1zoUI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fNpUf6lW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fNpUf6lW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE060C19424
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 07:51:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763538713;
	bh=rFjAzajzkLkEHBrshPVRhw+HUwwdQwZyLbegSRPjWps=;
	h=To:Subject:From:Date:From;
	b=fNpUf6lW96+bPK6UN77RDq6lZzGEoAzQjUDV4jNJaZZs8cTl+Zg6vrpvEzcdDX3Ch
	 PUxHYVY4KFKFZ+Mgz9PWn/Rkg8BRk9MxvZ/8Q79DMclGtC738E+cGAtpeFeIPmgNec
	 ud/HPDC5iTbYEaP1PS1ZGeiwRYhesk5tKF9FOPVco+uX91MVyi0YwhMifho9tx6QHW
	 4e/iZ7tE+uRYAqTSc5zLddUWpY1QxFi6Ir2DU6fcLf/qsByt1/CImP8ry51Zync9dx
	 w8QItCn3SBeoUNdAbWAU0QiXejTXRON7MxMLKJWp1R7jy89ly5KT01CY2v47x5pfAP
	 BNjL8YNg2uldQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95F30CF258E
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 07:51:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176353871360.5401.2172305191132219059.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d178b75ec174e0b78cb0d364f30265bc1cbb602bf65f1c746049734d7711f63
Date: Wed, 19 Nov 2025 07:51:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763538713
