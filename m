Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10F9545C10
	for <ddprobe@lists.linux.dev>; Thu, 11 Apr 2024 22:49:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712875763; cv=none; b=kpXmcgegBdC4ONAuHypDaTD/J5+jqVWJufBqQmRnh0In2/dt1Xz8wa4Z2PEkOn4/cQ9YMwaozIg1nR10YdcSFkhmHpEyDqHytkwYbYlOnuoBTeo89M7CWuJyYIdU/eCVsLyU0lO9Is6UBMvoo5ZX2d1eat+m0pvCQi+oA1hxg1Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712875763; c=relaxed/simple;
	bh=HdAYCNtdyCgy4/959BOYaS48/lF2TjTqc89O0D+gW2o=;
	h=To:Subject:From:Message-Id:Date; b=VZ6k1yzCE9j2IVO4qvqAi4W/0zHm4Z9jRYH1fQc0TRpOv2J30p7ZoRcAh6IEXQ8ReWtHZlYqPmdoKn5+570gJ5AIJ5lWYsZ3ajIVAEkkztpwjH9dQ1utaBuoIm7Kh8fsPeMvJusLaEJZzAePu+BPBTtelKlNQji29/cogtLhnq0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ndRd7I0E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ndRd7I0E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2A16C072AA
	for <ddprobe@lists.linux.dev>; Thu, 11 Apr 2024 22:49:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712875762;
	bh=HdAYCNtdyCgy4/959BOYaS48/lF2TjTqc89O0D+gW2o=;
	h=To:Subject:From:Date:From;
	b=ndRd7I0ETvNc2BBZ4EIyHOv+NEXYvexCTvPnIB6UuJbW8cUBNdytGb+Rg2B5aTKKx
	 F6bAwcEyKVVwPiF2sw9lUkob6ktpmyv0LNBEcfIzxp72PGc3RsdCFaoErWscaPl3nS
	 gnV4tjvs0IDZolRLxQC8rjVsleb7zsSJp1SxoueRFJJk3yQIoRNH3D9aXQwIespzZe
	 gECgX2cPGuF2FSLg+opvlmALLZH2v2o+8jYp9F1azzefc1W/G/i0lL1qbiwAwrUgmF
	 M8c+gbmL7l7wNTG90AiohF9bI15/P6mpVrdtv7hvz4cdRAIDei6ON/y0V8glOI9NHR
	 OZNy+L0wEz3LA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFAB2C4345F
	for <ddprobe@lists.linux.dev>; Thu, 11 Apr 2024 22:49:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171287576275.11792.16348304145836736815.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9591ab68a9b126c1b5fd5062136a43eb68e2f0cb6afdac88080d79084b9bcf0d
Date: Thu, 11 Apr 2024 22:49:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712875762
