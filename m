Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62EB111184
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 03:47:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717732043; cv=none; b=fOMt0WOuN+KMWxHBnbHXYEOvjo4FU2I5GUqHnKQg2hqeGJ9tzty2judMqs3rAAUkCuOVHPjqz3/7GHd61DK4CjTk3nq9tiCcWO2yULcv0+VcZb30H1SjCao15Au25ZW3BxsqIEcT3bUxEKavmrCu8d3dXAMheO0hkAnkJulswok=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717732043; c=relaxed/simple;
	bh=oy6U0s0JD1namVug6xGqdzt5T83Bl/Jpf6mSFCQOD+Y=;
	h=To:Subject:From:Message-Id:Date; b=D6d77IBSMSNCuy09pLjUMLhh2nRfpWj1UJwXh2hO8RkTRDe7FP9shtDY7svPfxMI8H3ABxN8kNSReOeETtHZron5SptQ/dOWOqvooKo59oiaIRnOnGKtltq5PPSmq6uiZbbDTkxopNeCXhO/xic+s2bkWfAVYTamqyE6R2dmpE0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m50jn9WP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m50jn9WP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E045FC2BBFC
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 03:47:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717732042;
	bh=oy6U0s0JD1namVug6xGqdzt5T83Bl/Jpf6mSFCQOD+Y=;
	h=To:Subject:From:Date:From;
	b=m50jn9WPT1FQDb80NKRIGdRM/yGLD8JBxu0ZEHkcSfWqhcIgBhXZmnkeuY9P67oy4
	 aB33tWKXttD1cdrE1b2M+CN5oTG7YZLfYL/+u6yeIXGUdNKKY4NPsylQolWjA+nxfB
	 bMcyRarQqmv6ILB5MpU/t3kjSUsa2HgbiKjWwfcTrNM21Hzw1Jm995AAKOwwhTxh1Q
	 a5pHszw0vznS0ohhpMZ9/kHsQuB4VojzsdbnB/Y9cAuE47BUdAglb7mYE9kJ9Y1NXl
	 Zu1YaodvFYEcj8pRe5IywFln02qyI8T875k4PFF1nlnUDXq4NrmkmlWsGTdSpmEbY9
	 zdd5re1hfj+gQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8A8EC27C53
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 03:47:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171773204277.7201.12960678337196527320.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f54918d12c88ee1f3d2efb3a26488ef8009beae7cb9b48db497866a2b2eb4c1
Date: Fri, 07 Jun 2024 03:47:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717732042
