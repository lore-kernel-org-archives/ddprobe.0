Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AFC1748D
	for <ddprobe@lists.linux.dev>; Sun, 22 Dec 2024 20:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734897954; cv=none; b=e8flZFxmLMkAQZddwCYsS0gRcS2OIoxF4kHRKPuccILeTKYqsON/mN02SXRFxT/RrMvUUeJNuUBjyUXemI8QBl6eQmqrYSUPGzDBpUpC+fQYwPOlN5sKLv05mRfZpHUTTNw11yFV0+pPNJENZfcZvFrzZQW2N+HeHni7b80lZlA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734897954; c=relaxed/simple;
	bh=bLk5LUm2VuolR8ejlP3SUP2pfKGRJ8Bkl/KEzMJnRmA=;
	h=To:Subject:From:Message-Id:Date; b=G2Yc0WOwFunYLIgIpwkCdVAAQnLsCux0ebVlZ4GzrbV1m6H0F6u883utg23j9xTrqH3M11MEVCH6gMVzjoXnLA/lJS4/fzcyJYWco8MKdM/LsMho0MkubWPnVPtIUvm3zNgNvQ8LtM6PyPk2DpsMQFKYJRyjGaDoMC8CThD8kOU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gjSfWzML; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gjSfWzML"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7423C4CECD
	for <ddprobe@lists.linux.dev>; Sun, 22 Dec 2024 20:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734897953;
	bh=bLk5LUm2VuolR8ejlP3SUP2pfKGRJ8Bkl/KEzMJnRmA=;
	h=To:Subject:From:Date:From;
	b=gjSfWzMLSg8nEkoS74iAZ0LnDUDUsu+Y1VSdFUnoQQbg0vpM8p+lirXKfGIrUWdS0
	 elxVHVL2CRS3DmsfkWgjIF8TJeFYVOXNRzibFVIxJuLbj2+hWSQwgpcddhQ83O/lcf
	 RHaP1PERj75RN/uS/DMsWJlJkiKtCbMim+y7RrO/B+XkZQTjYUVd27h7/jDOKsdrju
	 189Ux93xcf0ea+8PY4SSwu2M0O2QFZSbeIXGZDiE4+I7XbeQ6ExuNqABYyHwJ43eOh
	 VN7xx4k9gRC0z8Y6nga8Kiv1PZsxiCWuibmbbqigy0xYWQw15dJi6JXJ2HBHgU6Omb
	 +het2wYvChzJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94424E77188
	for <ddprobe@lists.linux.dev>; Sun, 22 Dec 2024 20:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173489795358.2240.404953663172622895.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 48d35118501934c1ef103d1962ecf2315e7f5140e8dea5922ad2c7c95ae74456
Date: Sun, 22 Dec 2024 20:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734897953
