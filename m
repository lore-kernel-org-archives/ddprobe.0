Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 544B465C
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 22:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719181943; cv=none; b=QTQi6JgJV1M8xjRGV/P2YuLBmWsiZ9OomvF9nsEVgNRZSBaFIrp+wec9Zuanu8mDPfXmObIs6HZTB4eQnVM8WfIZWlHjkJ/uCEFy82daeOqx1TjovJwW29LssI08snfDmPikBcIail40GO2bxrgfkNg4wemJY9VdgPq6KXH0Kgs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719181943; c=relaxed/simple;
	bh=2CMrlR34vrveJqLL45P+Jgb4Zbji5F2Mlbmtn72m+Go=;
	h=To:Subject:From:Message-Id:Date; b=TnSkrkhqiueM5MuzlhYlWBalbKxzA4vUeSM4JH6Quld9CA9Xu9odrCO4zcx7N+0YbcnozhDYot6fyYr8zKmjlyYXBrcvfN7/reLSNdmNSqP3k9PyfFkiT7zJrV20DR1os3URTq7r0IFUPeE4/4+4wbMotLeST6hu7rDhZVLKrnU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U3IGLRpZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U3IGLRpZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA40BC2BD10
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 22:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719181942;
	bh=2CMrlR34vrveJqLL45P+Jgb4Zbji5F2Mlbmtn72m+Go=;
	h=To:Subject:From:Date:From;
	b=U3IGLRpZcGlwaa6RiUlsZ+AuJAhnsWui7o4gG3Q5usQ1WqH4/+joxLV8G7T6ppypj
	 5sqaX7ua2xDgZkKK3K+EySoLLGeJtXMXUqgUx4fITnzvkX6xzyya1gjTEAaBIJxIPz
	 BjRqYDMHc4+m0jOSayFK/n4aKQUzwWo5ufCFX5wIuHJxmqps98d7DIOtxWz8byUJNQ
	 zUBYMW+Ri9FYYI+tvadq2ywzv3PDrcAzmdGYs/TglLzWEgS4I6IoB2Gl+RrPh2tIyI
	 PVMxZOxMKm4yrs0x1NiSelYn3ojv7Rg5xFX+xS6MM9z9GuV4uCpKyX/bsGLVPtWb8B
	 TkELBGStvbDCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7A71C27C4F
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 22:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171918194279.1836.14808797859225156031.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f6971ba046667d43b56bef61555759024013db26839e6efd0a6b05c14997210c
Date: Sun, 23 Jun 2024 22:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719181942
