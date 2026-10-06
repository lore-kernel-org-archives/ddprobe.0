Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 623B314900E
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 03:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791256834; cv=none; b=KX+M5EB3HjxPtwkXd7LJyAtrgKZsWHPIFi2juihwmU8vGmEwxtbdWtJRW/7SM5w2nkAMUup34ipXrMd2qWVi4BUZKmhxxoW6EmBxJ6MqljMFD5sU1B2MF3/UD1Sl9Ux4MaNamuzwa5tBgDKWOg4+m+vVXGpfP5I4OYMTfcz4CzA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791256834; c=relaxed/simple;
	bh=mBCU6ZQn/5/b5BFnYgJPp5nrUzfgzaymnlvsciJjvAU=;
	h=To:Subject:From:Message-Id:Date; b=FDseicUJkL6GEbYpTAcC0pE9mZbnHBnO/VgEKgRi+1KM0PxDF8jf3ISrK+Th69Xo2mO4LMFY7extP+iCP+TaKmhaho/8ZlagPykYjZNy5l4ARMWIp9lQgLBOIf5Tj15rWeo6R69vX3QSCNsxsx77D3FU/e3ZZN9q1k/0MJwYhUc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e++Wml4Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e++Wml4Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDEAFC2BCC7
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 03:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791256833;
	bh=mBCU6ZQn/5/b5BFnYgJPp5nrUzfgzaymnlvsciJjvAU=;
	h=To:Subject:From:Date:From;
	b=e++Wml4Y6EAwycvwHdWYNytt6hq1cExCmM6ZAlv+q59zM1vRonBX7ojSH+ctRvkj2
	 vPC2WhbjsGxuoxxl3sVh/Gixws1jmYdPEZm6lf8PRXFD58AiN7hoXVkoKWQvtJs0m7
	 a9+H5W04MFOnqTgJ4Dz+8+Milhs69Ac9cCsG/lH5um/x0xmJShChZ20JuuJfESfyYX
	 nzSUwCey8kaGPfJyOdFVxMPt1VtNTgEEVlomHubrmi3EYYydpmLYqL5c3f0li2hCQj
	 rcko1SF6o3Loab1Rr9xpg9ILZQbL8B4uLTXJMRoYn/M/1Ci/ywVBF1TEks0eRBLDBS
	 4jQrEEU9GW84A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA252CA5FFD
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 03:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179125683368.13460.10318888845670374468.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e5742a22eada96ac99832ab73c0dea5f49d1cfab2631bfe36ec8a55e2494f96
Date: Tue, 06 Oct 2026 03:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791256833
