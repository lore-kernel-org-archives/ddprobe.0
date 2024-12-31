Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D80B18C31
	for <ddprobe@lists.linux.dev>; Tue, 31 Dec 2024 22:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735685154; cv=none; b=IkzOs6V+7mTYxji7ULRZw5iezIxL0DfekcTKv/1RDypjiE9OwvP5xF17/F4Eq4a+hk9tJ2WpB+a8dSUnQIgPtqB77ftHZ3hj3pXaYMa787iDCEwXC7t6niTBEBwi7I2RHe86aEprTjBNlVSZvbVJVrXghwN4vc7bxO6U6+LEXiU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735685154; c=relaxed/simple;
	bh=F1iU4064d6ArMrJmY+n7iLmL+s4gVsIbGqVOYKqwuII=;
	h=To:Subject:From:Message-Id:Date; b=EN7neYSFmuEpHgIU5VY0HIs7cqMnKsJQlk/fGweSpWIzrsp1UjUjq86U3c8+agKDnzdXcK53rf2GywpPZdTY6yAtpVTrxEL1x62W43ALH4/Jtd/bL9I1ErybubUUjuN11KLTxqHHQBV9DebZi9jol1UTtY63MBNg+Rljh63cb0s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z2dRTZm8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z2dRTZm8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A93A3C4CED2
	for <ddprobe@lists.linux.dev>; Tue, 31 Dec 2024 22:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735685153;
	bh=F1iU4064d6ArMrJmY+n7iLmL+s4gVsIbGqVOYKqwuII=;
	h=To:Subject:From:Date:From;
	b=Z2dRTZm8beXZ/4bcA89iCAABuqPnGxxl5dmkUO2DOxLefD/s6SOKByIxkdPRAW8IT
	 58aMDQ+8FMcr7kitY2dKOhCj0IVvl5zx6xI7kXBoHZegLFNKaQBo/ByfGplghCgytK
	 MVeE/WhHqIDgwK5BCdtI8VYP7ciyEwdsMeHSadBciBin/OOCRSMLxN7B6J+6WrDQ3X
	 crHcDPuawP5LzqSX2lBz28I0EexF7IwpOUaS453/YAQma6zo2/fGtd4Fe0Esx6u4nY
	 pkem0YmHjqrHukO3oNhK/fOdB7H2+ujz1CcuAn9QiAQIdrvGVhn6ESOarEaqPDJwgM
	 BQwsifpuauS6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 918E9E77188
	for <ddprobe@lists.linux.dev>; Tue, 31 Dec 2024 22:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173568515357.31879.307752222953350502.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c6e9a6399508482325cc04fcc176e43454039fdc67f73368739e47b42423e0cc
Date: Tue, 31 Dec 2024 22:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735685153
