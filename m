Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E04B3DCDA4
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 21:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786570834; cv=none; b=NFV63ueDCnwf8nEEj/fj9Z6kyz5Y6VLLmOOVsHYIL9xuLStym3U88eDnRvl3/6ei42FFszB74jsKPBT28qIBHMkkrkhJPjOB4Xk8sr5co/q8rVe5N7e+HnearG1sx78jV6ijEFUbQx3PXdM/Lc2WP868eage2xkTVnsR5rDzk3M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786570834; c=relaxed/simple;
	bh=JaVY/klV/UVxPiE4G45lfoMOZXhm2/99wpChKY5VxIA=;
	h=To:Subject:From:Message-Id:Date; b=nyDbK4z0hHzO6uzRSdbCEQ5+Sp9bol+5fyyFgK+ZdD32EIgtyf1gMQkarhImLxhOZXLvAMpufw3qG7nGRC8jSST1yjbUfXJiTbqc/A99TYfowmKuHKApP2x1FK7CZuJx73vgLpuwQ57pX+2OE3fL16YjtMZtEiNNP+P2apua96U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QbYFb47x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QbYFb47x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0851C2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 21:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786570833;
	bh=JaVY/klV/UVxPiE4G45lfoMOZXhm2/99wpChKY5VxIA=;
	h=To:Subject:From:Date:From;
	b=QbYFb47xhFbwxUZyIP7Dh5IK0/qMbGdxBMZh/Iugx3ZFOldHAAYryONeK/VG8USVu
	 NUSIloC3tzyD9I6ggRmpH/JoOu/HJzrozgVjsMwkC9vgMdOBwiMUuARFRgTVotSj4J
	 siKCGkqGL1uYXvfYrB+zJ2E6sZ8aiK+AYAMdM0h/X4HL1kNnHCBjQ6IiHp4nHup7J3
	 CeSILNGcERm90VM8NONJxxpnjgMHsRt2NiB54waBsL4ADhmGMeRvSsjEQlzAAsl40l
	 c3qGfBkwygCUyGJeCOz5u9xABgT8kODO2Ehp99kojdEWztznldA73VajE6ky1m5+Ym
	 mSd9QU0MldxnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEFDFC5AD5A
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 21:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178657083368.17820.6852641895646087044.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e094ed1e3f3bc1168debe36dbdd7dc71c462f346e18d381665dc8715d6bf87c3
Date: Wed, 12 Aug 2026 21:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786570833
