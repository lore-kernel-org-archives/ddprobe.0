Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CCAD28002B
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 17:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774115094; cv=none; b=I6K2orRgQ66FOIqQMRcB85H0vlJtQ3jZhdwEpr6pmQGjYPeNY8Q1MpLwUYmBF1v7dxuYZHT9ZbARrosAtURzTCGibaBE46phUijDfkmKtrYEEtMlpwJn3sWnH33ijkSBVHBXJMIkUQOYKD0AuHH/9aY+U9Ibz5Dg5leNMcVdLRY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774115094; c=relaxed/simple;
	bh=74pHIFc4NzObNbz6p6PMK4+68PgPtb8J4GBq2J2LDx4=;
	h=To:Subject:From:Message-Id:Date; b=jWqe+qqztSp67zM1bk1Y2nS+pTPw3pizqxPcIuOqqBj6N4gy1o8OHj6XyEnEXeYYSlk0p0VkiA0hgUGc695lSTQ4M11MiGg4BWoHbT1uYS8tL77oxxn+J8lz+A3B6pRrhVDWY095kRmsUr0l0O4SH/uggk7vZCrsMfyBVxly1Sw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mYTurMUt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mYTurMUt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0723C19421
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 17:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774115093;
	bh=74pHIFc4NzObNbz6p6PMK4+68PgPtb8J4GBq2J2LDx4=;
	h=To:Subject:From:Date:From;
	b=mYTurMUttYbqvlP9lsiHEwFyu35u3sjfBeTZxwxf19OWGRnPPR6RZhWIAHmCC130D
	 Louqria9HTpzipBhgdoxlxkSrtoHjtI9vhcQ+YtJ/K4UXX8PAB0YCTvOV7EN5rfWfV
	 c5TaD8eIGbUnXdi5tsnxrrrlUHQU8lIweShIZgjlwf9BL2OHEBMcoOA713PmWlUsBm
	 M5jOGSHzqZMZLL7md1Uue0d/Ub+EcDVNFF0Kh5IZmuYOmkqywX++Fwzu1Lqba/N+EI
	 BFi21RraYaU2tc0D7S+RyMiVikhy0iCCTS0zwdDAdjWsp4TiSAfXAzYWQrtuCkVezk
	 m1HXZfzDlQlTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EDE9109448A
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 17:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177411509357.25007.15184247726923207725.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ea106633e3aedaa03b2911675243dea9045f329d08857a3cf32e1e7b97cda9c
Date: Sat, 21 Mar 2026 17:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774115093
