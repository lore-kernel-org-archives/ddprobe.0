Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E4A1155C87
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 15:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767279834; cv=none; b=LsSOKty2PchT7PK/xaYf1p0EpXJ2CmtUmiDIUkqEdg8ihEnoYzx0QhsN6s930lmmy4sYMgmgypO9vnKQyJQkKsIt3WFHT23QCLlxoYIJKAco5mF+pGjhpBbz+2LlkC11NvRb//2BVZW2URs55lPEjmUa/csN1O9E3cz8rfhK3/Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767279834; c=relaxed/simple;
	bh=JapZWyIUtsM7m1cxhK+75pV6xyzNuaZsIxTKsYsOyDU=;
	h=To:Subject:From:Message-Id:Date; b=mAYNuW3PUUOgY16P9G77Cysj0Yx6GtZRT8EpRuVYC58EFdAy8JdFsRYLDwBnHD2QbBri+Ss663SwGgMuOGNjRVT+kksyQBunG7lsZXjBfSezLup8snR3BiShraO2FI3U472KIhsrdrwPDQtgUqIoMtmbzmsAuJsTyaTrXOR+l9o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oy2elvIO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oy2elvIO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A56C8C19422
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 15:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767279833;
	bh=JapZWyIUtsM7m1cxhK+75pV6xyzNuaZsIxTKsYsOyDU=;
	h=To:Subject:From:Date:From;
	b=oy2elvIOvkNVDV5mTlzRxY2rgQj1uNUR7VQeynx25XduBSFQFJ7Tlv0iylz48J/SI
	 9L3p8C/PSaXDFOlbGswxpXf9/x90C5EpAPIs3bhjuePcFWNB2txIAnkDVXpDeQ76eb
	 +rpIBaMBqrA6/Y/AyQdnEPKW+lJRm+DAb+MjI1lScwM4wKeiMI7i4gLVOdUwv48qLb
	 xqnvnY0PdeHx/f+5X1ghDbmQcrWMLEaZsnAq+YPwRK52mJVmtrzAQQKPUoYQGV+8RT
	 78Fc5sdVxIfMOpu4wIn7SkQqgemwn3cEIqA7cxhKJsAX7SdDGGwioEvDVG5s9txH5S
	 rqUAPB+ji3arA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9553BEEB57C
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 15:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176727983357.17767.15071799699008913025.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec3cc28a3c6bd3859e3adf4bcd9accaea6ef39a973060ad2c046e2a855cd0719
Date: Thu, 01 Jan 2026 15:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767279833
