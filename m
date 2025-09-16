Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13FE6328567
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 16:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758038994; cv=none; b=l9OoPM2FdLsF2821CPSJY5rBNTjZkPWdT8ma33LRwEtoQE8rRtpOZbNWW3bx3tRFbI8PW9O/68TbDGlwMtV5/k0+XCQKn8oNJWUxUr93Dsdi64Ueexx5tsFhN+ev1uiQ9jKl+K1nekHQTMy4hnojXyvV/nVc3N1YClKlX2CrkWQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758038994; c=relaxed/simple;
	bh=gupYbma/Z9VuXHwp/VY43RbdguZIw3lVt/qAW33fbag=;
	h=To:Subject:From:Message-Id:Date; b=IXTu7nkUs+atZfuAEmmrF5Jcm85jnsy+4GHNmDlsrmpyRJcWuilfjwgv+gmv6WzAgNNiYrhGxBZaNV4oW1CB8pcv8XVvy8xY/D0JxFbVDbfZtTHuGWSYJ5iv8Gpa/PR9lNrUbiyDgHf9o8/x9lefJI6bGpT1VWMVNlK+oOIcoW0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OdtOtDEj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OdtOtDEj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EB9EC4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 16:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758038993;
	bh=gupYbma/Z9VuXHwp/VY43RbdguZIw3lVt/qAW33fbag=;
	h=To:Subject:From:Date:From;
	b=OdtOtDEjoCqBevv5ToGxfrGdV3S317iYxdxlbkDQsL6O72mtuP2El/6Ulf0HZAYBF
	 kEBJePjKrE7iIx4ePoxujOp5nQiItEItcODt0MxbHex4OdltEpV38QyGMs10MuERMD
	 wTJ9UPRf3TU6WyamBXVv2fYINpId+Lbs2Xqe0eXWv0D+Kjjzi8rMqM3TmDiBFAqFgS
	 88pBWPkXPHnTbDFm+fCaP5gTubD72NkLpzJN91FLbtPwBiV1z1hTu+ANHuW91guTGX
	 XGHIXjLsx2J85vbmxmcQVgHl9QC+41j/O0uGC2jbMHf4/0ATh71nSlS65k/6NpBkLV
	 2gpurPiJBqDlw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F578CAC599
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 16:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175803899357.19481.17644557875840556703.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6dd85fcbab2d1fc1cd3b8efd60aab99cc0ea093ccac00989327f2dd0f7920b1
Date: Tue, 16 Sep 2025 16:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758038993
