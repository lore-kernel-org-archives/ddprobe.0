Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B6BE34F27B
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 14:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789136434; cv=none; b=ktpDYxtnfC2XiScpi45JjjljyikQuMxn3T2+NjaiEEjYvqX8whWGpyOXWR5UIuiNqIF+hVgMQGP/4W4gtwHESWMqjqzV3VpJxpj06MBAGkSbMwWpJTLejBThXax+yCXS6SOgXi4kU49zlwyB0TAArumWtQfhTNFvfSsg2K+1nhk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789136434; c=relaxed/simple;
	bh=ZRWTUWNI4srUNjrQ5792a82dDFY8QQTUC6Ux+0UMW68=;
	h=To:Subject:From:Message-Id:Date; b=umIUZ8dIsANFv3Sn6mcnA9JXtq/y+Aqp6ih/u6gyyFtO41hw41SDwSonBUqgc9fZtdxhjAIjkhQullFEogSrtaC9gs0HK5aPas0X9JxnNZ0C+rnBLVr44DqMOOBec8/tOpzsxJ2bQbFKnNH+M07cV1HASwLCvA/H8WKk4fgd8ug=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DaNkb5zH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DaNkb5zH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA366C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 14:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789136433;
	bh=ZRWTUWNI4srUNjrQ5792a82dDFY8QQTUC6Ux+0UMW68=;
	h=To:Subject:From:Date:From;
	b=DaNkb5zHVq6HZpO37mQ4lzaJTx5ZEYEDu7Fc2V7W+/DrD32RsmZ+RLSdUbowdqeF0
	 XL36V0g9zc/ADMOEq+YJQGWRX34t1D56KjHwkSc4pbXbvevVA70zhpjtATVcyMOtD4
	 AgeVIy4YTTCs6cdg7R64eAV3ZFWcX+xQE9+z9HNYUYuE+WTU7J7Bx4Ap4pMmZSnYsn
	 M4n6AQnx0o0ImAZ/Or2UXJCKEU2Qn67lC4SvT/zBtew/z1p2284U0A6xyYN+sXcN7H
	 SNO4SC18fytftLahR519i78OYn+rz0etn7PWYZ3zK+YqPKpPFM2TWaQ4VukkVH9zXJ
	 9ykSrodPIjiGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B645DC88E50
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 14:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178913643373.5758.1156835469213919163.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12e32fe592281fdb9a91fd8c205ee8231847cb05051afd4f084473d35a6b5a28
Date: Fri, 11 Sep 2026 14:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789136433
