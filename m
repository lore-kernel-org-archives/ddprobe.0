Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 75E8136D9FE
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 08:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789891234; cv=none; b=N0lF126iiRjU6Y4SRAYITUZ3APsLVoPauAVFLRKKvHYYKIjXM+kr4wUp8HnmQP++o+gHgo9zZ6tE35jM0YXOo0aCOytF2aY3EZ5Lu3yNI3iYSN7waMoC+2LnxJLnpbe5zmhNVRh16fCW90eipOugCnuV1E8WuEQfjUbjNcLsNJM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789891234; c=relaxed/simple;
	bh=moDO9xT+Ni54SXp6TyP7Lorwgxj/8vtMmb/4yXKUvjI=;
	h=To:Subject:From:Message-Id:Date; b=ZdQpJLJbTN+3vKTSSFKoIeTvujuf8X3cpNlIv2vwiu6jZBe0CoyeXtGl/AbfKq4hQb9V/oLjw6mrv+8OgEyL+MluKugwY2QysimP3BttNlzSltflflW021AstRquz1JFV7+rldOP56cmhQ9sl7naVC3OvQtP5vHHSk13exm0u+c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ERkJCUL0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ERkJCUL0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D873BC2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 08:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789891233;
	bh=moDO9xT+Ni54SXp6TyP7Lorwgxj/8vtMmb/4yXKUvjI=;
	h=To:Subject:From:Date:From;
	b=ERkJCUL0fN12exut4wdRvBJeflf/u3rE4eijNBejl8vLDWBbYPu7WQTTP8mEGDALJ
	 QKQ6qAzfVjKawzTJP4YCcDBur8E8clppcoqt7ui4BoHyomhj8saoW1LaIjjQq6wG8b
	 rduhiKmFTkDzpIGmAW/ya0kvm+EoqX1JI6xnYST6d5Nn/V4OJwItPlQC1Fymx1we0/
	 39yCEq8mK4kuWZVxbObFvbTfGnvW8yN0V02jWm2P1AL6gcRGSfTPfSVswhGlGaZ5lN
	 2rHMwAsN9aJKZpCzNPae1uxJhsRJ+dIzS1xB1/5YURQorgbdQ1J8a4WueVAs279CtU
	 cxuQE76pgQ4WA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADFA4C982CC
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 08:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178989123370.24760.12904112904385414027.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd8159d6306a681142cbc162394beec9cc4b45abe0b433ceb7c0fce4020e873e
Date: Sun, 20 Sep 2026 08:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789891233
