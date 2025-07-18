Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C617BA27
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 10:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752834594; cv=none; b=hndEqo2M5Tcai+CHrAownS11/4ePO9jC0sXC4btA2buFZcY14/JpcFGj1Q+wF5Sho2MM83SmyOerA1HSQjNnV6Ziqjo/eWwXcV0AIdwck34o7vp92hr5EUY+tRhcS0aD9aCzTMwbCVqUH61q25KldvMYS220obDi+Hvu0Upt0H0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752834594; c=relaxed/simple;
	bh=3As8uNCMROeoVEYJ08XazJmvzbDS+GCyArSCEgEBhUQ=;
	h=To:Subject:From:Message-Id:Date; b=g/gvyRsVQuHRjyGTXLLox3D+m2AbmGC8UEVwY5K+ucU3PWvaQp6uys/1Pg8vQnTcZPM2aKcCkf3wD9UMMatBnhKTLDuiDdKXtdFzkoZIsiPA51/fzWmXUNBZkGXWOKCbnyWPI8qEpe2uN3AM5dRM6nyYhCzqW7l1QYfClhysac4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HgVSvBXE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HgVSvBXE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F642C4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 10:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752834593;
	bh=3As8uNCMROeoVEYJ08XazJmvzbDS+GCyArSCEgEBhUQ=;
	h=To:Subject:From:Date:From;
	b=HgVSvBXEPoRaS53+26PBaCoyINM2uM30SHr8J9FUftRiWQGEBU5yDmQbSwKRZjtg+
	 UtxUR5zZhijGGytHp9MkpEBhuNzlpagYDlqfUi9cnG8uqrJBjg0qpWjVLP2GC9/RNc
	 HaeE7Zxcq5EvmZB9PSzLbJqhrw4qCpYWPXLDymyqmbLiotbNkWUU3r00rfc0uRwehv
	 EjO8XcY4wmEYCZZC+szXbpjl5SmGEm8O4qhpN9PdBd7U1gt6ceqaR0rCKhRmzPZRu6
	 YFhm1qCzukPse6qkLq85NCRpCiC5bTcjF3ayDxB3qbWLLJJKEgvrUeA8ESEzEJQgYw
	 BrWFMKijFC3lw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90272C83F1A
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 10:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175283459358.1007.8981775995497502416.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 610e15af147eb0b240eea6bc0de655f7a1e6ebc9a89bd74b6ca24536a1d6ba85
Date: Fri, 18 Jul 2025 10:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752834593
