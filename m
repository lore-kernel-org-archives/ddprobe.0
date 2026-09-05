Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D52F408600
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 07:10:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788592237; cv=none; b=L5Tdvw/76jYD7ynut1RIpa+ebe6sRklmDnn3wQzOMnuQZMeM8APIfT5DwqE8691tZsx5LMnW5SHDUx66WFDpQCfSV+hg5YCi9TGM6i8A4Lu5FZj2MYuEoi1uMoBxVVUlFgn0NyCXdmIhNJ3a72DKqqoauEy11Y1QfBZM9kFMi1A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788592237; c=relaxed/simple;
	bh=KuE5mzYs7MD7ITUf6tzVwwggd2fC41zMiQFu3QTqmMw=;
	h=To:Subject:From:Message-Id:Date; b=XuJZxOkgmSYeLchZewkjfR1FlQa4tk5CrDYSBSCD28B9ZqAk17pxyUQ1YTwO8e2rnHwvD8Hsy87MN3CagpbsWkwIj+URynfN09wUXiUAYf7P3hyc83G+ywQNinkQwCKBkdUAUoy/WaI2EyJQ6goTcfb6PXSPZfY8jMOPimL5v4M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ht64rK8k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ht64rK8k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAFB5C2BCB3
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 07:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788592233;
	bh=KuE5mzYs7MD7ITUf6tzVwwggd2fC41zMiQFu3QTqmMw=;
	h=To:Subject:From:Date:From;
	b=Ht64rK8kxgMhx2EKbzyEpDCjsiT1SvwappS/3F2kiTPIQs5n0V4WmBqiL6PdGPgte
	 pxHOsFNJ9uN0DoYPwYTgIMbWtizMNT5fDm4Nj9dRQdgNjPZyVrZCfUnUXpQ8RCfuU/
	 +2blGcHsSEIAhxyA77b/hvwqGrkb8hpSTWcGMcEhIRJe0V01MHhsjts3U2p2nofEcG
	 ktJ+RVCWach9vbEtc6ZkUCLNBcqIbeE+g0eS4QfJDKsI5HfhTFsISleMQ1931B8e62
	 YAFU/SqypcG9VXjfNlZ/R75joeJX7S0wgoaVo9kaNJZObRFxS05W7Iu0ITtn1OHK8g
	 aQXpsalzhQpZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7AA9C624DB
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 07:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178859223371.30957.7199942722473902850.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 56a33d6ea598d0631481891740d202a323e8120f17c1b44f976bfeea064e6b0c
Date: Sat, 05 Sep 2026 07:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788592233
