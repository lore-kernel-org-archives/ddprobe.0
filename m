Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B7C41CF8A
	for <ddprobe@lists.linux.dev>; Sun,  5 May 2024 13:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714914143; cv=none; b=SCLLwhWzUsl/K8IhZVCzMYTcLV3AtiVD7jkG1YpqJRbLPJa0B08cNKMAY4ZX5u5KYA5atoXuvgzSxN/YBjBEl+xQOEzQzynagmZqoSFavALMIxL98frwR6jjxYuZQ4uwPXkf0qMmRuOGZ28zHADlQyVSdE3p1hPhJvvy1q84Da4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714914143; c=relaxed/simple;
	bh=f7eU6BhwGhbkTqDK7LbRWamCfCtp5YsvERqCPF6bGQk=;
	h=To:Subject:From:Message-Id:Date; b=YAcmebof4LF6iPSAU74HWOU2+wNTZ+n40DPZlIJMtz+Bl0L9nhSAe38YOhRyXlwgwLR1pneJd45DRwtN8+3C7VAY9pHBKfhf4W8i4yAQm7mBdMcqHRd/ZWNkhE0m8SMbvTEM2K4GWGZHerHF+34b1Sa8cBUKoRN6DJEBACnI+34=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=axGu78sn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="axGu78sn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DEE24C113CC
	for <ddprobe@lists.linux.dev>; Sun,  5 May 2024 13:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714914142;
	bh=f7eU6BhwGhbkTqDK7LbRWamCfCtp5YsvERqCPF6bGQk=;
	h=To:Subject:From:Date:From;
	b=axGu78snpNGKA367H5HBn5OhW9I3xdH5IxPtFZjY3CtDLUcUvdvdGibqNAl2R5dP6
	 7g2kFkMvEedv++RW8HEby6gvkowtGtXmn7mgqBJkRYdgBE8WKRVPvn5ZxbfEflGtIk
	 e7ZtWUYxNF3CrIeIF+Detj8FuopB+mfGqOak1MhhCRbP25ozip8aM6FF9SGFqvvqO2
	 ZPB81NvTyPocm+kj7UYgja0qFAfr/M6KHfYbPfnz2YrU0EjoH3VIYaSz0OKVCU39DA
	 Ralk5NPIukedEugCqqSFpCfvyO+qrui2cslryQ45qYh/iJfyQJgLu1oEO9Q8/EjHE1
	 MQHe/KR2SuCCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4F20C04FFE
	for <ddprobe@lists.linux.dev>; Sun,  5 May 2024 13:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171491414279.15701.11860471337838538043.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 778c680f6cf22bccb6e4c883dbe9ecfb366e2e0d000ca2927d8c5324b8bbfc42
Date: Sun, 05 May 2024 13:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714914142
