Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35878206F1D
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 20:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736540754; cv=none; b=AufKMHSu6Fiu55MnQCTcLuwiaJHbEXQEIpYnk7tOE7UeFoH6XbnFGriz30W0mbTNzfpbihqcmlt3GU5E5FLMO4g6rdKzLHmefP+OwEaxz5EKi+rJswwXpZHvvUKuFIKrc3PQ0R9afIeIRxQMlfiMwyPw6eMErMnKKp0/0yXCyZ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736540754; c=relaxed/simple;
	bh=ddgBYTLikbsMIWhNk18epJ3pRZ5kt4CddwITpdW6wfU=;
	h=To:Subject:From:Message-Id:Date; b=J+gr7/Nk1BHgmfPczT6ZeFEYoDSsibB/aJWgug+FuQB8QoW/YW6giUuvoWeOeE+Kqy/1n8KFSKR8JIe3pRx1xBdAz8RbOS4p8ny9vGkbxUmDXPjbD+PnlQnbc/Yo6M7yEjFYtIyDCer1JBemMbDADzh7txsvsR4KLMaEksUIyR0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SRSsZFNn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SRSsZFNn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B85A9C4CEDD
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 20:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736540753;
	bh=ddgBYTLikbsMIWhNk18epJ3pRZ5kt4CddwITpdW6wfU=;
	h=To:Subject:From:Date:From;
	b=SRSsZFNncJDvr1QpeihFbE1vZN9LGLeeWW+dGCt4M9ns4nY67GwRrAzfGETMeAf2O
	 J7TYFZzLhnIVXDMvaF36xKZ/7k1td067IwZsllZ4MIisRdsLt5hiXMnrgwyJAHzAr7
	 rBAXBmrAasSaT9fVhr3fh2bWkg80i0lGJWdchAZxJ7oA3f9vB0qqyD10hzDAFd6NWS
	 vA0QYmiHselRr6JWIL0eptmQJK7o7UsEdZ396Y2FFJAKjzWkXtzmfXiZj4rfByJPcc
	 Hhn7rkjevPF0Zk70/ZtLKOngRzJpEAgLZk9sQdGS8WCqalqqSPvhf4JzLCzuJYiRiK
	 pZ+l5U6ZjxqFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 979F2E77188
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 20:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173654075360.17991.3712140719300720309.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0899b87b8fe6495b6e31dee37607850df99477c8c1f6ad61c8f79cad41d5d5b2
Date: Fri, 10 Jan 2025 20:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736540753
