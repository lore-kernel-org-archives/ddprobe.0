Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2622233086
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 19:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762112994; cv=none; b=sRC07Hi9balVbYotLewlqDhpnAS52aWGGqjgJqv4rwa973hLhhd9xQkBWtj3i2MRCh26FgyzyAx3g/LJfArQTTKVR9aH/JYaPd6c2z3IbdpZTw00+PNYz2AdH0qy7ggtAEVmIwvNzXQ2RCrh4jViifeZ7GWcrRqQvyDrQ2AEaa8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762112994; c=relaxed/simple;
	bh=a2I293kArJZPU4WvVoPr13rcKVYecSeMg0o719/zlZM=;
	h=To:Subject:From:Message-Id:Date; b=gTXNit6am5KhfqoSWxKj6H//bqMIX4bYMqiVxRICVQD7DgF9aGxnis/WjtIVXI/JyW2crw8G1aIw9HB0XJ+33tqtiGabvylrNPWxFTFieSKn/aKUTLwxRw7eWnP+aQiQEjHJSIbFMcx9SFi9ZZrc9S/po/r61/arnCeNNB3H1fg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fJX2uVM3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fJX2uVM3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A74F0C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 19:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762112993;
	bh=a2I293kArJZPU4WvVoPr13rcKVYecSeMg0o719/zlZM=;
	h=To:Subject:From:Date:From;
	b=fJX2uVM3hg4ymqm2O6KFwRzu3A08EliFlbcpxpzKKpeNG2Yz9rdBiKHvubk5pvgeZ
	 JBOekVf+wd8vUG+fb0gJJDvE2DGw2fqHXMPJPEnAw+ncjboRuI/EN5ENBsktdbpuYA
	 7/TBq+8kFlxsMLzka1eML7tnsP0iY8Aba538CswtQNGZ6/kFqGRBAt3tgRykAAYJPq
	 4k8mh8Xi6GIjIG5krCQC0NS7RKKZOxMVR6y6gvSDIfM6hB2tO1wzYdUn3VFVZ+P76d
	 tC6vDW6Sxg2H89/usaiSC6Nytlu9fkr5sZFSPJ3pixd1wY4sgsFX0z1LY3brPLU+wg
	 7FAnrjosoMSeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94C02CCF9E3
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 19:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176211299357.31051.2485713763940969299.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d21c6aa2c2f18ce763cc7c6bbf533ea214852c2ddf8d2c983afbd04ae37af1ad
Date: Sun, 02 Nov 2025 19:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762112993
