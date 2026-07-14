Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 356EC37A83B
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 11:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784029714; cv=none; b=UnjAbiT8R72X1iSWq10uvfo1CCzAfjJgNYvF0Ayoza1b371j37TREnFBe4WH2HhLof6ZujSCaGqYR1NfVKikdJO6MZ6a2aLoLElm5eULOPiYf3jnmxP/7pfvVvii++TvGojXJbAVsYscCjOp0fQ9ZwLUGIAyuQgSS6TdrrLxiv0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784029714; c=relaxed/simple;
	bh=hqwsOWEN0lBDbQSHn/j0R43Ca+3NJWRkV3gA2QPtmQI=;
	h=To:Subject:From:Message-Id:Date; b=cjqctukUrvF0+r1yGPe+lze69ydjK9KdXcijRLISg7gmIKESSL/9IfZ8sNMyHAZQliWmpblkxzbx/nMvnm6LxBGrzUnALgmHpYNE9nu3lQev2eJ2fcouSPgFzfG6p9na/nwkHLx0rksNwzBsB3B4Bf+S0wo9Tg8jB6iz2n5dpqg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VpkCFR3Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VpkCFR3Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE29DC2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 11:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784029713;
	bh=hqwsOWEN0lBDbQSHn/j0R43Ca+3NJWRkV3gA2QPtmQI=;
	h=To:Subject:From:Date:From;
	b=VpkCFR3Yeg9b71HMbfh5V6RiPH+sWUtP8tlphCeSbB+EyPO96DJSwXt8wnloQ+Daz
	 Ei4VO3lydBVpFyxqr47RaID3RsW2zxeu579O6CCmc1Mo2yVZ6+ZvuX6Ty6Ue9g01hV
	 7CScIGsiknArQTloCIUjasMfARNgR/rCN+KnrqEFkpKj7BQ+66/m7FjQvNeORiTyUQ
	 iMyeskXnIUtprjIm1K22fqcaYSI9uJk7L8n+m2j6wBQyZUeO9NCPczfqNVeaAQyMIx
	 iNIfEUhcQgZ4+SiAvLZL0W4bR6l1wjmFBELu8rYeEWvYocAow036EyEVtIBtapOc7o
	 yItScJ4E+K+sg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAF8DC43458
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 11:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178402971369.21284.17689963499523599486.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd6b079c9f8e0ff3f126ce029d9a3e0a8a613f80e64ea277bc0cf73307656582
Date: Tue, 14 Jul 2026 11:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784029713
