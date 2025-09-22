Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 234CC2FBE09
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 12:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758543594; cv=none; b=fljW1rhU9pf01i6LmhWm1dqOH8XX8iIZwIS+Ss/YFD9tPQNGaidzvQo2XD7ZXoNmRdgpNygh9eT+wMG0Qy3dV86J3WQ0aJvTf5/MyypDAQKkP5GGV1nm4jGvsSmde3CTgtYaCPIFnThkQtlsbOBSdonhHn5vA+DaeDo4Rj9qBuA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758543594; c=relaxed/simple;
	bh=6FCygmBl3evrmYXaFZSKRhScLNa3qMJfpeGG7SSH7Xc=;
	h=To:Subject:From:Message-Id:Date; b=JCCdLJzpPzFcksyahIq1cmeNmgDxyNB+aVSe6w+UIjKlNu0ivexHBubDzj+JgqpPnYuWUGbNn7HsfdxfQ7N8edvkSaejjF7R9QKOd8OBlMw7L4zr0s6iOFVul1GOGfYrv2S8prvw1hOc++bcB/n6QH/QY7WwvXXNEwgFx0/pwqk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GTh1mPUU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GTh1mPUU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6664C4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 12:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758543593;
	bh=6FCygmBl3evrmYXaFZSKRhScLNa3qMJfpeGG7SSH7Xc=;
	h=To:Subject:From:Date:From;
	b=GTh1mPUU/t8IU7bd2qJJze8fljNhxMqfuRBc3aTa0jxeMigwRGUOe9IN+Nu29jDyD
	 X69fMlyVpRkk5eL8KPVD0mC51SOTj/2/ztAg3l9vmqe7WRJv3K1qCRHvizhMwdw5vO
	 fP1gCo7HGr2yDlnK8IPurOZGF8bY4TGYQIRRrjQev+zxycHBVnC2gSfqt4uCECqMoH
	 qKMAoPJKJfn3WXaHDQ7jjSS6iJt1rpWihRIHttErD51PS9HFwOgqjekVQDp2LRZ67S
	 5/c6mpNusNvJDAh+bhIftSGap8Tn3CbYz9Ew/EnD46q+5gxX/cIFHKqZJJ+JnPTC4t
	 sHcg9XUKBcg1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91FE9CAC592
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 12:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175854359358.29133.16439355558323578223.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f08593a925b2c2999048699aad591ca1a29c5fe2c57d42e6a887f5ebb151586
Date: Mon, 22 Sep 2025 12:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758543593
