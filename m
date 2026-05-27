Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BDCD256C8D
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 02:22:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779848554; cv=none; b=ckvP6SR82jVlgRAD3aqC97qH/qU8B0dxwuqplLCnWXBc7SmshuBQhvkXxl+QdVzs2OUi0c9X1q141NOuNaA+tImUkHsfcSR+h9yjKEFN84U8qbI+I2flO1tu3CsFXc6TvgCI+/DNUksVlAvM8YAM9hIgqT9KgbbEN6C85ClDnZs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779848554; c=relaxed/simple;
	bh=2BuPd4gq4lWw1iW9d/hCp0WnQdt1i31lMzCFmN9nDMA=;
	h=To:Subject:From:Message-Id:Date; b=u+lpTcgxASHxcAPLQslk0WdCoTqBO1GLdhR/Yjhe0ssV57PGcTbYkwTq0yDHJKOvvXFgexu1h+FL3v0PZEy5c1ecqInLjqJxXKzkJFGLIOte0xNLMdpcEEhWvH1KNNpggICc0siyQJghj/2PgVn8sTCkbXasZvg0pr53m0Dh9ho=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lEkSXbZJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lEkSXbZJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C90E7C2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 02:22:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779848553;
	bh=2BuPd4gq4lWw1iW9d/hCp0WnQdt1i31lMzCFmN9nDMA=;
	h=To:Subject:From:Date:From;
	b=lEkSXbZJhcSNsE1PCxk0/5xoH5Go8zyFhfEpHUN80V7g8acV+/UTPoEHyUAv4nxP7
	 y2KE9jXdlgmKBf0gRTZlRFNLNoVEqU2uwb/c0uxQu0ZuZNGEZeVCTgJIDs3BEh/Hfm
	 xY2TkSIL9ABGTbh/FWZ3NBorQfF/BemICxz55WoBjLkHLSq9JuoSeS9QZ8a6sUpe/M
	 jdIXjL9Jxa/Tg91PVdxt3vMhShoFgzgDdXZm1d2NSDB6hujeNSh07r2weiVaA3Sixz
	 WTGGnADlr1pykxX+w57DtCbXRHMPqE1dvN6YxAiLLJZTzj6APATlvAOsC3zG0YiRH5
	 TxR4ppRR+tWiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B014DCD5BD2
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 02:22:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177984855368.7104.6071947426466978508.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b56c26410c0258e8b999f2ceef426b8508af26a5f38a3530d00c889e47a1fcb0
Date: Wed, 27 May 2026 02:22:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779848553
