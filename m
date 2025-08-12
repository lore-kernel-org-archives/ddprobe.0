Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CF6D283FEF
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 13:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755005994; cv=none; b=et89HLJ8LSgt6kZ//0uyIyoUnnnlEuj8W2Rb3ceXXxo8pXsVzAvHWenTZbpkfv4BWNj1m+G2HtFI0t63rDm+nz+9LP6xJ11Bo4S4/aeNzylvdllkHelC1kU0P1jxP4KtEUNLIIUvtVjGMenpabXPvqcvs8b8gT5U9+xyqCbAI30=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755005994; c=relaxed/simple;
	bh=loFvWVNq0cxbdQKN1FXlR0sutmD0EsauqTvNYSi73uQ=;
	h=To:Subject:From:Message-Id:Date; b=bhBk46rmuJhMwBVjeylSRVG5xOW5b05EJQPBvWiN0ZjT/e2ik+L34HPsLaoP7ZtG8QJ2NFw1ybknODs8Weu5DDSPnyy7BS7aDdA3Aa5KhdNnya7+/gEX6JXWTNMa14U0FjNiUHRiDipMNIbtQET0Ozopd5A4dBhqBOLJCLAMFP4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NJ3Dt8s1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NJ3Dt8s1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FD18C4CEF0
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 13:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755005993;
	bh=loFvWVNq0cxbdQKN1FXlR0sutmD0EsauqTvNYSi73uQ=;
	h=To:Subject:From:Date:From;
	b=NJ3Dt8s16wQ89LRA+dbIGbgxLz91Fpw9CLcNud8HCJK0gTgaR26rYFxfpPVhbBY+E
	 53oyz4+RMPR2GSB5P9nVZcK4oXNfNcb4sU+CtcKDRDJ1RIF5oB5DRACayIa6dratYr
	 U8LMgrlwr0hVTvTCSBxcdd6YxaFIhl4KBweyzKHg3H0IBCm/bcgfljv+CREV0eHpdW
	 NmvIcF+iPpLQpLi7Rk9KfN73UK4BFpholuCuhnUvhFfYmVYtZl8ZVQSJNEImN9V0c7
	 MiJ/k7dfxDuqv0WEwpNA6ed85i4BlinJJNhFw5Cf5GEHRUWQQGmQcXEx76lNEqFopy
	 zeyqnf36BvyBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FCEFC87FCB
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 13:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175500599358.14088.15607730518025906095.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ff15bfc50e6913cc74d4dda9dfc496c8a7e3c6c54c634c2a63a10f49f01ba73
Date: Tue, 12 Aug 2025 13:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755005993
