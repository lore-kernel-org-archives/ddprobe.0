Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 479BE1B6D08
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 10:28:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782556114; cv=none; b=RA0Dafs9RwECnsxoiRnpPDe2X1DUGVKtpk3bNZb7S5ls7ntaKpQo0CwZqDBb0JZizegdD+a4DxZ2xLysR/4rrfYVff+p3X51J0gRRstUiZJylJqY1fbf6x+fGNfYanNMVZEAshF0aXe1Fu9FPT8pHQcVcfzCRwZTjuVLXSb6NOo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782556114; c=relaxed/simple;
	bh=3HR3ZKvQIIZ8PYhDSv82q+J4eQZ1ijrtqSC78A9OAiY=;
	h=To:Subject:From:Message-Id:Date; b=F9MrqxPSFlHWZvyUBuAXRn0yWE6CWdwnu59v8RhvMBxBlvip6l3WDCNyVecHmEr/Sw/mIRghgu0HCDx9O9YKbkll1NJwWffFKKPsPMpA+p/HMY/han9HTa9v4WwCIxeS/GNparVcEgJFJrSH8bghSzClmhmANpC8q27Ue2NdQNE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kHKRGNfS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kHKRGNfS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C362AC2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 10:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782556113;
	bh=3HR3ZKvQIIZ8PYhDSv82q+J4eQZ1ijrtqSC78A9OAiY=;
	h=To:Subject:From:Date:From;
	b=kHKRGNfSrftIsG3EPC6gFqvi3MadyQaYmMzx/kQ6tZbND2oIvdojP1SH6cAZXkcv6
	 8R110PiiFopdpdbQCoBD6XVFOs3yiTtUBSeoiD1QeNuAXGJ3DvLhMdaxQLf7sRKdiq
	 Sp+NuR32g5CpSk/u+CdRl4aimjuVocIJaDnX2iACbID9i96ATxUjtHNya0hXcIPMOv
	 erfe6jhwZGvvppXItpYTCQnGa2+kIcoubS84n79u57oEhk7mD4pF2cS8CZLDdd9TIj
	 mLiDlypUVZPjhqnthjquffjoVVJhACWsDVwcjaSPPj3XVC7EjR41nc+PYfjptrwx60
	 HUQmFWaRRYFSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9409C43458
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 10:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178255611368.16282.253264397806093654.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c1c44b35677b8c8b19c5bc610463c6d2c990d442038ae8bab12b149bc46ccd3
Date: Sat, 27 Jun 2026 10:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782556113
