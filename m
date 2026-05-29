Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37D2123E324
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 02:32:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780021954; cv=none; b=VHCN4JzCExeBVnr2rcZtwK7Aqrzkb21E7ZMmj624zJd2+qNAgToi8Jl7PtFK56y4rDfj/q+OhgMG6VWh2kQDgjzyNaSxMLkHF7X0KDjKjwlDloYn6pzpqL5FIq0pK8ey5ETxW01T0Vf3/rktJdYQc1aJfbx/x88fnzwBy5dpu8g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780021954; c=relaxed/simple;
	bh=ehtYfC6mYwV7IB/u7GQhzCubebsN9QqDPAiZ/5JhKLM=;
	h=To:Subject:From:Message-Id:Date; b=sEiYSkjnAHgH795pBtQheHem/WGoi0vprxs8kg7v7RQpZdwBQvx89rzwCp1vQMCmO+ChnxeKWHAZ7TIA2+Ttxjc/yztS+itIAdaTdhn2XrYhF2FWo7vMw1Z2LSXoa7zVmDO49RqQBnqPOSffN7zuyDTdFMZ6DKAlxHYtd4q9UjM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cvyjyKSx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cvyjyKSx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1BD2C2BCB4
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 02:32:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780021953;
	bh=ehtYfC6mYwV7IB/u7GQhzCubebsN9QqDPAiZ/5JhKLM=;
	h=To:Subject:From:Date:From;
	b=cvyjyKSxdN2Z9xGjjsjG8ulEJr8YK4B90kukRnURSDd9w1i/5O1iCyaxt2ApS8/nz
	 Va0nHIPGQvzNxEqcoGerrd/lGaN6Q7lpA/DoHs7ZjMZT+OJJfMIiPQT0cXuGknbwke
	 kCqhff2jp7JZV21gq48X7MT86KEiOF8Bysowt28m2o1tmWhRydrlhJKTmUUEsKGX1n
	 7JnnadaDr6mBQ32TdyXxOyGQ5t/u1cqq+v7Q/VBbXjVAnX7ZaN1DBk8gHOqAjlW16E
	 iZLswo3p80hMQD6GcBFRLKpI0C6dK6XtEvoKgUFkedwnr2fTrK9DFxpSD+4vDj3Zbe
	 z0p8KFarWGFsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9873CD5BD1
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 02:32:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178002195368.4683.17612213579911035172.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5cb21cb32040b3956122802aa5e4bd3801a46e27bccddfc35c24fe41970f78a5
Date: Fri, 29 May 2026 02:32:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780021953
