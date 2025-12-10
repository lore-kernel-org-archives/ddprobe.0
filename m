Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 103CA3B186
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 02:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765333974; cv=none; b=lJUa3f66hFB//h83ub0aPKJSv8AiJJItNbGIHzpMTSP6p7BUkpBEQPW/Qw3Z2wceQIYqbJ/gZL0HH0KilAdB7d2JvLL1A+nVJ76RJZ/nkV+jpclVAhUgvjyyym9jCtULRV0ClPIc9jV+kFTlWAq6iI5Uss36HdjlAZL/DWFVcu4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765333974; c=relaxed/simple;
	bh=k01zcuJ7RomZTA36qKSq5fGemr+OM3qS8sVsjk3+zjI=;
	h=To:Subject:From:Message-Id:Date; b=jDVh5v8r8Pn7bzWc7X7dxC7tkgZGuvTCmf84NTRrB9QoyQHMl5+JhXfqpZfhLATLTeizZDIo3a6cmCE9DYbuWaJakLKPKDUUActxoMxBL/zDm03HY+QnsU+dzVUbH2V8O0ZCZBirSUjqt5CJ3hcYEdBGUqHrjhAy+TfByr81w/g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q/hNXI/K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q/hNXI/K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABEB9C4CEF5
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 02:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765333973;
	bh=k01zcuJ7RomZTA36qKSq5fGemr+OM3qS8sVsjk3+zjI=;
	h=To:Subject:From:Date:From;
	b=q/hNXI/K97i/SiBaADoKArqv9QC375gSoRoXjYHgZL3w49yNTZID/D6T5dua0SUTp
	 vStJs7SBri2XFkwuQHCr+4vqB64mIaw2TyC1c06UYMvQjlp1yoGBdBEDwvQhlg0bok
	 chdew1iqCdoZs1fw5/AH6Y7ziI4P8m60T/hx7F2GEIfkD+N/tZV9RQvkLM/CZH6UlE
	 4UWTPcoPyhNVX8dRFw7RXEzsFKGfTtE6i3O2wH1tOY1cDtlEFLjG/xeyCEzExs+tdE
	 amsvWRl6v10/iPuOliq4eKlf6JlgYgiEHo48mTUUheq+PfAdhhtl8WIbR44ZsUYb1/
	 cyXV28O56/xEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94FA9D3C520
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 02:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176533397359.14976.9645969225634405559.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8041c4fea1d373f2f0d3dbb58b37dc70ab4bbb01b2fc9813b92aadd338e52eea
Date: Wed, 10 Dec 2025 02:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765333973
