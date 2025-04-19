Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FA9B2C1A2
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 23:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745105994; cv=none; b=GrX3V/2OdqzFfgLauCpqGzoUZmZjbBheZd9JNLuXKt8Wnse9p3IBs9GawJ3q3M49ebSVdGjZby3ViG5/V5l1PQ47HCxWWOPXxTCeUWBdKNuizOae1qO6ef5reSGr9c4W0Tks8Z7XvQ36iA1uDmfxo1z0r675FiJpNEJBT4BLVgA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745105994; c=relaxed/simple;
	bh=HRym9MvyCzKyN4OITV3zL6VywTV+owCahvxV4I8039w=;
	h=To:Subject:From:Message-Id:Date; b=EEdg1o/9ECgitLjV0tddYgvtCSo00554zD2mMLLyi4bu1arSTIx6SP4r7hrum3dHWy9QxcLmrK2IdwCgArEC0HRiTMA/k3uVRXe+eP3qjb44WtGfvPgW2tWpwZBPlOCtitA27ODXOmsEtX/IVBrIVsTx50Q3cmYQfir2pAbdKWo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mfIL5S/x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mfIL5S/x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADA26C4CEEA
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 23:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745105993;
	bh=HRym9MvyCzKyN4OITV3zL6VywTV+owCahvxV4I8039w=;
	h=To:Subject:From:Date:From;
	b=mfIL5S/xxdMQnwsocMaueQ4tM0zhZDXnEzxtagfbYPYMxgvjGg9e4VX0g+a6H7e+d
	 hi8+IcDJ0WYL1pNWqEfIywBPJkgNnItSEzUi5Wa2xfyhK6owsRE+2BdLpW0ETkxz0P
	 oxwn2VNidxkCdq/rDZJoxBPSWfXjGhUIuTUxuhQSkmfzGia+SIoU+Hp7I3hd+lXk7U
	 MwSz09C8Nrh9tktO7RQC/Xm6SXP8aHvaFxDYsSkDITRJ/8oNIFHUkf/WFyjn2zaQ2k
	 UghGreO5szFjPDlvcOfPf913CyGOQCrMR8kqyqr0d4fWyCXn/3De/uSFrM968GMcwF
	 IgFBbEzDWcZsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96818C369C9
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 23:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174510599359.17338.2105980479575867359.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b221135650b500068ad45eaf9981564261d21e9f2ec0ff4a0c3a9407518c2068
Date: Sat, 19 Apr 2025 23:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745105993
