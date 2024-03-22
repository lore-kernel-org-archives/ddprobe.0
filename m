Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF30FC127
	for <ddprobe@lists.linux.dev>; Fri, 22 Mar 2024 06:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711088297; cv=none; b=c2EbBBXUi5zPTqXClj9vih4R8+NhN3obmCEFBlTmKHs/Sn408rMj9MNru9YhnvVmAiILbwVgBA2s1jh/VsGcPRE4Y+qYY3cfRvm5svn5wCAFSYvk581nlG/FQt4aj6q1Yf63NCM4iZ6Agv/B7/Q75g+jIqb3mWiUko96ZSvmrQ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711088297; c=relaxed/simple;
	bh=E2nn8MO44tblS4E0C/sxRgJpHohApwHlEC46r/7p38w=;
	h=To:Subject:From:Message-Id:Date; b=Nt24M0AEfvm8gbIzLaJZknttaolBZWNaDFX3E0BMKJWguoPpZaZCuYPRAvSXxwzwl8YPRT7fA7lpIot8Yx+oiWZ31y80+uENuPYFBEJILiwxdir++hbJppGOQWwSF1it4GcNuN5zljkHgCALii0lEpa3/+rLqU4glGMrKR4ITL4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CuE43zq8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CuE43zq8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 784F0C43390
	for <ddprobe@lists.linux.dev>; Fri, 22 Mar 2024 06:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711088296;
	bh=E2nn8MO44tblS4E0C/sxRgJpHohApwHlEC46r/7p38w=;
	h=To:Subject:From:Date:From;
	b=CuE43zq8fRkhEBVX4Wpptoa1gfmnDskYlSCQUkjjjrkSAxAI93cfiAO1y9abM7N3d
	 uh3YgujtyG99aUBe0fwO7EwWr1QFSrDbgHYLG8HOKy9/aN1AmLsXzgNAHArxwTNyyD
	 jwezfbaJ7QCK2KZf6OifPPIuNdy2LJgnf5KQskzinCFXeeah9YrRlIjYCI4NkSjTGh
	 T1Ht+QRTDUmuGTLOI0hQ0CdTYrMU97ZljXMbkuCSZ/lStlRlDUvnxRMIgiWSPKwP0Y
	 OiwKzM55vAbjihKDzyu9cZ1Y55vnSjqfUz7+svrxwxgHrw6l+tMzlcNBh1LVkOgvDI
	 99TsMTxMMv88A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67BA4C54E71
	for <ddprobe@lists.linux.dev>; Fri, 22 Mar 2024 06:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171108829641.22639.7966362704657588317.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a0b7c34b3d0c9e1bae63f230dce788a4c39086a486576ff828caf2a95f20b30d
Date: Fri, 22 Mar 2024 06:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711088296
