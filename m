Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9D9AF4A8FF9
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 14:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788445234; cv=none; b=kI6mwYUB1R1fpKSFRqCcl2D6QiKEjtNsx4ItH1/9n4ZcCYL0bQMLODJ9ykXo7FDENc9jyGHRv5X5z+qxrkgEi0PfHX8HWsB4evqyfbeCPzvfMbEeaGQdNZj81B04PBqb27IUx+U6JVqTI+LGccr30cV4cnNt00HNBzCmH4rMb4w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788445234; c=relaxed/simple;
	bh=THdAi1/1p78Y4H+Fy/jnecJqoGDQQNbItWvxO4zPOn0=;
	h=To:Subject:From:Message-Id:Date; b=pFdF6DO3aRJhia5sbeiwYD5xtrlHN9Be2kUZb/auWosKTYTSozYvb6xwvlHVdOGj8o1agKJ1YxzoQcw3fJPXeO+GmPixR8XT/jgw6DLibqxrayHN8OxRhJ+FuYK5KUjl1Gr6ByYcdtlHvOjIgMKXq3bOtrTYhHlLZUK4g0M3vLQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MnA23LNs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MnA23LNs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5BD1C2BCF7
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 14:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788445233;
	bh=THdAi1/1p78Y4H+Fy/jnecJqoGDQQNbItWvxO4zPOn0=;
	h=To:Subject:From:Date:From;
	b=MnA23LNs29PkHL3NX9bLVPwFx6+6D6G9WQ5QRG6OfKZoYdJ//MRvEPiNOd+Hodjma
	 OXhOpjA1PL7YwBW/0ImjC62UzF6A/B8VK+t3S0TMsHn2S1mQ4Ma6Ne/Ekfo6Kaphla
	 dKNy9ordWUkA00OfsIatcHMYSYlEIIO3we87abB2WNtL/sT3iEExpumWEnZjzf4byS
	 ZicLfnOLnZWtDynzY8WP43h9yGakRj9rkqPWzSqBx6AkY6eLYw1Y2GvSgyRmBilw96
	 7pmuZWTTXn1i1xAyqTdbi0E8NJd8bG+UT3ekisE8+UCWy2o32QPW2IQJbSYeDkuBSO
	 JCunQUsnmTB4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1251C61DD3
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 14:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178844523371.9747.5589979225534671509.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8fc07e283c52579654c3a53a58b80f5b53b78993ab0c63482db5c7447e8ec506
Date: Thu, 03 Sep 2026 14:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788445233
