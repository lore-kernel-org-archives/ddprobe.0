Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F6B330BB9B
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 19:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782674914; cv=none; b=VRfwVI289KZkGAvwNNTge6TzsZdnFPjoAywnlAA4zr3r15nAex/7hbLU6UjIHdJRxzzDpkNEx3W+iRo4cxC36vaH22wY8WWZI4idO0iteol6IvAqb7cTkpaOPqkllqZdc2UYPMkyoKVqF0ZPYWmuHhQGVKOlGEEekXDjVvNaHew=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782674914; c=relaxed/simple;
	bh=W42NnwC5FOfpXBEngxSlEF6Ur7gMec52x27I1VY75sk=;
	h=To:Subject:From:Message-Id:Date; b=Sz8+jXDok+40PXz968ccwm8tu08e0yWIxICi0x++Xu7B6uY0PkqiNQB2B+8aPPOu9RBnapSGnn92p+yRb+ltJ6aIqbYCjZfgQrqeAUH6sje9XtBTl5s4RcsyTnpRYZqe7KK85MUnaaF27XvmTPad6qt8QlfeqKKb7KOr566v1N8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tEtyODoT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tEtyODoT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE54EC2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 19:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782674913;
	bh=W42NnwC5FOfpXBEngxSlEF6Ur7gMec52x27I1VY75sk=;
	h=To:Subject:From:Date:From;
	b=tEtyODoTL3KPf8gyQvXRRpRlBGUPtJgLh0kzHJmX42ePrmCiucnHhde7/tRsCpGan
	 7OxZEXDOCnEzKV3gSopOXZozOEkLF8Y8eOP42JDPetrPFHm9IP5VXB5Mjh0RxXV3e2
	 F+0pXGp7WpZJxqlspojd+HTSXRysIk5D/Qb5fBhMZenzay71fF5uS8D46XYQS4lb8z
	 Cd9ExI51IR/yX0dq3T+a7Tj9FOaLDVENaA62JzzUERAI383asvpOIAy7ELzrlzUZOG
	 KMf3tmokZF6GTV/sXx+tHNW0jY8mnzgCBiD5Iyw68YQKcdVyEJyJcNuZgNc/5SFj15
	 UszhMwkQdNuMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B18E0C43458
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 19:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178267491369.8090.14659519103126965503.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5308d0faab2e6a810e90ab0b2e274672a59141cb35cadfb88acf2b47c06c64be
Date: Sun, 28 Jun 2026 19:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782674913
