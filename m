Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67AB747D938
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 12:28:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782995314; cv=none; b=f3TBKGFYOKjJ6YNCItcQl4P5AJ8zKjzzWCQ84baz7aQcWLLZrjgQkJ+mLi3odvfa87JPhnmVX2ExeDTb2zqP5P7M3vD80kpgAnkCcsrUwmXWtLFqnmGiZgJZLvVyK9KAyNbM51i5XOuJ3jm4D5sky3juM9nK3J4wL/bUoZZopoM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782995314; c=relaxed/simple;
	bh=4hdXQ7yIha08bAXzQe1li78p34AbPUaL4PC9H+tNGk8=;
	h=To:Subject:From:Message-Id:Date; b=NKKr1hyVlSfJU9swpGDHoUPOl7hYxc89uwzXoPV2wx7q8jTkzxE8FC2gj3tvkavJCLULbO55HSdkEbtrjAyHBvryGwxZJKdMxMELoXnTkho5tqNTSK5NhhjkDB2Bng9sxqYR58pfxhQt8L/bQuQm4QwbyQ86sd1QvBSImEdExQ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HqPKgNuH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HqPKgNuH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB4B8C19425
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 12:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782995313;
	bh=4hdXQ7yIha08bAXzQe1li78p34AbPUaL4PC9H+tNGk8=;
	h=To:Subject:From:Date:From;
	b=HqPKgNuH/DIB3HMJ7oDtlOb6+mWLq3Z9IzN/a1bE4sqo/lCFEGDkcS1/xPBKF3bsz
	 1LHsC2G8MccNR70dj49O92Pmagy3NGWtTOSPysSy3Txez28Q2zAjUKaEoyZICEqE+m
	 4OT7mGh5v7P1icSeVT4KZzbscKBBtCAUWNu59vDaTORRfBqOtUZsddwTqDmf5XKL5u
	 F6V76Q1hp8+5FKdGzWC7SxoSYlSCxM6GgANsTT/fW6dlMAitzwGGzb947lNr6NmKF5
	 YMwQXKBXQ5jJ2upv4Z1fjVy95hzEyqB57D+chWdA+NBqK0+82j/Xsj+jDYgMJ4Ac7P
	 pg/6tPqlGyRnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8D50C43458
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 12:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178299531368.12785.4330592571113497660.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb282852cb77712cdbb5be6c1d9c61fb58bd18aa9e35dc03f6d03839371799cc
Date: Thu, 02 Jul 2026 12:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782995313
