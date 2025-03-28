Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 480651B5EA4
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 11:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743161394; cv=none; b=tOshsd4zc7urneH8d4d4OYK/qrv55r0lJQES63TgbZ8Akt35t7jswA1jje7yY6hDY5C3WdT+lG6mEJbO+BeI6eyqVHi6uHr3CzDCcPnbKiwlt1N1U/pBLXsSkgXefclI+CG3n3uVAdeJIs4mHsJYHdOizy3LKlzoE3a/EJB8OzA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743161394; c=relaxed/simple;
	bh=vULJefBS1GSKOALyWyfnIkfdZC5ZjGvEz5brknsfEgo=;
	h=To:Subject:From:Message-Id:Date; b=csLos1tFMgbemhogk02r31tiK0Q+5k6U3x8hi45OfhquXSpXDmd3pcvOtuqAUkw2XAUR6BDT408B7v7HnNtVnW/eKebV2FArSFgj1NTggAgnzVdGWchnVKwKknjj8IOMBQkKKWBFSLr+0PkSeWIdxUHDx6rRNbQJP18VwqCFRMY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ARz9JlZ4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ARz9JlZ4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6389C4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 11:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743161393;
	bh=vULJefBS1GSKOALyWyfnIkfdZC5ZjGvEz5brknsfEgo=;
	h=To:Subject:From:Date:From;
	b=ARz9JlZ4ExXb0Q5wwGqCcLwruZljI2qp+6NEtRsRs5WiYtl3+bMzoYbiqhYWZ4OZY
	 tzC+uY7QRbipsydcXBeJtLBxgGFpGwuNb20ciGIwKf9h1EJKTEwYDeBO+AdroOAKKW
	 TiXw2fKTcBF0aaIsi8LDHqLL7H4zWtF1u/ucRDs0yLmpUs5O/KPp6CaAIKsQBnNGJy
	 MYIRNZw6NcnKDS61UgIhDXp4Eu70/34570NPDNLaGaRQpraUbEe5YTycOkYs3EgOmP
	 D7C1Os7yyRRPOJYmjO2dXmxpXAOqSyEjOgWv0AVzk2M8m8o5P/SBdYHmHqsi1TGGKi
	 esRheOgVFrTsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1D40C28B20
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 11:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174316139361.27030.18398255966458824774.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a67fe5489146410a77cb1e86fead46422fc5b5dab048ae36bdbbf01e587d37e
Date: Fri, 28 Mar 2025 11:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743161393
