Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 699E54A11
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 00:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719189743; cv=none; b=VVyb/K89sA7UeA0xRxvfICLwJuxT3cZN0F+B2/1Q8k3i6oIYnIgrYVD1lItunmw5Xby/xvMdoUC7b63lKrC5MUjCHaIxwHH5myDrQtB44/8JarBxHtiZXacldQSSPseg7Moek8xXubfaXGUjmvu7NScy5gkOpLA+SJWr7MqiPNg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719189743; c=relaxed/simple;
	bh=qo6fDeRg2/KZdwYAQfvFyR4ef5l4hOqyvaqcS7KKjMg=;
	h=To:Subject:From:Message-Id:Date; b=ITo/3hu6CX93SOLydjFas2SCKtFMaigLBj/vbIMJj7A7wn4JsP4tfxu8z7fSHgAFQ5rkDu0WZs+9Xj3KEzKTv9n2NnH1GJTT4+ALfeT9bGpYvlt3s7Mbb4jKDI9wW3VFK5+olZ4nL25ddpSGYpWniecCZ6lmF0UufNeuYtux03Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZrvnAoeL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZrvnAoeL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DED2EC2BD10
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 00:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719189742;
	bh=qo6fDeRg2/KZdwYAQfvFyR4ef5l4hOqyvaqcS7KKjMg=;
	h=To:Subject:From:Date:From;
	b=ZrvnAoeLp0EtUeq4NxaZ3/PFEM4f2fvWJS8QvbxEFP2q9+8wqb1lDB5aickCD3P9w
	 ThysyKdQtny1rADe3KznNKrMjdMvsFZPrt8OGidE3GRqotOkQdxh9SNIyyZL5qNLMS
	 KWfyPCx8+638E2+8o4hFfrzZJ7jbiaf50ujrmMEKv6LChhLssMBrbtrPlJ/J3ma7Jl
	 3YApYDeb2lLEuZdKuO8dGZ2Hfe8K5M5zB0D8jgsfkeoCNGrI5WDgeL/Of6/eG4YZdE
	 0J13vsuIqjB/mZSLySXhmarwbqZs5uT7D//U0SoQtXum46BjbPCx0yBv9SPO7fbo+b
	 eR8S9wKSNilWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5526C27C4F
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 00:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171918974278.27385.6299391405430239934.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 38171a4a280227ba9ee09c7c4684b990bd82ef06d47cac00bcca98ac21820e29
Date: Mon, 24 Jun 2024 00:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719189742
