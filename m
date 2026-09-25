Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71B773E9F8E
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 19:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790362834; cv=none; b=oB9qudUkAqqW2MKb9BVrC3BlJyjus83EHKajTDm6hUhebQOq+APTxcNfDztbgpiRAH7c/BAvDQvbwKCEzZnOmsg62rzHd53TvN141Z3OAXtUvmeulNx/XNL/Y3nftHotmxGotrbICkx3pUb0UwEwodyTuhPnYNo4EfeYyx6agwU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790362834; c=relaxed/simple;
	bh=nuFKhCG4EL7j7P26AIRHgYPLWTm2KpL4SOiMXLKc75w=;
	h=To:Subject:From:Message-Id:Date; b=kotThFNedZcAIZaYTCUB5+FDLKjAV015PWOfLL4+KjkUxkYTHmNZ0Zs1qhGrcWKGqyDhNn4alv62qSzy99ZTvvMnoXm7Qio4euK37Iwlph8ojBcM7NIWHrtueX1EsHDK1on6C7LIFqIvKOd2MAvCIisR0+9e1L4fYtlokg3/mcY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BaH4N2gV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BaH4N2gV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EAE08C2BCF4
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 19:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790362834;
	bh=nuFKhCG4EL7j7P26AIRHgYPLWTm2KpL4SOiMXLKc75w=;
	h=To:Subject:From:Date:From;
	b=BaH4N2gVsAs7ajC7xov8yyM7TtN8nCI5G4PJfGfyouXcdEvStNymV7nmFua33s38O
	 z9Z0amtyq+P0kfbkL8d1cks1ZCjLi6HF5O0/KP2O5pLRtA9E4tY3J8n/4HTb7OW36E
	 B8uXM/J1f4gM5SwspFYP3zkSM7ZPrL/5wIXvZ9p+3CKo+oMJ/DFXxZjRXQWoDUbtia
	 lO9EPmOmP8RMo3QbNGRs8C91sqznd6aOrLgsFie6j/IAWqYzMMYPsweMi6WB2qhODI
	 8uFq372qGf/dqwDij6KOfSeEH8Ft7Aa4N0uO5PUw6FEzT5ubGtweMF2qqzGYTME9xc
	 T7mbqiGDjbPKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BAE46C98328
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 19:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179036283374.10397.3316968973403270446.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1e62de11d3ddfc7ce9cc077a27db54e692c987d01e88bf719687c22a6e0a3d7
Date: Fri, 25 Sep 2026 19:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790362833
