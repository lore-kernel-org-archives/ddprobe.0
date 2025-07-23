Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22DE22F4A05
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 15:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753283994; cv=none; b=FdJLscJnJBjk9Vwljm0OYebwoEW1RSBeM3UCRRhs4FKJkEF30/CevacVaskYYPs/8MNZJOUfbPCJ23p540P1wMRrGjnzTI1V2kqFci+zTZQ9oxS5adfOGdzEBMHMM+geAFHBWFu/uu+rCgDKiOOyTfG+UIVNDr2FKE/lWLxBXss=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753283994; c=relaxed/simple;
	bh=YdQ4hYUFF+qGIX+6HgEvEKmbp6uiXEnnADMPFk8SEkw=;
	h=To:Subject:From:Message-Id:Date; b=Y8tlegNrWVmZXgbFrqVyt0uBHqsDCkneOy6sCrEEeAPPNnBc2Js18lqwPWkKJ5Ly6exz2y0Icen8JK7pAyuqHN+TbrGa8fZhS3JoQNJusFg17xdLIRsxLtNK3XIBi91OSYiJAiEPoTeIZwNVGSF1YzA0DB6DazeK3wMRz54QgCU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SJHubXMb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SJHubXMb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9ECBDC4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 15:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753283993;
	bh=YdQ4hYUFF+qGIX+6HgEvEKmbp6uiXEnnADMPFk8SEkw=;
	h=To:Subject:From:Date:From;
	b=SJHubXMbV4p87Y8aKj8m8YiVQE9x+clN4oyc7vvfMMnXes2quxAcnl2k4XMUa5nyT
	 WotegUD7UGnbGciUoJIH50Ok35Owe4l3blVkXstAMVAGpVGR1RyuWvz+B3A4KsuVgM
	 x2oetaDbkfWjghNy/QUr81Vll5I/0OoJZxL8CdVPVN41pXnRWaL2J0IM0F2b7K5NxR
	 r4BJ3AJ8jPMLJSBM08pk06H5GNJWpoJCnNFcz4gAWcSWCgPX+EF2X3yQKLFBaECXmc
	 Vqau6b8+iBLCX0PXy6nFrDgXG3vLH8tBVVp/BXlLBqNtuFfZtWqqIwY9ZC6qXLJTwX
	 pzT7KJGBhgXLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD46C83F17
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 15:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175328399358.6335.3458423326571926109.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e8cc11373277c094788841d37b87111949ebe6cbbf0e21b393388886e0a6a7a
Date: Wed, 23 Jul 2025 15:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753283993
