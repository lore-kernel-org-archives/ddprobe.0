Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B5B33C30
	for <ddprobe@lists.linux.dev>; Sun, 14 Apr 2024 01:59:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713059963; cv=none; b=IWv7zs/ICVm2jIc6vMIS05Vefzg0jwJ1erzn2nY6LybOqZzbRxUK8fqeeI5PXzry987ZNpHVcwUTdJKEhtNMNoHc2Oqu3KEACndGSxtQGzC89zJH4YxxQsynxhR6ko6xkjIA7MeS6EahA8swber7K9AOTdxgOgR5u7ybcaLYHF8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713059963; c=relaxed/simple;
	bh=tfpmNrOLNJ+E/bYz1XmPGgFuMLn5zw2kN8paFFZX91w=;
	h=To:Subject:From:Message-Id:Date; b=YrJ0/S/Zdm2gBMJwvZsBUhP5lsWfuhicssh+po6PuzUsGxwjJ1Zae4JBsBNSMXu5NxOHLrypGQt1BazzRG/UMC2T5YoaDeWGUwU98cHyHCBUnYgoWIy6IeW1HMs+mPfA8n9YHbLzoTgcsjV6kEMq9HwH6cQYIfTvmCYrFxiHy38=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ED9QLH9e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ED9QLH9e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD4BBC113CD
	for <ddprobe@lists.linux.dev>; Sun, 14 Apr 2024 01:59:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713059962;
	bh=tfpmNrOLNJ+E/bYz1XmPGgFuMLn5zw2kN8paFFZX91w=;
	h=To:Subject:From:Date:From;
	b=ED9QLH9eybQtvGZwPCf9046PElMgH2wo0wiOoNoV29+XfD5GauO99in67SsZpzn1/
	 2cUBxBuBWt9mTJcqeSlZRQQQ7tlAUCh6Q/7W9FumZbhW4KZCYRI75TKwMPhekBzi6n
	 rcEofJV6wHVUlyfYOrWdNTFRbc3FmcytYtailEYJ0Q8eZND20R5+wyIUYjLjRaJAgZ
	 L0Q7KLPMBkkT6+hcCsXXnM9I0iJ2Ew7jvb5GZRZmFsm3gKmiNRli/FUwKmYjPpFUyq
	 6hvy/C6nHyMWP9xg6KtMqMcFtACv9vbdOcv/TFaLwvsCyI6CtgMbNg4FIjLgvCicJ4
	 pS50L5fG652gg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4852C4345F
	for <ddprobe@lists.linux.dev>; Sun, 14 Apr 2024 01:59:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171305996278.5537.5979208189281966079.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0cd38d7155594d25d4f17cce21612245b0d200832beae37445fa93acbe0c1f45
Date: Sun, 14 Apr 2024 01:59:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713059962
