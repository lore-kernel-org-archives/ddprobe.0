Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 585B82913
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 23:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737242154; cv=none; b=m1M8euk89DIEDLix1HkMqzWtj/KyAbNubF7AIc2TGt97zl05aGsTtJMp8XY1Ule2azcJeOn51TGhbymt8dFeUemwP7g8s2n/HKzwu/UEN73Mm3jGpREUvEZ6lc8kws9F6qtZbe5jCinZ3CDwlBxiaKReClYlvbcXL0SP227LJ9Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737242154; c=relaxed/simple;
	bh=UB+il4IJJk05x+kC+CHcx3BIuS2JwSrDmhxKcJ3sOLk=;
	h=To:Subject:From:Message-Id:Date; b=UofNiA6ERIE8Oz2r/j/iBOBJARWHPOdQJcSaRTnUWxHOF/w7LDmCmoxl6o6OhyYGcSbDv4zOoTkQ8RzHl6dx2MsmyC8zGddNy8iq7N5bFp23r0F0mApqW+OoOWfy9cov+iaRAYUg3Y4j9yiQnW4JdLNEoPc9kkLDaci3H0vXTc4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AcE5x8Av; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AcE5x8Av"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6C2FC4CED1
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 23:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737242153;
	bh=UB+il4IJJk05x+kC+CHcx3BIuS2JwSrDmhxKcJ3sOLk=;
	h=To:Subject:From:Date:From;
	b=AcE5x8Av5wnQvpeBb+alJ0MmPuu96n+95SH/Bjhz40UPSbcg+R2s18U6Se4cogYDo
	 W0L4OFOVAI2lwMoxLgAaRhfLv/eXp0T5IGW9f+bmmTlD3MOhhVDMwTQaDx5ddniQWA
	 P3Mh2VjJoQH13XpLF0ksKoiGwhxMZ0sYj8YHmrcku5ne8x5EZy1+tplJ5MSrCwlStM
	 sLEPue6K3Xu4LlLyrIBc0ecfyjYdhVqSRCzxm2P0NYBt2AJHqwPTtooTyiW5lw6ice
	 yC1EE/O9FyRP/8gNeXE2ouBJ42L2atJ0qTuS7TZoFgdW5J//edwFRhG0F+0vKZail8
	 UhkSfCW5eI8Gg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3707C02185
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 23:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173724215365.16828.1498861138840092579.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb8a0966f461c450c9270d5c8cc60146135fff70853f7426b2de28cd267904db
Date: Sat, 18 Jan 2025 23:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737242153
