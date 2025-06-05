Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EC0A3C2F
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 07:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749108594; cv=none; b=K+Mbf/CX94V+EQWWyEVjGsgD7Bmn8D/bJj236UT+t+Nm5jY993evFHXmPlp8Nvo2t1DZQtFpdH8XjXcxF2qdKDknA5q/tHZkmuzaO7r/mALSYn6jpF6DgD+zgrW2s1Y2A42+HptWYL+pVhbGF743kwLow5JKZxV8I0Nu4MtvsGg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749108594; c=relaxed/simple;
	bh=KoXyu639o0zL6oJkYz3T5nCTV7xoCn72UlCmjZHJ770=;
	h=To:Subject:From:Message-Id:Date; b=oRoaUcmRRrWD74DmYBbsvgipgRQgbJDsVyNRvrZWh8Z6cSRRyoZBClsP8zLVU4mUYWfPQf7hm6Q4MA7OZLKCZvSWbFxA/9WyhL/j0BkwZfMcKx/hpU6DuK6Jyy0u0uJAzaxZIWFcy2MKIxBsk/RO3qjad1pRuNQAP+XG1My47Ec=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r4RI55Tm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r4RI55Tm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A344EC4CEEB
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 07:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749108593;
	bh=KoXyu639o0zL6oJkYz3T5nCTV7xoCn72UlCmjZHJ770=;
	h=To:Subject:From:Date:From;
	b=r4RI55Tm2iblzU+nPC2P2lsOkghHB0Uh0dCFw/DFHkh6QyQwGm7VYokPHdIG3r9Z0
	 7f00XI36ouKC+GbphbsKDgVM4oGfootUfoGuHW+UIGqZlg1WZcA6i0Byx+aPeSCcZR
	 bVLduJpXAQPjrR4GGT0SJhWaSS8XCiHqdurKyazlmJ2e4TabcSSwCbaNGOICgelz+I
	 o6jzWknhwKOwYAU2E3O4Rr6HikkT4nJ9QSF5+N1cIpLuUG+TXUMfq2yNgyqDbc1BN8
	 aF4EiXtznfo5ZVRz+IBe5QxJVWqiom8vDrOpvYY/lJXGGOPsZGl8Daf7oKOxvGwtnb
	 61oegHdrYhEdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91B97C5B543
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 07:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174910859358.8468.10992962260747086413.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a5d0428c870260fb540e93730d2852acb3973f176f78d7832e2c6d17ca016961
Date: Thu, 05 Jun 2025 07:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749108593
