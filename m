Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42D6A450F2
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 03:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787801434; cv=none; b=pPNVVLBfOFARxDpO9XGA6d1/Bd6egrjfy7mdJs4J+K3loU2xSLyyUr8qchJ9V1hobzTvUxglKo8nOSc5MXr1/p7imaSLHBtCptRczANbS/hXQt6k931ZgPk0Ado1zCq8f02EaJoJ1R7QjsisFoT6eoMXp/+AD00wSNp/kTjhOZM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787801434; c=relaxed/simple;
	bh=tIDlALPRmsAg+yb5kDFdoAY5zOg2uU1tTLk2yrQ0MXE=;
	h=To:Subject:From:Message-Id:Date; b=JQ7rqoIqSdCA2USaSL3TQGFU65WSeIE4Y2XMBS0RLUJ5DkRJLIcrKbhDe+pwwgYbo6A4TMugjV1dJHjA7rWOSqIb7vBluMXLi+7z9PHzY7vFvlaZXEjAYXHk0AA2cXspaBY1zDwkX1P2v82lsJeGazBuBdF0XEAUtfEHwod8b/U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TYOEQNdH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TYOEQNdH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD261C2BCB9
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 03:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787801433;
	bh=tIDlALPRmsAg+yb5kDFdoAY5zOg2uU1tTLk2yrQ0MXE=;
	h=To:Subject:From:Date:From;
	b=TYOEQNdH8X1KbjdTERPvbCIumyyJ8F5GqTdJ0TJngXAKMIqU6DEJHWPM2vXSWn4g5
	 8l6CATuFbiuAGyuYwEOS99Qisrxfwq8tEWCvtvFokcrz+Loal5gRcppCLo5P5xgOvY
	 yxQuobzZKcHGWkLEUM2fLpYeLBuFIHYJzRxL0CjU61Vq/xE1wotv2CDfiLHO82fqL9
	 aMOFaS5qYw6/BdeWSnBCDnSPgPM7Zhaj2VNVQTgkL739LEfh0Ml3UM/xTp57g/jLDB
	 DQ4LrwlHEE4+ZmbslobvxfHH43OStbknZmTYLmvfCM+Z4PYObboO9PMlSCAxcfqcC7
	 silrP0qN5SVEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9BB3C61DBD
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 03:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178780143368.19580.16151367233439672026.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2351f37177b2ded9c7a2af8748be8326e550a512b2ab43efe145078d9eac16bf
Date: Thu, 27 Aug 2026 03:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787801433
