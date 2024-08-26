Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 386BD7E6
	for <ddprobe@lists.linux.dev>; Mon, 26 Aug 2024 01:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724635554; cv=none; b=IHh2w49Ji61O2q/rr4VpVOq/WQ+w4HMcHegG9qEgGmSnD7lTCNdZLqolzy/JBl18XbM5LxAhYdhx+Pcyh6GiSIqlr2dfK3ml7hxxk8aABVVcSTYHG5le6gqemRv2Fzb8ZntnAFsyMGRZM9gqSh+5qOfcVMp5In8fzmiZOCFaQN0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724635554; c=relaxed/simple;
	bh=wkRh7WaFxOPpsxiSAzNwtMteFwBVZqoPorKKYBCYhgw=;
	h=To:Subject:From:Message-Id:Date; b=hZQXAjhZwDx4TpyKsV5pheRiH0jMzueegc0vnV+0fd4QbAE+Qdy5IgAZVeCuwIxl3Qn0M/m+liFIxkSIURoFkWxqiCKlYHH+Ox0uyjbRqqSr6umaKLR+R0rNpHea0fM2S+5Yu4Gh4xRam2sqGoHH9Mym6OHXP1kUle5fxQj9UeE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lk22H1bO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lk22H1bO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2169C4AF11
	for <ddprobe@lists.linux.dev>; Mon, 26 Aug 2024 01:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724635553;
	bh=wkRh7WaFxOPpsxiSAzNwtMteFwBVZqoPorKKYBCYhgw=;
	h=To:Subject:From:Date:From;
	b=lk22H1bOjX2ajeVwccxLURZU4oYZ3DWlhHarSmsBkcIKY8PYMXd//pSyZgjxqGyBu
	 JahI76cdnvxGfB6rXqQ5VF1UqLkPDdzEJpr24qc1skkQKGQ+9CBr7X7RkM92N0SffI
	 UYIs0/WdKDBlk1dFk53IIGeJVT23kARybA7TAdAcLIFWBOy63XGkvoAvasucE5wfpW
	 xDVCqahxZMJrwutccHaCVvDp3WtbiNPOA4qv6yyP98NDu0ZnXe4mO3SX5zf1qk9LOv
	 67OyB1P6YGCjc4QOMhef9ZPrsxez+aNEgc+6YJ5YGQYSpcy7lc/lfb696UHhDK+LkI
	 UMljrnTm91I5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AF4DC5320E
	for <ddprobe@lists.linux.dev>; Mon, 26 Aug 2024 01:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172463555358.2170.7269082041316337484.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d32675789dc890ba2daa06d6d056c21a609de54043ee0d66247909ade7e8116a
Date: Mon, 26 Aug 2024 01:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724635553
