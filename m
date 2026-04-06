Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1835C239E9B
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 15:35:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775489734; cv=none; b=el0VEvCMWqJd8bDsUIoib05H+zYdbwIpkuJILfbUyhQq6vgwk/YJZwho0YQcRdDs4iJktmToSkUrAAwxMRphIK44jgYF4qfoCC5pYGkoea5EePt3gKyWKR6od2BITyAGRF8NJyijJcyu8pAv54X7F1xAtcct4r4B1rMTPkgN5nM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775489734; c=relaxed/simple;
	bh=61MJyUNNp1KfLmL+zmHJAUiqiUAH+InHygD4KETNFoY=;
	h=To:Subject:From:Message-Id:Date; b=IXjH2tVl2nXIpwHMZS0N6nfyPJXLcTsYFaixETPOVj9aR6LtdLoeT307DhhbZgCtp5u8PDAtXtWosYRvQZ/43e4NRZ7QgUEGge+n1GvBw0nMtdCM42oS3iqPNsYvlkTibSPzqUX2C4JYSeRYevx2UB+NxBawfntSpQdrkJFDL78=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZMx9FOhs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZMx9FOhs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C32A6C4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 15:35:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775489733;
	bh=61MJyUNNp1KfLmL+zmHJAUiqiUAH+InHygD4KETNFoY=;
	h=To:Subject:From:Date:From;
	b=ZMx9FOhs2I1OEjWtq/BK+i45/U1We4ZX0vrns4KQJT67TmKmWuxGio1aiDXkDmX+e
	 KCCfqTh7h1iJQEAcHk/dFhKd6iYNjUq2Qv8frDPoCj/N62KsGUG9vEd6srbBTqZTS5
	 9fTS3ti7T16Q7JZZgNZIjtj93RZAcX8dhUxQO1DohJE/Rgy5y4ydwhLRAohlBB2Wv3
	 GPhJ/B+VwhODBvM960cdwcJGA3CVRsI3809V8uYwUB9bFOse7yJYFe/zMcs0WZ8gLv
	 gqR9Na8lAW6a95tmCXJLCdxfLCgo8PFXgPMCZJ4VxLAh8oVQPx1CVCtZ98DW1v3bkb
	 C36TksAiz9ZGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF699F46C53
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 15:35:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177548973370.12806.1115849339814014938.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c79aa0137c5c01cda97382366d7d696b3c96b0f806dd74200dd756c4a9e20f8c
Date: Mon, 06 Apr 2026 15:35:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775489733
