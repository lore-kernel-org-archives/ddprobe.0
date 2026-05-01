Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D38E030C601
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 12:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777637853; cv=none; b=orYaJ+MuWcx7IOuQQ1Gm6xn4lF52eCP7BkMGfTi1BmDRfj4S3AUtJkgNW94xAea04dBW48QnTrhHLZueaptlOUN/DcMocuzIH4b9hxi5PyM7VdpS4lc1Jx4+pCP8mB4MglXphorZBwL5W0pomfICgumlrG/2eyTz192KgUS/h5Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777637853; c=relaxed/simple;
	bh=ODbGbTJZ54zmaWu5pmDTeo5xniui2OCUJSpry5Zx+kQ=;
	h=To:Subject:From:Message-Id:Date; b=QnuIqQN1d1F4Tjidplzuc5lZGQqrPFgLEbmEYQKzb9IMKaLctnhd/9H36IizTbhJRJizqTVj8t8HJZvxKGpVS2NKsXVASEQB6/POPi3NLOlcOHhNCcd/VXMjjuDduoggTVR3F7QeE0iO4rQfXFA9zKO7E9Sx/2HWHLYRg4HCZls=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NUjbcd1h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NUjbcd1h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7705C2BCB7
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 12:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777637853;
	bh=ODbGbTJZ54zmaWu5pmDTeo5xniui2OCUJSpry5Zx+kQ=;
	h=To:Subject:From:Date:From;
	b=NUjbcd1hHuah189tdzvpKN1P6fSSADvqpxfTpB6KLMB0j1QuWIPRNnW5FqdxBJeJI
	 +o0C4SrR+pF+OBuWAT4quBP/9tW/0ztihEQvu71kjHB6lufkoGElEI5MHSRNabkeX/
	 LCWtkVeEdVP1BkOuxcqWVcrkKRatSOWuwMtxh4+HGYG7H6R3wqTh+Hprib571r0k89
	 r8aMLbsoTDe7sWgesX2EGgzDQAj1nkkjMcHuUbjFOdGnm2SC9bvwefq3KzGHdS8n5f
	 sveuFcCBrnI2S9I5XW8UT9wMpiKWJqlpb66ni9RDgjQg5QFGI4MtkF0un1hiCTC9IP
	 NW5kKfzBDPTMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A93E5CCFA13
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 12:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177763785368.5531.18234096023807300397.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06ac76d4a45b03705b02537b6d4083d689a562ca6fec61240266d848b2a36ce7
Date: Fri, 01 May 2026 12:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777637853
