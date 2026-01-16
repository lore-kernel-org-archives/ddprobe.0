Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23F513FFD
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 21:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768597434; cv=none; b=PPAwHZnmRB96NNSYjDMkO5bS3fn614Qv6rtz89nuSKh0Dznu/kmgkEE4LoITvl9sOjcQfLGsdcypkL4Kh+otOhX+s+Ag/Hfsnp0L73FErKklb1y0T8kUNI5SvKcHpZKgOACe6mFg0GbEDBPIu8e3BJaRo3/lu05EPpljigme318=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768597434; c=relaxed/simple;
	bh=VQX1EJgtmdCRV/z62DRfqikMwtOJ3vjiNxgJz6IH/Vw=;
	h=To:Subject:From:Message-Id:Date; b=lJZ+16NcGKiAmEx3cG00I2YaqL5uN366qaZY8esRav9D9TbGJinq1eUxGGXAjHCg/BGs5zQBg03TQVIbBTIbe9DUzWP2Ty0Ik7mh/Lr5L/yyBJ9BeP/QMSF5ck+PUL1+wRYAua7/67kL2wIdMc+AapdYBXuv5TQiZcR5BwoBsz0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Pa/vhKKR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Pa/vhKKR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9EFEC116C6
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 21:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768597433;
	bh=VQX1EJgtmdCRV/z62DRfqikMwtOJ3vjiNxgJz6IH/Vw=;
	h=To:Subject:From:Date:From;
	b=Pa/vhKKRw0RCh/rcZ03lRYWLR5PIBTreEPuSrpokUXaUhE9KQlmgOZvqnImBHq4vU
	 8iIJW7L9fkdRCHQTBMurNimwnjFiqVByUWhKyqiBN3waHTs2K1SuornmaftSPYhQgF
	 1U59kgmTVy4XlCwAhqVQK4wEhNoYB5TVaCgAkKw8HsaqCFMwBu87V5LzftQUdvFD6n
	 wrqJVs+ZYaWpiCZ8WCnULRLRRZrWtmWd+Yg4PNWRI8PrO3HskiJS6/i4KA5n9db/kN
	 xMlnVLw8gINrIRDneleJ8W6EZQdLNM0QsAh4NDC0NWWsyyxa11cE+CEZFS2S11xyrC
	 uIMMiuIyYMckQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9095EC982FE
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 21:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176859743358.15182.84403141871303524.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 14ba0bc78938fdb5ff8a6d49277a160bbe071d76895f97c00802eeacadb1faf1
Date: Fri, 16 Jan 2026 21:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768597433
