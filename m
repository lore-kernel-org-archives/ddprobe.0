Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3260634D3B4
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 20:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762028994; cv=none; b=akLH7i07l4pjJMGmPcV2Pw+r0rBotLl9PfWD/FB2V4UgKGr2Kdky5TA5Hi+l3m965DTCT6TzG9fwV9Wg4cSlD9QkM79FDsQwjZDbeaTyYKMSqvZpb3S+ii3Qu4AYab9uFG2kJoTAAJZbiLOKjY4oIhmIrTC1IvnqRpRLmYImU+c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762028994; c=relaxed/simple;
	bh=8pgyUN+N92tuPO8yrFeKhXhebF7ySUiW8G2nEVGrhyA=;
	h=To:Subject:From:Message-Id:Date; b=DzJMNdnIemiodc69/L+y62gO6QF3ycbC0+zoja1ILiwlamandPGB+8w8wFtNjztG0jgi+387a7DNg/qoWgfF46hOE4PGy+O2GhReo6v8f5c0CRD5ER9JX+nAmh11cTl+uLjqcuBKgS1J4AoFWtUhedS5XjwCXsA+7hKpEXXVmKs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CIgWKqdx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CIgWKqdx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAD47C4CEF1
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 20:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762028993;
	bh=8pgyUN+N92tuPO8yrFeKhXhebF7ySUiW8G2nEVGrhyA=;
	h=To:Subject:From:Date:From;
	b=CIgWKqdx749dranyf5JKIGLPzry6MIN76+WdMLzALlRbNywp712vMX4Cq+5lznUmq
	 CIuEAjh2mP5NWv8FHgecFTMRF65k6L7rcIOGTAo36lKUGSy1sMXXDfefBVZTlYYCOQ
	 6tQiJst5fEKwh31e/4BjxJkS5h1kP607vF2Eiq02rkYMW4eUgQAd7/WLC7RHGGHrZs
	 QWagSEGRxLaV/GLR4apWPVxnmky20O/icvbnqnKv9K9dbMxiPvVF4lFGDZhSnoUmJV
	 hHDmvfdBubxgeo5BSuC0bdb7wb9OUJDJE+pQHAhqnhaDx7Uwv3+I1IF++HmEKgwqb6
	 rSsqnanZtbzbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96508CCFA02
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 20:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176202899358.29830.8479962883201504984.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f8a962fe3808593e0fac8b4923706f067560b687de763c2bab132e607b4671a
Date: Sat, 01 Nov 2025 20:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762028993
