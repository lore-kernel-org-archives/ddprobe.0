Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58851344040
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 11:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765969434; cv=none; b=DEuBpIb2ORT5hzxOayypdtPIjQ7q661Ln+35/ZKSer2XtvYoOSgdJ7b1CjLNDxbVZqdTzNx/YXMVyQd1oS0QgQ2VETVPA1euLKfBpOYx+EXsx1OBU76OlUWBEaF/e1VUCHpoCaO5Wkv6VaaoITqUJuDd1eu7ELpzyqyu2TTFhv4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765969434; c=relaxed/simple;
	bh=2kLfwTP3k+OhE/xYSs46uCgjNTwsA/SZ1Cfj2tpGVAk=;
	h=To:Subject:From:Message-Id:Date; b=mRbTuGHxe9KDC5u9nu8YPg3g5pSpGFzYF27IUZWxVqZ3nBBHEM+hsofzKVWlm4fm1R9bddVhBgp/KKGjEizpOE9tkFvQAkVFZ15lSuhoKVmuk6I2tU83pfl1dL0oZBM0cUZWcTx1p77i2xg2aeypseIcisdOqiIHu0aF+qX4Pxg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZQakyG4Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZQakyG4Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB07EC113D0
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 11:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765969433;
	bh=2kLfwTP3k+OhE/xYSs46uCgjNTwsA/SZ1Cfj2tpGVAk=;
	h=To:Subject:From:Date:From;
	b=ZQakyG4YVE90OdFfb/K+u4Ik0s5UmTol7CoT3QszBxNoa0bTgs1PGat+USMWNHehS
	 yp6bzznYuYhul8yhCenl+IsrGYIYbvSgVyvvAj5Nih9mvEnApJ6eF6O11I9st6KAuF
	 57PofrNBmHCCt173x7DdknWpuTRujLcYvzrbHFm776Bq2Dq+wZ4t9QP9JOWrriV69V
	 +VKu3GTD+OsfBDjQtIGI/nDZflVygonO/6Y3TMdullzyVIMejD29zyBZCBqWcGJWLd
	 dtVFoESmvZYG6y3bV9RQmqdTX2JD4JfsviYU7DWP5cLSbdhlHvt7QbpP/ugaO3/B0o
	 6UF2Vl02ubx2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98314D6554D
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 11:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176596943361.10091.6508245648267825844.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 623859ad435e33851c739718f736d8c72f3bfb34c17ae6e8c1aef6102ef802ec
Date: Wed, 17 Dec 2025 11:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765969433
