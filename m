Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D848433C4
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 15:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744991394; cv=none; b=fbCuQgZ/oDAoGbLztTGAWxGrjunbZWAKtUs+Cj1AoDdNCZLv+ZFJ8b8o4Fe9lftsLp8MRwDj/ANHYLDWOhVDMHeGsnFOIjtqPceV9CTqZpX4wkHvoq1dFkO4ukDSjdaoMlp5pnbSTS3XSjroOcVk0BgdCNmAW4AvW3eacbCz8q8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744991394; c=relaxed/simple;
	bh=XUgjOFaskasP9HC7+9yvsG5lhQYp4+5PtLBtb3Pa3CM=;
	h=To:Subject:From:Message-Id:Date; b=bjleABZxCnRJSrajOeG3CIPwBe/KUvC5RpIu8WKRWRipUZ7QkTQL9NCO2McmLq+/nJZdCluTVv7w94v+UshjKV9M4qupF01nblMAFbLdddaxjMtg0S0c+yM9Tlz7TcYkcQw6hp/vYODF0FKipqXJaQKxS7WMRWVCXz4QICXizSs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gfb+Hm+F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gfb+Hm+F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABA81C4CEE2
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 15:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744991393;
	bh=XUgjOFaskasP9HC7+9yvsG5lhQYp4+5PtLBtb3Pa3CM=;
	h=To:Subject:From:Date:From;
	b=Gfb+Hm+F5pFQfkkdRkA3poCXkiN6avjBZhtWz1BpgpEVV35pRZljpoE0DINi9qnQL
	 8/HJaORWPUmoKcS9YE/1gkZQyv++5jQGGckkiZ1h8A+Nx/DLedgb2DP0caWzBo6PXc
	 yrCocL/2+rYQkwZZQHEP0mnxOD7Qi8+X9wdIQPxSMlerc4GyU+bTZlOxX3fXjTNGX7
	 ad4o2vv+ElWmiOljbOwXeJqcr91850ePUR51vFu1gZ0IJZsffRId4uJR55mbLS1TB5
	 j4qyjf8haH20q1FLGTWTdS1bb5aPbWxMXEJZ+QOAkYx8rl2OcRkzax3QRFmHheapKf
	 o6YF/iEudgrzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94165C369AB
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 15:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174499139359.16871.11555104858500384785.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ce124730314cca732ebd2e33b0245555436204fac2f80c4b1a89c01ab90a7b9
Date: Fri, 18 Apr 2025 15:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744991393
