Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7268F3A544A
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 11:54:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773921294; cv=none; b=n6LoIOofVV3siaKdPGF7QeG+Es/t5qVSLa8FAtvkqo3AI22jmhTd0R8M+HRWZGP3RobSB8ruqEye5QL1C0dThPQ9ylWLPrf2Rp2eFFbCCs05LNJFIJXrOSTknORRCsa6IylFIiiWaWumNAhIBrSH9Htif2Nk48/Km8rlJ2SvF/A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773921294; c=relaxed/simple;
	bh=Coe4+tRquiwaTZmZsp+RxXT/G8mJ9TRjaTM6IJSf4Bw=;
	h=To:Subject:From:Message-Id:Date; b=MaPt8nwvc3Ai6BAzWagLOYJl0HW/zryBb/svYldfo4fm3/VkWmw5ZxJvxzZT491dxHRciqmouCtlKI1Hy46UJrokIWuaty1A00pyHPv6BUf4/cM1e0tq1qBO+DVlmEEy3+NNBjQjoaNvbd60tDsd7eNGB/y/QWq/5GPwirjFrNE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LDkOvZ2Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LDkOvZ2Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3747C2BC87
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 11:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773921293;
	bh=Coe4+tRquiwaTZmZsp+RxXT/G8mJ9TRjaTM6IJSf4Bw=;
	h=To:Subject:From:Date:From;
	b=LDkOvZ2Q25pMhu6+ZxrZml93aRJ+M6aL/iSBSePlhRYV+tuN6rFD5sokLGEXPUfMB
	 hxN6e6hRjpPOC5S6pdnZnhYmNuMnPDVfeEiAq6ekfCWFFOF4NAu562jbWsRQaMHiuT
	 t1SuoHBOOqEbDqZFSKdi/dxY3z0bXUyr5K4pL3hLhrbvuUN3QEjv19P/PtWrBH2Jyc
	 0vt4Gkk3WP8ivRvJuYn4rOcEut9jvh+/dweyEiRx8deAM0l8OCSnBafUTg5sXLdasC
	 0Ovz5ehhnoWVfnIcP1jBYwE0R4lgFR0iKi5lewrgN9lEhVrxi/7PgDstDS2E+eTCvH
	 gNFuaOEc3mEqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92C86108E1F9
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 11:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177392129359.12470.7491663136312949003.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a5c2acb175562908a50863c6835f2c20ee5d64b117a5af74836ac00f70953f0b
Date: Thu, 19 Mar 2026 11:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773921293
