Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 274D01F94A
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 04:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766117634; cv=none; b=jxPo/4WZ/YvlKsvAGtKD7I2BrI8BKJWLs+aEra/8mQf/++S3XURriIdQrsYmuoo5KeW81o1Z5OGtO8DGoS8xKyjh+G/Hryj7C0/b83KTE4WDWCmVynaZhEKF2O8oslY3U2tQgnrisdNyPOc1eAMrAN7FSs+QSyZfyWwY/seMZ0w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766117634; c=relaxed/simple;
	bh=F+5ocAOxSrmAOoF8ajftn/iv2ue+JDMWD5gG4dqQc70=;
	h=To:Subject:From:Message-Id:Date; b=nO3P81i6JWxsStNOE231850R0gFAjTgFTk0rwXbu64GQ65w9YdYEz1rCMHIY5TvE8UAuUQQDu68X57qz8pKBdUXuEC/CH5sGKG7EUGYHCh36QYPpSDNtcmHw/HACEItZ1b4/l6YQKx08VI5Sam7RLQej4hUrn6Mq+yzcPSWBuEY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TYe7C0HE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TYe7C0HE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A14A8C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 04:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766117633;
	bh=F+5ocAOxSrmAOoF8ajftn/iv2ue+JDMWD5gG4dqQc70=;
	h=To:Subject:From:Date:From;
	b=TYe7C0HE3Sfc8rDyC1qWqZ6/XCClgEJZ4zu7u+bGnWSkpW5hwcZVdFEOwijRH+Z+l
	 bhed67jvDI9jacl0YPmOJvC4aeiOzAt8cc3IfG8SSUSqxkxPYIzD1/nA0NdLL3obe6
	 Xby4MVtzrzAmYkD3wjgka8zwJTe85LVtjpe3jQDts8x+oAi/R82eXynyoqgYRadMmi
	 jO4ergL3RS/ROqTOIFGvKaN0a0pSC5LzsBdZDqDH2KnnetV6rU8xgHuxV/8KC483J8
	 uJ346Cffwd+LC2LodW5zCKPie11iuFqnh3AfS9iMF9SfOWbJ+BB574YlVrs191Qq55
	 iskE4q6Q/L4oQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 901D1D74956
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 04:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176611763358.3342.4320606564338841162.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb3b91d0c5b299b30bbc204ae5f850dd5bc244d24fa0917e878bef4bc6af2db6
Date: Fri, 19 Dec 2025 04:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766117633
