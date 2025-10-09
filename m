Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD58213A3F7
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 02:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759975793; cv=none; b=Pw4L1fm5t3e+UNal/BhWMIei9+dQktJg+/PdvkIvoHpPpeg+pnNl6Xr5jGuog7mEvlZsGPT8bfjDd3GGk9O28hcsno75CRKtlUYwkF9OXIIlJzUZFzJrlvIXNRoDuC3ipe5zDIiIPAdUx53Zj86UKc1l9CZG94LMIx/CUHXie3M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759975793; c=relaxed/simple;
	bh=a50CWTy9hsY/FlvdRkIroYkMF3PTywWtlo1Z0s1/ymk=;
	h=To:Subject:From:Message-Id:Date; b=foRKt++hcRXZEcebGBuTZB85NU/ea3wulaCCOypM9zlXnA4Ou4QOidyvQ16IwayfqqTBmwOJsOqNEq86hak/hFWWbJr+r5+MnYCFW/E2al9T7AdOk73yaY74q5i2EO16YHGNeWjgjUL+cyOqBbvE99Q6GVS5N/fojuHFJUWfq4Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rYe41voN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rYe41voN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A17CAC4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 02:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759975793;
	bh=a50CWTy9hsY/FlvdRkIroYkMF3PTywWtlo1Z0s1/ymk=;
	h=To:Subject:From:Date:From;
	b=rYe41voNjRKesS60OVCe7lcqbjpb7qSDrRyJvfhGKV1hvK3EQZ6U0AVcnItOxX1fE
	 q+zrS/eGhT54Sc3jKHfgdJfS6EuKtow1pBzLYapPbRWOT0d3wLI0J39ivoOpK/J/0l
	 nm3R0bByU+Mg+KnR/qR+VOc6RFAVHQ6DwP5WMmKYwrX6PisjAMGxiyW+UbwT4o6XGr
	 2WptC4kVlrP6353s3xPlZNeyKlhOjGA+qzBFDWDJ6slycAuZPtnt4QkhzxQWoKBqQE
	 cMYQEfeB+7r48KMDDi4ra7LvlFwvDAJV1lmudWLu0IFEARRYqNF5+/cCO81Y+so0XX
	 +YChrqnbrvJSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F8A5CCA470
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 02:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175997579357.3701.17387070075851313067.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c982458b3651b8ad9a6c42e256c41d62f07be8c59e874663e5e952c2f8b2dedd
Date: Thu, 09 Oct 2025 02:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759975793
