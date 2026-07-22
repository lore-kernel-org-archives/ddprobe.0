Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EA36415F09
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 07:28:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784705315; cv=none; b=b3R/CFiwQNuWTbY2kW6z2E40hDqlrUgS1f/MjZPJq62jiEXOKS3Rsw1kCDEk+x0h95L3zFhlOQKNM23bo6/fFF7Awlsw3fz6Xp1kYuX2K7JDb853GfGEo9KI/eHLQcY76wQcQXe9dbLx/x5yyVM+95yatQDX6dKdwqEoysv7dLI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784705315; c=relaxed/simple;
	bh=DvsThqA0U3Wu6DTZAUyCbXJnIgCyXZLuDzqFOtdXMhM=;
	h=To:Subject:From:Message-Id:Date; b=u8sP0x8++ur64v0x0B4mWE7J+QP3OktIWB/fB0g6sHT8nPTv48PwE311biE3SGcq69MZ+gOsObjluFOdlvQYrRVu8KDfNJf3R+sWSzYtWWbjNu/mtl9+CRLvHXGZyl6PiTXY6UVUeoT4S1TwIjE0qohtrpTeBKmBg9j7Zp33/jA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CSuBUeF/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CSuBUeF/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB9E2C19425
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 07:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784705313;
	bh=DvsThqA0U3Wu6DTZAUyCbXJnIgCyXZLuDzqFOtdXMhM=;
	h=To:Subject:From:Date:From;
	b=CSuBUeF/NfA+hGdVYrfvuRHIoyOk3G12Mfc2zFpY4HrtA5g0PyS65SKqSICH5EjeN
	 N3Zf+w4QgsbfeoBKsAFqzvQTWJvCPOuyAeZHmNIG6vSA0w88Y/RTdk5aVAYqw8aXZE
	 7t8inoK5Mxk7T3C/9hkZB7X+T4wwUG662Z8po9Sy1+gh8N1dVj6UBgTlL0BvQNVvvd
	 LRG5Fi3iSk50MLV0mu2Aj0RJrPTBEy3G/IQRZ1cB2R7WQTucoo7MrBx7ANlXk+rt1x
	 3EN2poXOynLCRSvD19mkPToWTCoenV8tl59C8E0PVHzx3LPKN3Zm1KWYGsnNRpnBhe
	 HzGQfAEaeQjRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA072C4452D
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 07:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178470531368.7327.11049750123509080717.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 28ec2f91717361dfec766ce727858216209889e78a91a20e4fea7f45ca66e837
Date: Wed, 22 Jul 2026 07:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784705313
