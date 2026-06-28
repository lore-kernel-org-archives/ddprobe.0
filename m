Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8A0B435F603
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 04:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782619714; cv=none; b=UmJwM9df4EkDl4pfT7VjScPGUCaEQSS+rRClAONCb/RoHryA3/u69Lr+fMVuCUSCfDBWW7RBuDyrMAsmdr4baylrdMDeZv1Gc+XtP53ByfCIyxJ2OZAYJtICRN1UC35Uyw98Glz8s/mz//jZBJnGY5hy3kxsulMc3e8pn5lrl0g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782619714; c=relaxed/simple;
	bh=br/JE0XdHMnpBAfkwECWvS5GAtSuNxdRsplqYf7/ZeM=;
	h=To:Subject:From:Message-Id:Date; b=r4gxOqPmCzBK47TXyonoLhKff0IiCjBK2U19FzfqnOR87j9ptNg/91vz2bWFYF0qsb7FEcNR0hloofNnD9KReqhwG6b+Aj0pdLQkFtMyk+uzDS1P8U8OpXHQwSDwdlZV4eJqHiLoj8N9+euloGsSPYhh00JjX4KinLW4+U0O9rw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n0uwt6gF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n0uwt6gF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D36B7C2BCC6
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 04:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782619713;
	bh=br/JE0XdHMnpBAfkwECWvS5GAtSuNxdRsplqYf7/ZeM=;
	h=To:Subject:From:Date:From;
	b=n0uwt6gFx3jabRvacATbvmtRquKf0w+uPzVml8ujkrNr7/9u7C8cS0Gz24joZGJaQ
	 120ukGrMm71JlCqkoa3Xs28aN8hDSNBWQ8G0RF5D07PPGEP+O4eCcfGPK/9lcLy8qt
	 z6Lp3EjQjpJJ0H5u6b5ytHCcpARKmU3LIwVVGqYmF9ns5Al0+jo42XVqJ6zm1CNJKS
	 rmotI5z52RLrFxk0NmNewMU8SZt7v7pCH6kCeuHHQE4xjNRuwiXxjrxsDO62grcO8z
	 wFDbp0hiC4Vhjuce+YjzMc69Kx8IuaJgNVmbpJZQfrvLk4oJ6rETPcj6pAumouuDDl
	 LMksIhJW4ywaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1DD1C43458
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 04:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178261971370.7021.4283743412931803496.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50ee71d7d18ccf5211544e239b55af927b83d38ad6ca37a49958c5c100a488b6
Date: Sun, 28 Jun 2026 04:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782619713
