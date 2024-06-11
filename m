Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D6C7176FB2
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 14:38:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718116703; cv=none; b=HOKz4KaeJV7bRAd7MScA2Bo8DX7sFh3IYr2UQPwy18M7Ms2yT4kKHjfNIfSjGkSmc6hXjKJSPsMEtdPtkRYsz+ABHBR9K99qtVf6gC0YmP2mPh0UaA2VpKR+x/CCR9SRHXtLMi2GiLBpDS1v5w+dns4i7kdrx3kbn9uF/mHB1cI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718116703; c=relaxed/simple;
	bh=1qiFK5MAzQhZciE/iWUvKEVq9AXo4NXkINS7QJDrQSk=;
	h=To:Subject:From:Message-Id:Date; b=KD88apMqrNBxQ6PsSU0pe3zeVg3TWpNoO3Hz+0yRJZ4x0e7MReo1JH9aaypHwWJgXqVvowVDdAGuZnKWvr+QBqe+p2Z2jc7UKREtdJIY1Ew/ApLDnRXN915myTrjY35005Q/gmVuSMdbQ8KfTSM+RHIyAL4LigbfTnc56EAMMck=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mPJnGjkP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mPJnGjkP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7F64C2BD10
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 14:38:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718116702;
	bh=1qiFK5MAzQhZciE/iWUvKEVq9AXo4NXkINS7QJDrQSk=;
	h=To:Subject:From:Date:From;
	b=mPJnGjkP0jrPYPdTL2Iy0FJkCTPhzUatdWZCpZMV5Mj5ebJ4QpskqmOW7DVtPOMOQ
	 RW/qwo2BFvYYuIfH7NXC/5VGP94b6APnttpUBkSO5QF5EA3mRufzoMOT55BvcpBDoF
	 aHUFChQVZF7hFWWTt+lGsxn8EI7iY6Y7KnOHs1anBjJ8yRCOD5Ydc2X2ZXuJzjGhXs
	 0wxvBSkz3jnPsfIyPdhkVEWBr6DvxyTe9dHtIzHlNGiB//zhPXoPplQNzme7t2W8r1
	 cIB9cqtMx6yGY1nlET5wuCw3yhlo6n72NACps8s//cY+NskPfsEcWc0Q7W540u/IDE
	 nPyQaaGUQQzeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2116C27C77
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 14:38:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171811670278.30874.12317589199525459237.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 58baa280c82985cbebd951d5c40221b887938b91274f07dfae61bac364031557
Date: Tue, 11 Jun 2024 14:38:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718116702
