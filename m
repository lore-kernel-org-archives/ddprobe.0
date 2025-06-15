Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D5221A76D0
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 23:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750030794; cv=none; b=ut6dmKC6MtImmXIuLpknGymJh+UGZoGSfhFrox0juqYyKC3FkU4qZAFh16eJzQJMKXhQXq1eegmTGlDUAHT+xZ8W53Vi6KJk6/kQihu+gfmDXAYxDTSlHwycPFR9HkJGfOt6kh20rrk1Q07yaEH4PO5TUv3mmwaKx6TfS6+3cSM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750030794; c=relaxed/simple;
	bh=0jJbWJch2HkV3ieCqUdscHBcTVqs+R+7HZGVeUfUFkY=;
	h=To:Subject:From:Message-Id:Date; b=r7jQuwAmrRSDr83mMeIvxF0lkCvTE5RzctfCM9TSTzBohlKy3xmFdRSYiYt8m5jN6cc86MQoiMS8zqD1FgY19XLmudOYaxdwBZdVxJjxJ+eyQ9ByJfh4yuL4a5c60teFJmiBRsp87iQ8TLaV4YQiKupitDbH99rU2yIeNTYzDL4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fBBQyYMM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fBBQyYMM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFB85C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 23:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750030793;
	bh=0jJbWJch2HkV3ieCqUdscHBcTVqs+R+7HZGVeUfUFkY=;
	h=To:Subject:From:Date:From;
	b=fBBQyYMMusGI5bUaPRGceTvtlM3JiU0kZV767kQhr9XOVJDrGgLqM1vlMr9bjz2SU
	 z3wD3VFPaGuo5GcrgAEknEb3r+LUC7iuQj48c4LGNAvN0+5TwDJwahjgEbf1BzrDJ0
	 uxvRhXI0dOxGN73Q29YlPIycNH7zLrgb//xiyenAuNLWZTCaR7jDVxdkxZXtlzsSGo
	 XpFwHJ6jzN3u8HnH16l8yD3moBkUaNTiy9wav5rrs0jsuCW910CS9TLaF3sXI0IfsP
	 QeMwg1qpvJlYreCGhOochpBbAdbn+8DzSeNfxi3WVGgPt2QkGhDMF3DpBgnoKlBZ28
	 7zeuAIMCJ2EuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B78BC71135
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 23:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175003079358.30810.16878105164700257068.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: defdb641f90c94aaa27ba98adf67210e1422e1d861dacea533314e1b55f1cd8d
Date: Sun, 15 Jun 2025 23:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750030793
