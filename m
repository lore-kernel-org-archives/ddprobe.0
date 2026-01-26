Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1602326299
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 23:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769468634; cv=none; b=a6bHXEl7AH6enFBZGUg67DVxoaVPAEisx3tcZH4EoTNTBfNnSAamxk7m3eoN/QkRhtB9tLyVMb4M5I3t3b/DafPznlGyxPs0owPFsVNiuUz+LubsQ0o0bjocKbIhSvU9RsPbZRx1fCnlsYN6d5OEFe5ilySwAA5lxVI6OTlhTy8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769468634; c=relaxed/simple;
	bh=npHhxpfudR92fJmzmoOXOvHLdYylDUQKydqLYWpu3XY=;
	h=To:Subject:From:Message-Id:Date; b=dwbIojoUp1Hn7p+BW4+p8zRTe9gTS9NS6Z/RrGiAql8gMXN3SE5TBtjGir13TZfndlwrv29/RczzRWjsenk3D0KOt7ydjrAHWs3tQTWY50yTXm18QyR1SDN5Ad/e+ndTjOOYO5rNPtxNQTKIzMb89IMr1SShQkJ8x62z2LXQuEg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ipSKEA4U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ipSKEA4U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0C90C116C6
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 23:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769468633;
	bh=npHhxpfudR92fJmzmoOXOvHLdYylDUQKydqLYWpu3XY=;
	h=To:Subject:From:Date:From;
	b=ipSKEA4UwP6aejRqYaDp5JUGoX5IkwSv5HbX9gtXxxqdx8Bo6rfDLpSJULXP6ETYz
	 QtfA6as85oZL6vyqY67n272RMIAzoxdkOyVI/jhzk7jSAN4uq0aN4HhwDpR+//vXCe
	 6LbMCFz+YbxJspuqkxoF+69u+XedcuNo6NI6t0X9khHTCOh9jccmA+6AQe8yHmYKPr
	 AFAyDXd9YdDBPj6BM/bXIZYSNZiwDubtsgSsdlRVhWNfZJ3lDQTj6kXc/tEs1LZUzD
	 Q7qnwAISi08O/F1r/ioWc9MusEWNAEAQB25F/Ac0jDTwE8nMjm2pKvQ47OF5ZqVXFW
	 VXFr52l6OHEKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F934D1951B
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 23:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176946863357.20832.7930450826431887165.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b8919c573ff9f2f79ba251ba4b0a08c5fa5d5524e6381e81539f47b3f1944705
Date: Mon, 26 Jan 2026 23:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769468633
