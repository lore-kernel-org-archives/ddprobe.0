Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1C2A40F8D3
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 16:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777480054; cv=none; b=KnB3dFvxezTkHUuazSpWjYRnCuN1VB4c8UuE+1gzDxT333+bQkJ4udOxypBGNF2DhDAIrFpGSgwpHFtrZ5DERDRE9y4Wa+CociiJsQ9sq5kGbLNcXT+ELIEVTfQHpR8pNtE9mPrJd5n5T1c2wbYZi7TaFd+0NjMoGAgH/gkCrFk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777480054; c=relaxed/simple;
	bh=o00MEnu5VdV/7zJlPpaOam2Vef7EuWdtq7q9LA1oiIU=;
	h=To:Subject:From:Message-Id:Date; b=K+SLqEXrszse4108Yn+VELAcRAFw9R9ZNfHjH3lUScQpjXLjoXHI+MPP6UyDhjRSeEaeVp1L2+kP40IxIsRIEpX+V4AzbIMsGa4/XHjMrZZL/WC5vIt2ffUFGcEgXYzDGN7+SbyBUjJCvuIJH2dT3Q2seHp7QIMVnQp7tB2A9Jc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HSnCpktH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HSnCpktH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B85CEC19425
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 16:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777480053;
	bh=o00MEnu5VdV/7zJlPpaOam2Vef7EuWdtq7q9LA1oiIU=;
	h=To:Subject:From:Date:From;
	b=HSnCpktHsnm7QRF3iJ9pYA2WqgDylpDcWJjskmO+UL82uit/RdMusMtyzCvBJjmnV
	 gKVySlNTbnfWHl6WPf6KHgp66/XQPQIc7kSrCzUJ6iShzpYNZ2CjvfQyffFQbeAwru
	 TV8M2/aDaojhE1SiASXQvQOs3DpIYvz5dKmqTn/TFEXiXMefDOsei1ZBIE+9los2rZ
	 uN7yPrX0O6fuJbk+Myp36lT6vedqRJAWftg60AZ5pwwGWVdGbGpi35qwH64v80wPTJ
	 U65oq2AfGq0nXu/i9CCbvIEL3uaIa0NhbSK3OAfShoCY67ZKebUPLA9n+5Injx1E+S
	 3frgl9eS804lA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA692FF887E
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 16:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177748005368.17586.981769501536509737.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6df2a6c711dfeca31e05c591a3eccc27f3dd6947a41aaf1a54e5b645947f7541
Date: Wed, 29 Apr 2026 16:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777480053
