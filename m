Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19EE3DDA9
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 01:49:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753408195; cv=none; b=aHmTLcm/O7NfdRGE9nHrzTTo8dQ6g67YHhGPubYnOde4pAF63r1o7ItTpVQEMClYVo19enaSPK+oHRMh+2Ftcb0mawI8DL6khxfJBDkjEkbb0C2Mro1h2vFf1OF78CF1j7iggFtkkIajGTiTO40HSfQdpa4lKzvVfSnBOutuiM4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753408195; c=relaxed/simple;
	bh=+3H/5kA/xFT7urH8yLiVJAXKymGGeDTVgOHq+IAnD+E=;
	h=To:Subject:From:Message-Id:Date; b=W5rdu6DXTEZ/8Tyvo2OHHtVOC6mmondmgp4tP48lU8LYnUe+KcY9jBRIE2dQv/6B5oBnDcBLvDNAc6TsTTp6J6Dp7AFOydtevSJ0GKE8SX6ijzSoQ6mS48hb+i6t1H0RYwR/fynzwwnGGc0VL7ml2tbHEJ8IH52FlGgNDusAy8s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W/SwfR/E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W/SwfR/E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E973C4CEF5
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 01:49:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753408194;
	bh=+3H/5kA/xFT7urH8yLiVJAXKymGGeDTVgOHq+IAnD+E=;
	h=To:Subject:From:Date:From;
	b=W/SwfR/EEOvhMnIwjbeqg4w8nP6Gmf5hwtxcfse8XpSyZzAypMie3GSdNJjuGBslJ
	 frIl+9X9j03yD5wJ9qsIH/oH6njKZ1Ls8wlnTmL91p+rh0JB1beDEY0VhwkVl2hFAS
	 1K+1Imx+lrpbKs7Y8Ty+sXSAaEgHiirt89ZZTxYDEr2NSYDgaBxzNNLNmoc2d6lAeL
	 no5C3FTVrahL1lx2Y8o4sBMX5Z/4PFlG0IY5SERXWyVgaepxopvtq8xrOB2C/8rQR0
	 quPKjoRAdUJdDhH8wM7jw04wHm9nk+ax9q/UjIFF/Ic33ZmtYsK//c3b8YxOy8TzVT
	 H8btbucOI8PQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F96DC83F26
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 01:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175340819358.1387.7786483971717503121.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8714b65ec389d1df350b3abf608cc14ee5b35e8cbac44aab4ac472eb45b3f0fb
Date: Fri, 25 Jul 2025 01:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753408193
