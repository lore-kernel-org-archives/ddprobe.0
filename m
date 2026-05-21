Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 924543D45C8
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 12:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779366634; cv=none; b=HdqDxuYxislorBQkw4DT4g8rHh3KVqT7AKHyA78wfoGfkaMez5Zuc5Mvg7an7BY/chCOjWSszqEf+QQwb+9EPdb7Ckt2s0BduNpuE/kOI4yxMkFDUeTWYX6NmEmcTTxcFppo47uGoFIptZYFkVAH2ZF1tydScUqjfxT92WwNLAU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779366634; c=relaxed/simple;
	bh=cP0DLYdGO+YFx569mmmvThzqHa78kkLYMxEZ7taFHIU=;
	h=To:Subject:From:Message-Id:Date; b=CZcnYjUvClk4UBlvagdpFAQX/5FMvlHIRLB3oKHZXqiuh1Dn0UNwxW0bxnxIqkg7RSKyb3ef8l4VXMwnS3XESvHp/GgBlccvXjniEU2aHJJEhTg4lWkObHBTrGDYlkBbqoOR0PxFzPH6FwfzCncjM+k3+OZfXV3ymdGtY9YSRzc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uXyLXcfY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uXyLXcfY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C87D3C2BCB4
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 12:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779366633;
	bh=cP0DLYdGO+YFx569mmmvThzqHa78kkLYMxEZ7taFHIU=;
	h=To:Subject:From:Date:From;
	b=uXyLXcfYH0M+TGKGZsxKuaD0McwU4iPBMaLjdhU8xIZ9ICOa0Pvh22ZyUIKyUr3pj
	 Q2/1A17gVw5IJN1nFeWblDZVRD3lwqJ1eAstyP0Om7/BwBv0w+bbwjqytZxuItxi8Z
	 LoEqnAM8kTb/XD5X68DDggTd5RIu27hwLFA92YgzrtXteG+6hZqmW0Wv+LHX7j/LRT
	 FrpJpUw2vMjB4tBh8pHXdmH0XCfY5bV3ThNfYhEfxYII5Ta7XyqDn1hwkvlz8YPjIk
	 eoRYuR/D4lQss4iFMaapaRepLxNwu1r8b1e8t1EcJl8TXUDDnr0GmUJ4Aqzh2bIEQN
	 H16opiJFjB9PQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADB4ACD5BAC
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 12:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177936663368.26015.11807270934453904000.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 99de85b67fc778438e8e5633e173cd008996c47c36fa57cd9dfd757e91c8c1ab
Date: Thu, 21 May 2026 12:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779366633
