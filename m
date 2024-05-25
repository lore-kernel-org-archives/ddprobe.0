Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6FD51BE6F
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 07:34:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716622463; cv=none; b=LGAWeNwmAr3BaqlgdoTvVUTTR6jlIWP7pCXd4Ivt9ej7lv+BKGX2aJqX4Sr21xztTB4drPbe7b3O8kLnwWUPD8blu1s5zh1WL/kpXRTmh09/pYwHRy9D6yPtWDP8cH8LY+9PKu6YV+VqUm3xR5fH/i5u952z8G86aXLIxxWhjvs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716622463; c=relaxed/simple;
	bh=d2goIqEpRShcpRhaGKeNSyKRZhl68ZV7XrfnJvYDkMg=;
	h=To:Subject:From:Message-Id:Date; b=WE9R22rDAa5GMn6nTxU0NJlAH4u5cIK/L+xw9r3nEptu1qzq28Y/XfVCVSrpuCNzojzGUZ0H87Aw7Z6IFAqBGoZrunsprhCJj+7pS53ThpzwPoQ6Flwu0dQ5DDWkx0ejjngRdKbe1xyN57aqoA7bhamnyiQa5oTJvNGpP121gD8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=omtGrTbC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="omtGrTbC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0704C3277B
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 07:34:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716622462;
	bh=d2goIqEpRShcpRhaGKeNSyKRZhl68ZV7XrfnJvYDkMg=;
	h=To:Subject:From:Date:From;
	b=omtGrTbCsMzGyiQj5nkorpVASt1qUea8H0GVJm1th7waIdg9jrODqxmBfYRkHX0dd
	 jUTgcvCcZGJ8y3SP1reAONCoalzCJE67gCx8OVACfA3Ilf2TdkkG3/xONSdRkHO5UJ
	 Men8x0voOrrl7PdhqnekqLWgB34IROo9249FAICZn6BD1IBWo9AJQfouIu9zvPm3QO
	 EgivJ4nlIYvBhI2icNcCgj9QOi0O2OXCTxbaNverJ0Pin+UWA2rkZMNuVkTAoovN/z
	 T9C27XowHMXAZkX+mGkekEvA74pfe48W07Ce5Q7yDu/SXJBDMNjgE6kLHX1Hq/a4Dp
	 ODBgexF/LcVbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C80D5C25B78
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 07:34:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171662246277.20471.17467517603281297508.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1efeb02c1dfa026d15e4f2fe343c3ce4e25e07ef909674e8a91d39b388b28d41
Date: Sat, 25 May 2024 07:34:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716622462
