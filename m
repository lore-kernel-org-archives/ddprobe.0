Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FBFA134CE
	for <ddprobe@lists.linux.dev>; Tue, 30 Apr 2024 04:42:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714452143; cv=none; b=NcLlSuwskkrbR+STuEbolk3fvB80KV1AISuNSDz3NXG22l3yxm1rYygCda0+vmMo7FHLAkCkuOYktb7T423YvlbI+4dB6SZL8JA9+rcL8iImpRKLVnlIjIEKkyXpvdirsjSEkd6tLi21faSOxq/wBxK02w6mPfVHGyEu74Y/Ou8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714452143; c=relaxed/simple;
	bh=SP3etIldCwxp0jj1ugAaM9jFDi03xncImlyZlkE+qa4=;
	h=To:Subject:From:Message-Id:Date; b=c3uih6kCZCWbd6kR0LHPIs1hfVcY69k96p7lnf3aEl0HdNrihHp6AzRQAIQd2uqyEGvJZYm1D9iM4OaFh3+zsqjF2Uw/2XxgS7/MzE4m56feW6Rqv2znXsCFvg27wzZxD/MfvYysF48mx6z8+KXoRO1m/JRJVEHlmH0b0ETMz/Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R519ynai; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R519ynai"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4F02C4AF14
	for <ddprobe@lists.linux.dev>; Tue, 30 Apr 2024 04:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714452142;
	bh=SP3etIldCwxp0jj1ugAaM9jFDi03xncImlyZlkE+qa4=;
	h=To:Subject:From:Date:From;
	b=R519ynai9Hy9kpX377KWLHXaYsmVs/qHtrHEE7RHcxbudYuLqOVn44nGNR9z5XEvr
	 A5VDIWd6PWVP3iDjXSKBz2d7xjFSLt55ySCRcM4ZVCvfacqkojyNA7UeEZO0JN3hXn
	 fIvf8xVUPHNPM6Vx3GCNE+PydEZo0ux4JJwLB62En+cTcm3cZqRcUqe0tGCwcQIYRj
	 Vg1v/G6HVvgMyGUdqVuDkaH1PmNwdJ6hvVb29QG5/6m1u4bVUbWDm91HG5hDzI7FzK
	 v423JwRH++xOX3twiX6jVQl5sxVEUvUWVIw7XamzNG95GlC4YcQQoEKH7Yom01T/HV
	 JiAwKmvn1zT8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2E65C4345F
	for <ddprobe@lists.linux.dev>; Tue, 30 Apr 2024 04:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171445214276.5264.15633050211277280603.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 720924b99ceee6276f2aac32cba7676c2c05ea29a9962e84ee33326c6e86ba5a
Date: Tue, 30 Apr 2024 04:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714452142
