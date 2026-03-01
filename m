Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 218F728690
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 15:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772379294; cv=none; b=anRgPTbdnTIJVGCu2nTnBZFj1UgulIuZYMGo5ciuE5E9uDGA5gTo/FPsNYL1P3/hMHYRtPgHgvSm8TdENiwpsYmFpwdNiBKrmvP5D3HhjaFfYxhHlcCAZujlqmN1vMGEwQPbIOFYNRYVu9LWASaIQM+uYoUmBKSevLkbpUL0dvY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772379294; c=relaxed/simple;
	bh=Utjx0aGNNQR7j+o8JNJGEaJBM+Af98HqTrVEdd9Xp5s=;
	h=To:Subject:From:Message-Id:Date; b=OcfB6ez7M7x/nyMgkJodHsefvIdmm1PwTVi87367JE3OKGxbjZiBLmpGFBJESVXmKuKH0k+NdbGG4HFO9c0ZXXc6wE222PRJjvPaC/DCFD50TTfe0PkpflEoo2Gk1563DLlw82he9CNbYQA36LyF/7WeAAbkEaRa66pmSqIbkVk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=blYyu8SP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="blYyu8SP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4A5EC116C6
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 15:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772379293;
	bh=Utjx0aGNNQR7j+o8JNJGEaJBM+Af98HqTrVEdd9Xp5s=;
	h=To:Subject:From:Date:From;
	b=blYyu8SPS5DTzKN1ekMHdRA9/f3UU+T1vOqRyYiyfRCil+gYXGAXKEJ1ISDxZGH2v
	 Ovyf1IiFyKoisc/EsFvmJI/Qtbc1BZXC7J+wQWQjJQUWRSCTyWAeF4HMamR5mI39uJ
	 749bCF8gU4br60+LBR1gyC10d3CcptZ0OPo4pkuB3YAutLBoG+oDc5ou/F/VAhcxjv
	 0SB0tmMYSe57Q5kcthyQO4EwWxxJqKHK4qn/ZdfV08EYhYHGDIDViNE/JNg7VlMCSr
	 XLM/NSSHOdSEv9gWnjo97FDqVjcxGiSh/YOZOoFYL7d9WMRToTkV1UF3jiczjAGS5N
	 6IadAMUM4BB5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99899FD006D
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 15:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177237929360.11523.3627090032599203820.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 53a5bf7e8de562d6bc34541f148b8849d0f5d86722e3aef0a792849930f76ac4
Date: Sun, 01 Mar 2026 15:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772379293
