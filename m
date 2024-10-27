Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 412EB1D545
	for <ddprobe@lists.linux.dev>; Sun, 27 Oct 2024 13:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730036754; cv=none; b=QGzbPtDL5VlL8J5sQgVvWbk4n3pyadrtOD6O0BOdBh/GAlhGVWrqusjEdo5Bly9vNys8DUKXI2/FeX/KtNOEAAuqDomo+aC40BzggtQ7YIa7UVUova1hH/pbfsejeo3Nyy8oH1M2wA3qFaXTS07LSIWsviLHLMo9yCtPJNEYetg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730036754; c=relaxed/simple;
	bh=0fvlzIqOJckK30jMHsf9Gbf3wBB+s2KRT3ldvdV9bxM=;
	h=To:Subject:From:Message-Id:Date; b=Ep6h1+u/ZJ2SeLMg5F4GAn281nZf6d88IHDk+0Vxjcnm0VhAVFw7zi59QeWYIT1F7NG0dxKG7GMaUEGSwM4G/5xqJ2i84vkFGPcKDlJ7hoLqaAyxwmYMgqcjM3W/8jhJ1oH99tKaq2BCFL8B27BdzcfLbkZXSTv5YHvl3ZhJ2nw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=okIp8++/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="okIp8++/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFA59C4CEC3
	for <ddprobe@lists.linux.dev>; Sun, 27 Oct 2024 13:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730036753;
	bh=0fvlzIqOJckK30jMHsf9Gbf3wBB+s2KRT3ldvdV9bxM=;
	h=To:Subject:From:Date:From;
	b=okIp8++/Vxy5mpllm3mkvbRNOTGu9txNXVAhaD7g8gx7EyZoI8t3/BGVP9vx3jM5p
	 ufKpzh4BzvivaGrsjX1tp5n5QgSXayzK8W/JJgNvl42AmLPdTR0GcBJErsREHnkx2i
	 R0Xzm72KN45DmjY6lKyBkow72x6kCFyuysXhNwBgXZsvVCd1fJGFqOguD33G9TqgPq
	 WUyagvC6yVxQqMUAkt4BBDXGHjKh2pgSk2V4SzddhpC88qz63NxsBxdTNTm7dN545W
	 XhamNM8DFp8wBuSsAsRtfxhA/TuWA+5zIkua5gmPFV5Ne3UQJIyVhTzMGSyLzoiwVT
	 i/fC0Zj5doAZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B583D13560
	for <ddprobe@lists.linux.dev>; Sun, 27 Oct 2024 13:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173003675360.28408.12917571541262753981.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d33e1724116573f7b0e22618cfa7848d6861ef9aad2d4833e15d2f81bd54bd7d
Date: Sun, 27 Oct 2024 13:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730036753
