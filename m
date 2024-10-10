Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0531233CD2
	for <ddprobe@lists.linux.dev>; Thu, 10 Oct 2024 11:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728558954; cv=none; b=EdR2D8INNn03uLYMVGdJFdv4A8Rn/VL23a5oBfAOv73lByVaMwUBr3/CLHiAd7mD49/WSVQNRzg9nGdCNdPUDVVncwm/IeuxnL56W6RcwkquXDRFJKiqK+cEDFiuwipCXpSofrbjYu5zqKs+hZQ1UsNmJ3+Rk8iEbe7M5W5cl/s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728558954; c=relaxed/simple;
	bh=5AtqZlmUUvVIAWySgeNzYZGttLo9dAXTnEWRKfhymWY=;
	h=To:Subject:From:Message-Id:Date; b=mslmbnmefgdA8wqGwYtQwt9sHMFfNrc1qRJhrMMUR4zfZjv2XhsGJiCvLN+uW1rHVpxSWjRd06gfA64pGHcC0RVSD8R2r8C/MhbvwEeyBjp2cvhoj3veK3SLCPvJ7bPlVvTt0zKr5mgBWgau3xsG9SaJKQCWT8hnpb7LmdAogDE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kH5h2b8h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kH5h2b8h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F857C4CECC
	for <ddprobe@lists.linux.dev>; Thu, 10 Oct 2024 11:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728558953;
	bh=5AtqZlmUUvVIAWySgeNzYZGttLo9dAXTnEWRKfhymWY=;
	h=To:Subject:From:Date:From;
	b=kH5h2b8hA+pRn0qpgm+DY9T2WKQA8TwOIKUzdu3+70YPN7usHTOXMb7Dd4MgUMiA4
	 AYgznr619iLPcm4VmkkZd5nLaA9Evfh5Qd4IvbGI35pguBt4kG2Df2OcIwtosmG7Xt
	 jberlhjTMlTNYfjMHClZSaR+K1utggBxDiYaX+RQs+3YwviteXDGFr2YY7YAyF6tn8
	 GPfY3/E1e1dc2uDSA5+hoN4ToYRcBMrFV/1G/oqAKvmUlTMRiG9t/pkPwCHc8ajgpJ
	 kvTG06OFD+p6Kd4A9gmLIPk/9ETzA9cPdsyO9GrivHCQ3cr552FcLyM075XcUuztHJ
	 DvzMNQb3nPMQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 923C9CF11CF
	for <ddprobe@lists.linux.dev>; Thu, 10 Oct 2024 11:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172855895359.21764.3263237645538117942.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1d434c4cd32fb9b3bf26c87b0c1f69483c2483731015d97ee3773e3d5890be5
Date: Thu, 10 Oct 2024 11:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728558953
