Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A9E922DF86
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 10:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753266594; cv=none; b=YF01u8OA0n6/Tquxe5oSrFgRMiHx7hJu98mp4Llff1xMWYC1IBvFe7SKKzBrDAt6vqCN5NRWlLajAI8ZsHo0PqlWCs4zJgKcQvF8kAG+XB/yf1D8QRQsZFLE6npPOgyV5/qeFnqW6FHGpG1MbaX6raOQUho6s4zlyZ0kioqyEfM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753266594; c=relaxed/simple;
	bh=KsSV4pq+MAHl+Bmu7bDzUs7uY24RudIqcamrftvgEgo=;
	h=To:Subject:From:Message-Id:Date; b=i0gpSU4DjBsNuGikavF84j/sc5ddqOvHKTKWLjZpYih68FEDNZtM3nlpDQy7yPpSUUbrSyLqUN1eewJmmwqL+1v0hk59ijaxiTSRkHgXdDVNXOOv7eLMWK8RWwjsPiBiZdSaWcEWsNtdS7aQGPmQknBVZ8dJOqncYQWNT93hUPY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nL+q3C8w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nL+q3C8w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A125AC4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 10:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753266593;
	bh=KsSV4pq+MAHl+Bmu7bDzUs7uY24RudIqcamrftvgEgo=;
	h=To:Subject:From:Date:From;
	b=nL+q3C8wjRwRjVn+9Zb72keAkAs59dwd5IMPjrsOp9WU37QYDOBYvMVbhbIDmrg45
	 Whd2HgSxajxsCYXqx1e8TutYyRSVo+CyDT1aOL11nNF35B1iElN3DfGoSkvCk7fuyE
	 us0f2dtl/dZ4Dja5lcNSr87lySVXWKc0+oNwtjY9WzuSxzB0OzOpUhlWixraWPIuwT
	 4ZqCC4fBbI/S5LQ6slEvchBKijM2fIKgunLvoG5wi8IfCaJYOIdF/h+10F7CwlXy0H
	 oGUqwWPDwP/udLj1KFCuTDEu97aXZO9gdL/hAWBKcB+7dHJJUS1vN32zJcG3KxAdM2
	 yq750hN+ZRxFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90081C83F1A
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 10:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175326659358.21509.2725151465972093382.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8851d044b1cb80b19d8baa5e8faf47f2bc1dd90f3e4ff6ba79e0fc2c7b132b93
Date: Wed, 23 Jul 2025 10:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753266593
