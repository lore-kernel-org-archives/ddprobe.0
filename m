Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C20639E9CF
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 14:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784473114; cv=none; b=V5IoLHlfH/6oeJur2ddgMIYpNWv59unf8WrVEeSfAB4ZUQiz1J8Tkl7XPgjbuH9w20YRl+XkKRt1z0rm1Ba/rzZQV+a9blgChfxGityqyms7M8dHGdP/Raip5zMUSX4nR1LGCh3C6XSibHH9uKWbaNxuCWWVSXdfGQnJPRT4JUs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784473114; c=relaxed/simple;
	bh=YkUMrh1n8M7ynf7BDccWE/nWoLaXPsMfxTSzuJ+qd/A=;
	h=To:Subject:From:Message-Id:Date; b=UztbvoTGo5NsgAF3PYZyguc/BXqqxypJaD3/y6DBsYxbHCYJU4xZ3msE65UorxGhD6WSYC2sCB/6QPJsIt1qyA33q/MWSyi9Z7mFJmxwaDQvxjUbdXCuw8qex7iLybHNLvWiGUZcj9J/9ZXH0MUsqQDQ87LuRjvKmx0KG8fqUg0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h1DNw9+f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h1DNw9+f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE0EEC2BCF7
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 14:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784473113;
	bh=YkUMrh1n8M7ynf7BDccWE/nWoLaXPsMfxTSzuJ+qd/A=;
	h=To:Subject:From:Date:From;
	b=h1DNw9+fQcP2rL1Ruvka9cfsNOt0xLO4bUePsU38hLKJ08bG2zxiB3JYd5pE7qW8Q
	 JbMyB5tIR2I9PGJAU8nWNPvLPK5dATZiO08XXlyiaw+s4VyxRQLdJJlrIMJ++0uVUy
	 LRM9oM5Vi/X8fg/cxFhMArMUAqmA1OlEjcpG5aFNvlUYDuy4MvCj9wwUlCZVT0UJDk
	 lfJp62LWz5cKtgcIYskRStL1myuDoCiWjeAQcC1PSaNSh/AXbTQd4ZnuocgU/2lihI
	 nU2/Viy4oBZVcSulRiUJiXjaFfHZqr/U0RSbb776dgJfktA8xHjMws8kIbC/JJGL/W
	 b/kTqIfC6PT0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD645C44521
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 14:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178447311368.12898.9027640456069050456.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 600508ef67aba8f6d49621ff6cb567b20e000fd78e53f71d8bfce0a9e9cbe125
Date: Sun, 19 Jul 2026 14:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784473113
