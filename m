Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04E9C138488
	for <ddprobe@lists.linux.dev>; Wed, 14 Feb 2024 19:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707939497; cv=none; b=pIaFJlxXWWjA1W1S8R9aym3+jENkE116nku4B5jLXJAk5Oua6oa1mFIF4Dp275cgcpxcRUOtUCRmDzbQx8ZSNBQLv2m+dV4En9ZDIAx3L19P4EdMtbKx2tVkO/kLPvIl0NNd5NoCyG46A9Z7I4C1DdebHmlItY0RyqHqNno3+zw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707939497; c=relaxed/simple;
	bh=xjj7n8Ol0dBPkHvc757LMCcEIqilTF9KxbcCJta1WwQ=;
	h=To:Subject:From:Message-Id:Date; b=aLDjdwNOxixDzXIHhL4wUju5L72t+EUGJ/V9mq2yFKcfQQk2e5ngTOS8PEV5V/8v8jYViVE0mTzKKH75sM35hcyJhv2WhFS25w75sxgiyIEfZJ0RlTV7MBh3fhgR0ZVF7wr0X4iNSXdklGLGv+nlxnDaainACoq7GpNpNJJhB2U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lm/PBOYM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lm/PBOYM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F2D3C433C7
	for <ddprobe@lists.linux.dev>; Wed, 14 Feb 2024 19:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707939496;
	bh=xjj7n8Ol0dBPkHvc757LMCcEIqilTF9KxbcCJta1WwQ=;
	h=To:Subject:From:Date:From;
	b=lm/PBOYMT0QP83Wcf424r4SWUBr51UnEQNcxCTgDsMk++HTex9u5vBXy1kxP44eCX
	 ZCHC8tvF4q2+5Emjv/a2YbOctBkYJIPXw8tJ7MyzBFrH0bTCffUrRBBgmB3j/yAbaU
	 FPs09o08N9Y8acDv0YYNtMukKH88VsyHTpA/NUTUCAv2jfojq+Mv5xbzuUqXaPlT9Z
	 pV/ByDEGoekGJ2hMnXdsEUbduh5ijE5urOm0Nfcg4jagZfsQpiigt+59uuucAnZCj/
	 ROjKg3050c9yM2mdtuIfjc4h9MX1kTlqM5cTwcb/6HQfUPTgf5OZs85CkiDFykU+o7
	 b2gA6sqe+U+cQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6405AC48BC1
	for <ddprobe@lists.linux.dev>; Wed, 14 Feb 2024 19:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170793949638.30505.18003925469973023268.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70910aa00185574a74397274845fb5a3d28b186bf51aef86cbf5b951c18d58ff
Date: Wed, 14 Feb 2024 19:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707939496
