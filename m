Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D12A18B0A
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 03:08:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782616114; cv=none; b=qSqLT2KlGYKSHgGwDSW9HR9otL7/Mwe0/gksODmP7ngUXetJAUGVMsN9L5qrFZo5EYRXpsRZ8VMhMPNnOZBHFMGaFj5cm2Qbz7mCX8+vl+R1ErWhIHFuMRLa46pCr05SKiA3saB5tA8DpGAdKpD0kCEIIOtaGDviFQYRAdMpE9k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782616114; c=relaxed/simple;
	bh=CANBwzvbzYxOZaA2txqCmuxFvyM1+W6lFGV/gyZTms4=;
	h=To:Subject:From:Message-Id:Date; b=C9jdpWUSfzo8P2Sfn0GSnndhpryhCy36gT8ngg3FykEsUAQgOWGZSGfprnwQJcIzhtD/QUH9kq7vx/kWWV3fRz8nMyG63fd8YEJS23ZE3hwcbWFIpQX9pjVe1Tjvx0Am3GE00VG/pyWBmaoTn9d3g1TgWjubK+IZpCcrSSojUeo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=THBAtM+w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="THBAtM+w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8AF5C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 03:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782616113;
	bh=CANBwzvbzYxOZaA2txqCmuxFvyM1+W6lFGV/gyZTms4=;
	h=To:Subject:From:Date:From;
	b=THBAtM+wljcaMAlZUxHQ3olzPVyvkVqGTAAtVSBzU31qQuRITY/iYmNkRQy78xKKN
	 1yjCyTR3c7iu7CEwGQqbeMYOlaumghc6dIF9XvVDnzWKGZi/xbbgg9rWJlH+RCyr2Z
	 chhP8jWmhtCFShMyyE651oLtYzk+FhF6d1+1X26hUiPAZGdaB6V15KDlVUo1efdye2
	 Cfhph1mKduOSsCwzKlhlRAxNw+wSp/3SB27JMCEo/Laf+FivbdzVDPghuMdxzN7OBv
	 lct9PcLMbz95mdg1bFSRiy7rqvLpz4vUKKEmZjtSDy6sNNzB1iGDqBHwn0Mv/OckR+
	 vuKV7Kmo/BsTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8C8CC43458
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 03:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178261611368.32574.9506462688935958867.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f810589e181ba1f0999c27a7ab6aee5441df7c842d76b33f7889fdfb906328a
Date: Sun, 28 Jun 2026 03:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782616113
