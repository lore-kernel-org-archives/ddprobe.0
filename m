Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E3753C09FC
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 07:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782719314; cv=none; b=npsvimghph6UdLIqohtdSzGCzcScrGyON9dZqgtrzwCiWP4Yd51kX8TOIneq9kiSWM1m/xq+FxNQ7TMjV6kpKRU1YPMqlnB/ZJ3gxhCAT9ViCjWFsXqF/rHZXBACAMcdCfsxbZrxr/NO9P4D+lbMF4R4ZsYBqJxla0VMHIeO01c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782719314; c=relaxed/simple;
	bh=laOtyAZSvT046Xr07y89vE/xBna3K7jImqJoG061f0w=;
	h=To:Subject:From:Message-Id:Date; b=kl0S8nDpbcWdC566wT/9BtAwGbUnC9EZMgKAJJcVuq2lDv5Cx023gfcaFUHFLVbj5MLc0spjfmupmQ/crvD36ieDpUVcA94oVYYMkgLSfb5AHFKIAIa9q60ecotKpQ8qXDjfe3Cz+KoI15uX6NeaBYIkB9ugQ2O6qu75kIa9uQ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I9PEaD8x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I9PEaD8x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5C0FC2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 07:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782719313;
	bh=laOtyAZSvT046Xr07y89vE/xBna3K7jImqJoG061f0w=;
	h=To:Subject:From:Date:From;
	b=I9PEaD8xHFWdwZnE5m37V4DU7tzJWNF3vrEtaPd/4VGiVj/xFMIn0E4a6RXHLjE4t
	 NevoilTYpktSECkMcICUrK52qa+krByLANFrGcSwn/kf7f88zVLR2flWPuiY0jf5E7
	 k/9sp1JdmQvoVuxMbeGompOqUGxy4VkrKVX6aG6QikEWFV+O4xX4LqsOhze22PJv0K
	 GagdK/i3fSiF/gf/TBQw7THN7R+4Ba6LisyIvch7ePpxSoc3L/nk4nxFbX8A34uXQI
	 dUVFJHit006rUN+iAtys44/5j5ymLNd07DaMQ/E2DzdmZzmGcsQmyroAtH9APoezjD
	 xSnxDmFD2oS9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB6CBC43602
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 07:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178271931369.14394.15090411596303403019.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7cbd7b8ea533b6becdf4a7b67dd6f10240991a462ec387f7c85861ef7479e656
Date: Mon, 29 Jun 2026 07:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782719313
