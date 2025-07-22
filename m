Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CD1878F32
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 05:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753161595; cv=none; b=tTYlGxSKpUnxmdIXr2NiFrPHGf3yY2tofLwatPZQq1QoN1rDTyweyt0MhjGhR75kDtnvw+yTzwGBgKXlW+rbsMmjYUaYnwbYrCAVEO1zHCqCqjUtpQ3bBt/92xlS7srGUFQhXgIgxpgveMzksowizR7Z5vJe7sYD00siRcGn/nc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753161595; c=relaxed/simple;
	bh=2Va+kz/2k66o66iui97OK9bPz+TBua3PCv/YMwhZEQQ=;
	h=To:Subject:From:Message-Id:Date; b=g0Mbxsj+ciCyldTlmMWZr1ey2q5Jq9Y8ci0y01ZaRF+eyjM2EnmQoiOkrOMoNYvkztKcnQsaVPS28yjx+IFtgC+DmPOt++6Yuk5nLweOC6iGiBdjNyPS8cfYVLjF//7vNm4qrW5zdW37bndxeDQKS/27adOf9JTRadLPn4gBF4Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PItbnjKh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PItbnjKh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EF63C4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 05:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753161593;
	bh=2Va+kz/2k66o66iui97OK9bPz+TBua3PCv/YMwhZEQQ=;
	h=To:Subject:From:Date:From;
	b=PItbnjKhtkozldTW7YxnAb3YfUAWu2uxijB0gMdnwaZw4fbc7zeRMR0rn0GtF1H5Z
	 lnjsouyqz4qiKR0sJncEfzbsLE39MfJEDINHGaCQDbI/o+IWFukzyzTKQSmY4EzQpu
	 irIjePRjv/d4w41/1ES48tVXjBR+0fI8kkOQVdK99/Puw+AHDsgAexdjyTK5lnPiRz
	 G3xPKIzl55TJz7lDstqAdQwKfVchpdveGYusfM9ioOILjL1Pf8mJb2eobYKmVCHv31
	 HFeRWaXyPRtr95S0ZWG9BpLLz/s5i2RyRC/3AjI/UGkq1djtXWeMuOrcLT8R0oGaDI
	 PF/dg5AptPf3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F4F0C83F1A
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 05:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175316159357.3236.7402396576605381395.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c82402a009e010eea5eaf32aff45e8c463c3a8b70a95340f0d52241870faf630
Date: Tue, 22 Jul 2025 05:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753161593
