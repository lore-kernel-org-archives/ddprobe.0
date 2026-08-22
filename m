Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62093217659
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 11:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787399434; cv=none; b=uzTiZkuuLOjRpa9IaZ88iCPEBBZDLt+3lGCojqBTilpoczoCjC6cO59Gq3XKnlbH0oNJWeu6NKVdtgCV18rGgTwNVFCKo4yDqPoCK4oGdaNeFS/tySMu0RfSIH08TLD0TCW7FtlGTySx0dgCMMDvySZ8TOoymZt1YvBhSu6adqM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787399434; c=relaxed/simple;
	bh=ek9dxnX2I3WI76V+UIBaXn/dkcdFM9QsFMoQ3MC7NzE=;
	h=To:Subject:From:Message-Id:Date; b=AKfwTsvSD3iqyBrhbNVQehgjYcos0o1fIBGKjKkpEAEp5VZfB4hiK4bMEqxsTgkjRUy4keuTmXJUI+IlT7wnvKIfwoxq0Hw9Bv2zoUZLbT9qIX0Mh9PwPjmEy4o6duWKYmdWCOWpU7hGmYBPfNow0MC1hEuvf2kMGzDHtddXba0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TSGqOzTS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TSGqOzTS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB819C2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 11:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787399433;
	bh=ek9dxnX2I3WI76V+UIBaXn/dkcdFM9QsFMoQ3MC7NzE=;
	h=To:Subject:From:Date:From;
	b=TSGqOzTScP2WeTIsedHHBfPTuB1JVhRjsh73BfF9WQyLkNQ4Scsgyljrhl18GPZUI
	 apm9b1Nq5wx4E4JqO2q5adIxxtSJqFXNZntkUljiBVnlslmJxuvlYb7/t1teyVcJIK
	 4cAWkKPyRKPPpFwPpxuwUWYMG/GQacqN67nDkv/C9V9W++ESsRfFmo4aVyiQFVP0zZ
	 l21dEUbFRbSZN6E9Gxn39mvM5zj+EYlk2r1xR0JhNhlW9QZbBOnXn3UaPY9Kv7Rr54
	 16KPdYbISwEgXzieK4msfimd1YvE1AfLeOzIk/sM59bwQtYzL3ICE1F1ABR1G9mCwf
	 Oftgc/MqO7WSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B659FC5B572
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 11:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178739943368.25114.12412625524805544336.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b64711225b9cefb038f6a9210f236047a5412b48ff8454772dd35dc20b4b4c63
Date: Sat, 22 Aug 2026 11:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787399433
