Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2ED68241695
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 13:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769088234; cv=none; b=tCIT++Pp+m66Rvk/6dGSt5TmPO7ty4CW9C87OjVshono5CNd9xsuXxTuGFNo0dCwiU7WYVhoytHaXMrLcLwaMDOsY30HwR8nEQZKjQTW63Q8h2+KZMaHBjVJWDYa3hWKt2peAEs6x/8LMoKMo3LrDjaVJwYel0iZAHWUNlIJ4xQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769088234; c=relaxed/simple;
	bh=SKQgakBgwlkv+nBaRbYLfVFVGkCSMwP+XrMXWcAMW4A=;
	h=To:Subject:From:Message-Id:Date; b=X8l6pt/ngnLsWKvZa91dinfRT4opanR3p6/38doCYXjcYs/nvUwq/rnJr2pl0PzQZYM0HfxatTEe90Nki5pGPEEN1YCwyNivxzHfmEELKXlf1B0TrirkRiRFG98FRQgrVXY2E73opiyF1r4hQvkyMULStxIuTB3FFVOjz0ohsd0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f6aXELYz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f6aXELYz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F7B6C116C6
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 13:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769088233;
	bh=SKQgakBgwlkv+nBaRbYLfVFVGkCSMwP+XrMXWcAMW4A=;
	h=To:Subject:From:Date:From;
	b=f6aXELYz0Kdch0TEdRWkienyxxg4a/YIkvpuk3jXeggtNR8wvTaCM4E1CitXLRCXG
	 j6pVUPua7UTwRvKVVyiPTUb4DkxJjLNeoCuqa7ETf3oJUdGjGqbQthZPDOYE1ieFNO
	 Xw6IwNelzkduHWpwjkZABNUiKjizFHbntbXiA7EzkMPnDuhtHzsyT34MxoRNU6zhjc
	 E2/FTNxK9gQnkErGjPbT7hTIjANV3Eotlw8LzDJ42IAeRDI7FFCW6BOVW1C8kvqG+z
	 vpEceg0uuRCs5zFLa5pAL2mpplcXR1Odmxa3ADhD7Zwh3ZZMrIC9ZUCYfQ59Jx3PDE
	 zp8N/3dn+CUAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9042DD3EE65
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 13:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176908823358.392.4055746882870018860.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 93bea1bdc960baa5fe068eab41b01f1a285cd5aac1484d3b6238a574d2ae96dc
Date: Thu, 22 Jan 2026 13:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769088233
