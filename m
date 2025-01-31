Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48DAC1F94A
	for <ddprobe@lists.linux.dev>; Fri, 31 Jan 2025 18:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738349754; cv=none; b=NYygJkyAT65r1580ESMCdVPERuTu4sAUmWoXkuiQwHXeldRY2K+JW/eh9qLTlv35oLg/EtCe4GX0fgJbs+c43aFZYi7nvn2TbdWHyszctGnjgWGQefyJdGXB/e8wNnfIei2FDIewPXxCaGQ8DgpP4uapiBrPK7gT/ZPe9jt4VPo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738349754; c=relaxed/simple;
	bh=BnXDCorymfWa5CVdASzZbkLHxcWHqBaB/NQVCKb7Pz8=;
	h=To:Subject:From:Message-Id:Date; b=pMwfdm3vFKGlLw89nKhu/Kz9GvhcUCnGXg/y+MlrGD0vgQg3cYiCLKEjsMOu+p9n7OVUObbcIAGY/yeBhz33fH5ZWj4jFqIXE823X2Za+/BzhqGcEGZGM5o2nbnZXdAyvjqp8N6BQ1uDJZ17dM18+YdseFo9BYaI75RkDsuMv5Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g/73XxY1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g/73XxY1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0973C4CEE1
	for <ddprobe@lists.linux.dev>; Fri, 31 Jan 2025 18:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738349753;
	bh=BnXDCorymfWa5CVdASzZbkLHxcWHqBaB/NQVCKb7Pz8=;
	h=To:Subject:From:Date:From;
	b=g/73XxY1nAfJmPHb84gspQKNCnL3VjjIhXMXvxLPyazVVwhbk8UePFA0l19KJArRs
	 UhUj9lxD5z4DuczvYAIqS/kGUgjRpnM56t+jicoEEXUPLby3pN+ezf+L26jroIJPDm
	 A6xop3PFjo+CNQ5+NOS2SeR0Q+Qqn+/ZH4kzvjtm4ToIzBiz7gpM0/0kx2s5ofym0s
	 af7RxQ2rU5EG327Ovzr+i0V5ApFZ6Jbfdxv6Ydnup41cfy0BkVA7fFOYyJRJiEE9oA
	 drHDHwb0CRTqirv8a1eQXIVTpLoTW2SPx8j2AX2rpvgeKxqv1e6bEeLmdAzTOhlAaD
	 MasNpDJlUx+zg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AA4EC02194
	for <ddprobe@lists.linux.dev>; Fri, 31 Jan 2025 18:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173834975361.12406.15707630955926747498.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 61e62beb6ccedf464f6f6bf426893fa735e3d3fa43e6b15c4e9366de1aedd376
Date: Fri, 31 Jan 2025 18:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738349753
