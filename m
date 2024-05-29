Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41CAD54F95
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 00:44:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716943463; cv=none; b=EwNDLa7XOWCAHThLZkdVJwT0DgCF7RLDxWs2Ldz62sYmqBf55lUjj5+wJWA/C1YLPGz+wYIYj+EEWaV5IW/95R6un9Ce2GCwnGL6c7eQg79oSvkuFa5WyghykXRToQDbJoETUMskDNc+FkPXotxvNaFD8cqhSFQVTwlb5e077P8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716943463; c=relaxed/simple;
	bh=XqFzKGs8fssEKZvsR+L2WRT4z7BzKHk7gXDsXyegYCw=;
	h=To:Subject:From:Message-Id:Date; b=EoR5RYeHUasxkSFQnFew8IYLHa0iUzrXRdWI3jNg26XXo4RwKpFNxjDSQyrgAWY11XbmIHT6HwSk+UnrD4PHoM8V/F4RGR8ZKMngiXfw0Tkd3iWsTtAh5mEJ2VK/f9XD/wyyjYIC4astew55/WrtnK26xYm4Lt2jbNoOPizTD4Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZVlaH+6r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZVlaH+6r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA455C3277B
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 00:44:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716943462;
	bh=XqFzKGs8fssEKZvsR+L2WRT4z7BzKHk7gXDsXyegYCw=;
	h=To:Subject:From:Date:From;
	b=ZVlaH+6rqTJKIvNPdGW/gWuuaW8n3w+NMJzxufh+uHm+N/QF60fCvD0kdymxtogby
	 FgNL9Yk6GmuTwd9DhdJEIrF7mmZbd2lTf/T2c0qbld5ZlED3prQxTa/Zl646Q1BRm9
	 VlRpPbg+R5GQvg6EX5sUWe3g2aRp7ghdn7wD7uImVm7/yCZYu77rVF9iDjM3FPMlbU
	 aTKBsXkhno8ZU6kBYb3FgDf/cB/mHna40kTH0LGQM/7rO89fcK3Q+rznYQhxenwAsC
	 Y4kV45Lxd0lamfyYiLu2KfYzisH6WyNGhwIvELhs8SNMVNn0UEmgCKo6PLQRleic4d
	 QMWByrleLFQWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFE61C25B78
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 00:44:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171694346277.23761.12544243806526530527.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8a1eb6ac2743d7c02317b3c62e3f4e33d9d841c3ae9fd53ee27598ff86d5293
Date: Wed, 29 May 2024 00:44:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716943462
