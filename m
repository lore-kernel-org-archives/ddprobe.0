Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F24D34F46F
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 20:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790539234; cv=none; b=Bdzt6ZZ3wl7RzTezJdVLghfYivakDbYRV7kxpgNq5gREIMG+zCwyDnkl9guDFY4k25GFAfnSNUfU+c96l1aiInZTlomgRRu+q0mzLT7hFCubkuor0weUgIIX6v40e/mKmvcLrFYQLKtXIEFFBLxYOuntnP0pJVibzTG1WwyLEnI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790539234; c=relaxed/simple;
	bh=VwJC0x5HzrX8vqjApUIvehMRjDvh5g2/6lCr4cLNYUU=;
	h=To:Subject:From:Message-Id:Date; b=FS2RMszxhki197l0d2vX3DqUSuBY4TgmiGOEe3jBWsVMxoaHz0xDC56vONGN2k+rcFP7jd7/QxAppnjI817EaGKV6uHeNPUj0fERMvHnd0S452rfLEfomg+LC4WQfg0cn+vfyO777hdR/mV8YvbvOIJedTzd9q98AQTd9rEvkfI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Nm8pMPUm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Nm8pMPUm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE4A8C2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 20:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790539233;
	bh=VwJC0x5HzrX8vqjApUIvehMRjDvh5g2/6lCr4cLNYUU=;
	h=To:Subject:From:Date:From;
	b=Nm8pMPUmswg+hnVa88ZQ9zSM3xqwBeQdesyucB/Ipu65Y25ydlVtfeAM1IV6pSz4I
	 Wu2aaD4q9D+xxvoQbcY93Xt6lV6xUlf+qWJL4yRkDYAAlWoE6BYtPBXErscqLrW1IO
	 nTzYJqBGvz2iyYCJ8pC3eUImqcKrhKXnS3BFkLaodmi5RiC2ORIhpGPQ1vBBft+10b
	 9qFYHt91VB0VUAtDdEDfOz/aJhliIQ8Ue9vOBxY9iZ1u18uaYb0xb4auWxarWNGps9
	 0KKWAUQBH8bhyXDQiqjiDtljjvC8ADWUUiT49XiCmz/Ok6bqtDwQIILZbKE0MS2Ijs
	 LBfd4HdJK6adA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC969C9832F
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 20:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179053923369.25538.14796987834053991207.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ef660eb296e5a228c1fbcc94798dd54fa1a3f9a7f1ab930cd4b608bec670647
Date: Sun, 27 Sep 2026 20:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790539233
