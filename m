Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 215282441B8
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 22:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766615034; cv=none; b=T22xPnzhl1DrpablKBAE/61RPnm1+rh7swTbx3sWupHX6Ecf1KOVXmLSreE0hSunCbaSdO1L6Mtfj4GYb+ZqQiiL0xu05CFlVFvJn0W5Yu83/JNadBfRludRsnWwnYG4SPH9u2u4GEQYVp0AB7T5ML2WwJOtbODIBgudO1rvNLY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766615034; c=relaxed/simple;
	bh=Yg5rZqW6meNcwCUloivU7uBgNpl6Yi55h4xyEqQHX5k=;
	h=To:Subject:From:Message-Id:Date; b=rfVnsIog+QK9pxlBhgfA6ovQFzMnQof98L5+kgbxITumHFtfl1iFZfqNKDWsgcLPxdAgT+WIFERg9NBG9PH1SSTpQzJwYBetZtgznChEMB4wDGJ02qETSG+I+3IEfPc1h9sQSLYhDwd9IDAkT0WkbmZdyT4xyAfz//OU9EtVVmk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eCdc23BV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eCdc23BV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6768C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 22:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766615033;
	bh=Yg5rZqW6meNcwCUloivU7uBgNpl6Yi55h4xyEqQHX5k=;
	h=To:Subject:From:Date:From;
	b=eCdc23BVZh3yB3Kl02Uz4wMkg5K9ucCVKSZz7/PRZPEBPvKqrEZh/ogOMgUxfI0jl
	 vrAoKkIp6YVcv54KyyB6ZxpFLfb+YPo1DMXxk1ecKlaJKcmn74O18WTFXjIAw9ecJP
	 CQfpGi1fU94BY5VjWHeZ5eoDhrWmTh0al5+lehX9OWgCgWhjS4zyCFxP19CcaPFZkc
	 S2DI73FiLEctSXb/oo3b8VdqGBaRyomdwW3G2h7NsJyEVTpJcA4DyVsjPaiwCBGyy3
	 roVwMvKFA+1ZHb+FoG/nyXqrOLPjQLukcKfXxQBp9Gaa6fmvJfXl/+yVEcrsrlHZ0U
	 m2VLmqNKBGhGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 937A2E78499
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 22:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176661503358.24425.10924083746424175128.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 89904b3c893a25e47062cc7134e2f6bcac1ae1d75b6792aba6ff5d86e445962c
Date: Wed, 24 Dec 2025 22:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766615033
