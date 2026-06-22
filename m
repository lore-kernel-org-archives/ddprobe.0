Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 503FC2AD00
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 05:16:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782105394; cv=none; b=BY/LxJL4TkYEPIOQi8qEgoF/dxsVGwW+bVDai8fjlYMu3EO34+n+0rGvExe7xr3deKckreGjvuWN+opreE5P2dFiT2uoPYz6Zvu5uEmEAqPwSjoftKU23MrmFC8CLA+ZBSWgTOU5pSFdy9zf6yxd3JRMpNnmBxhEAqKEle0Yw/o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782105394; c=relaxed/simple;
	bh=WjOXSfGaxW2sXniG3xByqIA9JLsQ1a42Fcfv91k0mT8=;
	h=To:Subject:From:Message-Id:Date; b=Q28ZL8W4jzU7mmzRj8IN769YArdtWKXOVNUIp+7Q2mdX8k8Jca1JsX4xMJDhNCRAIFZsvVQr8t39SwpUbjyl6t3rsS9jRttGnG4H0UrifMWqhAk7n0pnwg9eQ7PqPXTYOyNTB7oLYy+4hPvYtr9g9a8ueZiOy1+DJdnJR3kEJE4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DSucaMBS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DSucaMBS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFA36C2BCB4
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 05:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782105393;
	bh=WjOXSfGaxW2sXniG3xByqIA9JLsQ1a42Fcfv91k0mT8=;
	h=To:Subject:From:Date:From;
	b=DSucaMBSCgGpssVWfmm3JBQcmiAY1SRyvahAxHluHontP8u2cGLEjK9us9sicQDhV
	 xKYUtPacwYhrpZ8nKGmeNkK/RzOWrq8+jqYF3cOEOnu/4XJTaf7ofNnIiFHOlqi/j0
	 jKlxwGE75yYmrA7qUidPG+vHHfJbLIdgVRMgl0J14BEs4CH9GukAue/s2zE91yi+sC
	 1HF6OUFDR+yrQS5HODLZ1ijYmEXyitZGCDu2lvRCyyuBHCGRH/lQBImofElm/5zZ+z
	 eHz88lwMLapsuGTvgISA+4Bu83BocOCEEJkiINrUEJqO7mr82uZr1rPXOYNx8rSvlE
	 PnJ0L61XMmKAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3E00CDB46B
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 05:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178210539369.31667.3213461146109508185.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dcd12b041e2d35bbf10df326aadc6fdc29236c5cc9ec14f9f07512eb9564f133
Date: Mon, 22 Jun 2026 05:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782105393
