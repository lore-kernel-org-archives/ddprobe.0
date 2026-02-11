Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B6391F91E3
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 00:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770770034; cv=none; b=jw7lTffY7sJzZg+T2ucnzgay/V4C/AFlYuAVHZqpDPyWHcBRVeSYTmmFYE8wBObgul9FhpC8E1qZPRFLYKs7pdHMAceOZXHnSUV/ZKG9ndPoKk6dKDMgSKbNXyEWft6poJwm7Vq9Jyfxj6mMxEmgWXMvb9iLKqgUqYNCBDLSpAs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770770034; c=relaxed/simple;
	bh=Eqdcix/9SB9YZxcXV3LrDB9RwEnAjx6Gjb8VyRYQUMw=;
	h=To:Subject:From:Message-Id:Date; b=AIq1AFv5YWwOQtqFHOqxynldzHvJuZCLpVm5otM69qiZw5oQsMIhzATz8FOOQN5I9FkNEn3U6jmkX/7pTYKcAQF2MNhr9yR5EQoboanV/R10ZqB16gnxHKOnbE61UiOrl5dzu9Pc1R2DVvSjzH9DmmZNZwXS32QpXgFwSYRboXk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BLmSsCwM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BLmSsCwM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1562C116C6
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 00:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770770033;
	bh=Eqdcix/9SB9YZxcXV3LrDB9RwEnAjx6Gjb8VyRYQUMw=;
	h=To:Subject:From:Date:From;
	b=BLmSsCwMhypSyromdNAvXW+WbXWGpRoDd9c2xX9M8dzyt/KQKZIucOiw960eEMUMW
	 vSlDwJBgpFsNgTaL5bSOMFf84s57met93hQ3eRN0Of+8wXo42bSfH12mpz1DPX/i/D
	 KpbfzT3JnZ0RhXxRn8wnCqF0GA/PbtIfwF1d91OHNaTWJn/bGovFlygikSodcxp840
	 +0T3EpSCJn9shzKwRrwvuV2pxbCMk3r7Odishy9QpuXriKpE2Ovwz9y0qrcEbWregm
	 1in6N4DAYeJLGRHFypCsief2a7mtas0sPU9RWfCUkgQXNB0ddUvUe6DNilUwUIbqJs
	 bFn+sxQ+YBvOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B31FEB5949
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 00:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177077003359.16617.14752859845168155714.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e4ae447476875f8a6aeb2fbc5056d41267b92da1536c9410ecff2bd40b95485
Date: Wed, 11 Feb 2026 00:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770770033
