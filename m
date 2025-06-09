Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 127D0258CD3
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 03:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749439794; cv=none; b=eE20+HpoqsLHtQuHquanBDpyJrSZGL2aWu1codFCT9KLa/xBf5rwS184Ab2vN4yxzGSZDYJ5ZHRcBeEMvrvXEqkx7pSB/uyBdyeB3M1glfAm3vadj/+fpkaIfCyEFZRbvWAqelGmySRxYN6BdG6Vk43BrbEkg2od+jvFwkLYUfY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749439794; c=relaxed/simple;
	bh=RhlOZayvGhT2r1kmz933FRZEQfLZz1j4RAMTxluse00=;
	h=To:Subject:From:Message-Id:Date; b=eQvq3xCw3sTkHTMFEftFLksCvA/hhH+iMDuAt0k1j8WLGcjNinvxxQN7B1kk73FhrIekuR3EhLpR8N0hg1q+ty6y4wilicOCxT7reppPDWVdiM7h7WxrQWMPffG3HqcRzFjSlRuJFN829Gkyd/IYZLgxTjpWkrPm2lS1OI2jvck=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a0NwYzXG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a0NwYzXG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3AF0C4CEEE
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 03:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749439793;
	bh=RhlOZayvGhT2r1kmz933FRZEQfLZz1j4RAMTxluse00=;
	h=To:Subject:From:Date:From;
	b=a0NwYzXGJQRx5bNugLbt0y00kf2R1Af24Yq3xhrR9CjTCLChnflVtomoQwzpSIxW3
	 70yug7xOsXDc/ormA8xvV8uOtUtTuM61zmF0Ugtvffm72t+YgKcy8PIgR4OYJdomMk
	 4hPVBFvf/Rr7oMQhTnLAtyGDHbZeGEJPoyz66uQ1a2XVSEZEdqS8g/eu/eul/1eCU2
	 e7DL0mxc0QGsxExEs+j3+uz0X8AFtVZzuwZUYyZ902XsmW+t6Jn7Khh8ypjE97NBfU
	 dcwuYVvK5byCM/FWylHG/7S+oyHEJHA2iBhRRXvnCApvy9ylm6mRCvPKq85PFVZjzO
	 oK2OK22G1JtOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90CF7C5AD49
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 03:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174943979357.17694.9757349180260563608.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7ae45118ad558a409e17934a84cf39758d097f84486e2df1f52534bf58e4774
Date: Mon, 09 Jun 2025 03:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749439793
