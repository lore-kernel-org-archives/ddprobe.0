Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 342671F4C8C
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 08:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749026994; cv=none; b=JjqP7pyuf9pUdRwHRYp7K2sqiapVOO85FB5bChCP0Y59sOpkviCWgrvSM27O96OCef/f9xf/ZUg7WE69e/c2xY1kGYThMqTvnzxbu8m3/tYZ6U1G2XX4paXxYWzOtnJcUP05RSG4P8L8f5aGe3AhdgwUO2C0sINXTYzMDEV1Dgg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749026994; c=relaxed/simple;
	bh=x+NqcrXqoWTeIf4LL9nLU14EB6mZyuD0fj4bENtsFqM=;
	h=To:Subject:From:Message-Id:Date; b=XqygLYsswKtAyaKboC4cjFzaPsAnjx611OeotBCXqi2TZxDonSBJkyvJqR5SE+cO98hVxwdh69w5MSu+dbkAiayBC7sy2wtf/gWqsHRe9RNMgzGtvJuoeFejh2GMRtnXMyuHSYKvj9njqynEKgdXJnAqPQ2E8IKuPOZqiGQAPC8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VpwEhNed; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VpwEhNed"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FD3BC4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 08:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749026993;
	bh=x+NqcrXqoWTeIf4LL9nLU14EB6mZyuD0fj4bENtsFqM=;
	h=To:Subject:From:Date:From;
	b=VpwEhNedGQ0cLP3Y2Tf0tRxMgL4LxnSpI+szEq/7Zb7W50D5iI6YqVPr8EZK8Wivl
	 9s/m+K9xNnZufKug09RThsuWfq97ZnRGkeZX2AuoFFaM9SiVLlK4U4QQXQBzwwzTdd
	 Xi+6CBxJdpiB/w0be1fyHdCB+XOre6jj1/TC1DhtN0b5DFX3v+bx35Ghz60JKeL/sj
	 Htm4uCll71/K+VwQGor0np1bhta428Seo2/LVxrcZV+ZXNol/VhwIvfyuScSSsxxX9
	 ySEZkmP8kZ0rdn+CbFw1o3i0dVBlxNN2QWtJk2lbZb9BHaln9MxMQfGc8gZyTWvnhI
	 4QWiw/fMOMpjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F99CC5B552
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 08:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174902699357.26644.385728855304543761.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a595c0c300ceb8e16c231405dfa37b03fd85254ce821c096bf489ed01cfd77e7
Date: Wed, 04 Jun 2025 08:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749026993
