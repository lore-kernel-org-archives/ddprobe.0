Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 220B417993
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 16:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732812354; cv=none; b=bGI6/sx/nuTCcK7kBEW7532831N4adLLUE+DV1EILSs6pVFU7+wpZzPlUm03BaskXbjvlH76pY0Nk9DmYUls1ZlrBAA8fiKa2bpVvcgWewVOHrpqUdxKCJwruOKTIkm4P1qgrg2+ekHjWX6YON/YorPOFdg0sBvTu+sccZ78ymw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732812354; c=relaxed/simple;
	bh=xfCtXzpeNd5f9ysRsQFErFywjASBINl0PHUrj3NbeFs=;
	h=To:Subject:From:Message-Id:Date; b=UNirCAHjNuKlMu8MUP5L0U9nuX+pj7GDJJAqJ50LOjZ2IwQ+b0AZp9zEAiFSuzMEhIfO7ZqEe7Ho0J3drPNU+OGh4T88oSKr0VPZWc4bcK3qBBJ7mtKtXI0w4yWPzkWGey+4GXHOqvl4zKaUMuuh6Y6b2Ogfqs43CdfQSF2IKQo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dAD9hs17; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dAD9hs17"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9AABC4CECE
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 16:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732812353;
	bh=xfCtXzpeNd5f9ysRsQFErFywjASBINl0PHUrj3NbeFs=;
	h=To:Subject:From:Date:From;
	b=dAD9hs17f4MEa4t4qOeeha8wqLOMiIkpqLwnv3w6pHHANYo/+6xqdYAO4+C3EH9Ih
	 d+eNZNj7ii4HEeiiI/ijoR+5RA7RkUv8Ldr/KyVtRsibnVtLqsHXedfkHA8A1uFh0n
	 QtS+ZTwldNJGt9ogeQogWUJF8ABJiZcgl55KcwMw8Eiw3nAO7hNAZ52kc/NU3jORwa
	 TtwNBe3hnEQSAnh78JF3sDHow6Fo7ui5BEatIVaGjPVU6wHI23+RiBPprn8PZObCrc
	 DCy4Zxd9LGZRukzwZoi5rJV9KXnFY/oFiV3Umpi3OzQmMSO7hIVZmKo/ASKZGfECXQ
	 TUEPm4RE5knKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CE27D70DE3
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 16:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173281235360.876.1158201022779713639.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0763313d20ec8863e14e797664d462e5feb411757eefc2e60e566316ccb94471
Date: Thu, 28 Nov 2024 16:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732812353
