Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1ACFE23536B
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 18:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766256234; cv=none; b=B6AJ1urqrQX9sM01+7//jRS9sIzSRVaqBDTliRTJz+p99GT6wcITJxOoyLwlt0noRMb7Rm3HuhpPmVCwPm+NxNcrLE6VC69miyGV2ybuzqNezijHGktNODDahdVhAY/SRh2ErXMv138ABjHMLcuVgz7XEsOyBHxiwMDllaOumls=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766256234; c=relaxed/simple;
	bh=m8OFLZhyT3m95Q/pZp8DzJNfOgUIdcP21Gcf2cmN9xM=;
	h=To:Subject:From:Message-Id:Date; b=lb6vqfFaHAlAhjZIFmy+XrIW+C2u+ibj9MaCdZgD4vwY0yt93r3vmenMZIj5UeTCJGmmsjAtdvhucSm4uAGUX+ovjLdkpdLXBFq40n/qd46pVI4nbqczI9M2bcJnn60t8LQFxCuov+28qh3Ld/IkFcsmEXC+TkIama04ihtg9fk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SWKABSvw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SWKABSvw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EB66C116C6
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 18:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766256233;
	bh=m8OFLZhyT3m95Q/pZp8DzJNfOgUIdcP21Gcf2cmN9xM=;
	h=To:Subject:From:Date:From;
	b=SWKABSvwQHAd9C7c3Q7wBacmAr7WsNj43/2wrJB0t+mcXc9PrZrmjomzb4rw2L7Dt
	 7BDa4fQmmsV8jEA4CZmnYcBN9/8/1bUcCDEEqDGtP2zDxeSRueBwLuEpFuLydCjxJS
	 4bUEwNPQ4wApif5hOqgllUnka8VSTpXOud48V2+TT72cQRKmQjm2y0Yfcbxz/NiBSx
	 mb4BEO8pPSKkqjq63obtbqjyNN6RQ8mlEM4Z5rUW+Z8Gbc9tla4THBiam9MhtBClwN
	 3i9cT30ihswf7vTs8OUORxBcJImbYQ+HNHmN4YCNBEC1t7tPP7lV8WplkYfwgQpH5v
	 Abf0UCzEiwAmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90BBFE668B8
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 18:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176625623358.1933.10136908310041162885.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5db2aceaf624184186133d9f258130bf450e8952277f9ecd65a9e9c9b8250ba5
Date: Sat, 20 Dec 2025 18:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766256233
