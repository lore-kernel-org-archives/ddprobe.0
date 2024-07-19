Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CEE711362
	for <ddprobe@lists.linux.dev>; Fri, 19 Jul 2024 22:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721426753; cv=none; b=TKzvGfV59uzWAQMCBGmRAESnA0yM+hdZODFEfqOQceKMFljzc60hJpImU9gbe7cBkmcskeeQoz+YO8Dju1S/mg127GgrmMjeSegs/tolP5KC2k0byMaNGc8vJw1qJLxDjDD0bQiyuGnPjaLxkbZF3x85RHHbR8QVZAkefdwyAtU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721426753; c=relaxed/simple;
	bh=JuQLNoUkrA3lw9dnwc5n8qX86PtdxigsL0QY0QC7v+I=;
	h=To:Subject:From:Message-Id:Date; b=LQhU7MjBmSxA/A91npYl2nHOsiFRRsqvSGANZSoHz04tQ76jAcRol3zQVr3xRscPwogIh6dFto5tEq+0sTpYsYxD6yU8FqSgw3f/taM7swf7grtCsqNdDT1uXBoD+uoZwU48/MYXdVY5hBYzQXxMwfd5sbTcv8ebc65ydPTdeCA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fWkg4o3I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fWkg4o3I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF87AC32782
	for <ddprobe@lists.linux.dev>; Fri, 19 Jul 2024 22:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721426753;
	bh=JuQLNoUkrA3lw9dnwc5n8qX86PtdxigsL0QY0QC7v+I=;
	h=To:Subject:From:Date:From;
	b=fWkg4o3I7h6GDn0re87t7uwV0sftSF+hQu8kIqLA9feW63IO5m8LmDFZvWyEWHkzK
	 0mEB2ie1fTd15sjQn+XwV7zr/ljskLwp35PCuId/4yZS5LbqC+cBRIqkS6UI17EcGs
	 XKswz26pTxvEyCpubjuWFe09tFsi+8FF08LhFZKwtlXlYN3sOfF+WHG8K/pELs8mHp
	 pfVkdILR3qLUAPeBNJCzDuEX0mstSvfyLXpcBLsw5q8nlZ+fyOqcqNqqIxmDMozGOS
	 bTbmULCCBTfoLR8Uzg5oiSKeuzi+lRtx+KoMnX9HRbs2apFluxPFMaAowAan4cMOSY
	 thQsFgMJrWmsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AA43C3DA5D
	for <ddprobe@lists.linux.dev>; Fri, 19 Jul 2024 22:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172142675362.4429.481917603573116356.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d79aa822cc3485f5fef2179fb92a00734bcfa4a613051263327d71825562e2a
Date: Fri, 19 Jul 2024 22:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721426753
