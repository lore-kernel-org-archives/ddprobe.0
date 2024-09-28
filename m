Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24FD914D6E6
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 22:45:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727563555; cv=none; b=bFgiweNGyBJnLqILu6W5lm3Wgrt9uTXPj78srwLG6c1k8UsZwCH9ZiowCmVD9AEr8KZE+DciJhH0Ep+w3h+yjrNkTJKN+9iCB4uVa/Kj206tTBl3tFPdnOEM/8cd9zyrNEpN08bfdc+TIUfbQfRTBe5dk+iBJYrsjFBnOcc8AOo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727563555; c=relaxed/simple;
	bh=bt2BbaLarWuey8QxSlruFHz7bgtxvaZPQ82nObcNBG8=;
	h=To:Subject:From:Message-Id:Date; b=jiG5Ran5yjdY4h+iJpqaH+fY1CfhVinpYbe3CYcwuSNG6EBObTsqhk/30ClCsVp0VSg/2TQeJi5BIXFT5NUJb2bBLudYcq4SUE5tNLK1n8EIIc5hWROBaN+lu6HRI62k5AN2jTsLNzjmubBsjSPAUL6wktqQst91qDdA4iPVHOI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DCxAcYwF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DCxAcYwF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAE4FC4CEC3
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 22:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727563554;
	bh=bt2BbaLarWuey8QxSlruFHz7bgtxvaZPQ82nObcNBG8=;
	h=To:Subject:From:Date:From;
	b=DCxAcYwF2q5X+K+GKZfmhLj/hL1tDiOjIUeNokGU3INDL8aItInlAtZrO/aU1KS8s
	 v3F2P4GfPUjWi7VA43GoHtef5gKebSUd+c1Qt9sJwBu0ZLRbfW8sG89tt7YS75Xj0B
	 j0A9VHuj7/QiW/CR9Cliyjz+txBKvzKqrsvz7TBLBkQ7Qo5zlR6mDZF0CawkTfj/mT
	 a4niNaH1ZwIh1WaVBgXjWslyebioo+O/Wf2u8T1YJhwbT50y5pRQyWWCB9KEXJ4DvC
	 Szs9nhFUV0mqQsa23VCwdMo8uyynp0N+Zl3BwgWUwClILDyc/9OlH8jhGEhAeRzjYy
	 M7v0DYQod6TnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98864CF6491
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 22:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172756355359.8803.13875546332354406910.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3dddf193d6f84cc6354f5c7ddd14aeff11e50888cdd94f414ecd300f29c827ea
Date: Sat, 28 Sep 2024 22:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727563553
