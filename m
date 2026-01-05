Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2456229E110
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 01:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767577434; cv=none; b=C6PrCOyvrwHwieokqZHY61oYbHvPq7jZiWG72smya8/dUlPynZlgC+lEzfd7HvbGM84QGHTz6VW+eGHeurnbOV8aQ7dlaw+fTqR1rLsXGr0bc4dypb9Ze0p8FUpk8FCwkZ2D3Aa0dwQBIqUgBfBS3ulMnApTx3zCd5VDFmObCSg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767577434; c=relaxed/simple;
	bh=7NcHcg6NmBaB7Tx3yx8hJGVoXE5cZFFPtu8M54ObSPI=;
	h=To:Subject:From:Message-Id:Date; b=HJzGipx5Zoyk867fkIXhcoVGM3SJzbavm4UhUEBijK961KRCZ15i7GlpwwMxijwRkQxsqDlNQ+Wzcm+SUOTDcuwVJxA73BKk/T4bgmluWQicqQV7PqbMqbR8zXi/fC3Pkeu9iKL8n1cX4jxnkzFEFf/QmvbPv/9lpmGTIAOwTyU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H+WjIHIM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H+WjIHIM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0CA4C4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 01:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767577433;
	bh=7NcHcg6NmBaB7Tx3yx8hJGVoXE5cZFFPtu8M54ObSPI=;
	h=To:Subject:From:Date:From;
	b=H+WjIHIMmyaGD2qBvKzKpniPtim6rvAUAZSLNp5tQxmT0+MKzx7gDjWR6JrCABptQ
	 TQmlZheRXX+qge95IXEQw3ndq6s0vp41GR4r1uPUMumCYM6/9QxmP3brJoypOnaoTz
	 ra900mnKAovoCy2cwQh4XAIHhf2EXbFEExwYlx/8057nJfHivA4R979BAHJd8i/Ofd
	 r9scFDyOJbACdiG8Snp3uy4dml03NPpSEnGokWD4wL/jr8kB8uUU+Q1rtVbgQsahW0
	 Yz3FaDHJzbPYe+T0o7pgBxQuhfNwbEQqeqbAUYGxO+NeocetlwP5Ijjqyup/LK6poP
	 ZVLaxOEbTsZXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E84DC2A073
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 01:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176757743357.26718.3838258836623582358.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: add49afc41051f6de2b479a0f711a4c5f6a997d961fb194f7c39a99fbe59e7c9
Date: Mon, 05 Jan 2026 01:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767577433
