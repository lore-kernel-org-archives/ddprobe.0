Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32B0216A956
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 21:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743112194; cv=none; b=EkXGY/+z2bNIeEx2zCCjLJH7CFihTDizLcAFO2G5F/4CXX2+ImlP8EXNgtPsfO+NPVHbsSmfYqYA00LInPX9kmpr5G2Zt7BExvwbNBt32rFrja3y8jVRzTAPp43CthDZmIzadG3E0pssS49ZX2ej6k4uXwOxcijj8AznEM14pw8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743112194; c=relaxed/simple;
	bh=hSWlPK/jAcu3zSu1FLk8/Thp3b1o557pmYhCw0CeTJk=;
	h=To:Subject:From:Message-Id:Date; b=KK67AiiQQXKJVkuQ/EhDuISbpaxvbLtSqV5B4A7XwvwfH7rg1ZLBcvzZ6uwqRlqM1nUmbkKS49+ztJBMBiV4veI5/LcTyY2x3G86haYwRV9ub/irlDeXhJ8WsRMwNT80PLJR1KDylts0+05RHydg20SPvRIxFlfGT9G2z9bY5B8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hf9jt8St; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hf9jt8St"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA558C4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 21:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743112193;
	bh=hSWlPK/jAcu3zSu1FLk8/Thp3b1o557pmYhCw0CeTJk=;
	h=To:Subject:From:Date:From;
	b=hf9jt8StFzw43bowMjUKgP0dMmHLHvV81k623q5ZniUQGYJzdK2qEbWd+h4jSSz1A
	 Wd2x4bd1VnucriZC8awVZlCK3vQI4oJTZGMUN9Q2ZxVDB6c0ZY0wt0frK/rg82zo+G
	 1KEYjzC+rB1iI4JxYAHsnf2/R6MwAG2IpkUoGrWz3x9KGcoImLADGUadMjbIPMOw5o
	 4oVlI2kjDA5EDQWVn/J3RAxgNVRDIJjItHloqAKvDup9I0FmAFyRzDDDgi1cP+YgBc
	 iMTxZF8pCN9mfVFqV4+/hooCCrJYjb9KXKishDim6i1rY3Gyj47/azhAAo6hsK9s3X
	 bCH4GbJW06lEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94598C3600B
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 21:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174311219359.14746.6722007212468849338.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 259501df5e1c0e2434d4581d9d6bc204888d860588345cd3c226ec43fede1cda
Date: Thu, 27 Mar 2025 21:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743112193
