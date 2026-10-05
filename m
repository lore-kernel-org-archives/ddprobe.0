Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DDEF442E8E7
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 14:50:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791211835; cv=none; b=hoLFPmWvUoLRfjYKgB/35EHjY111hXl+X9rp66I3tWglgaCIeY63NzZnzJAZ1a8tm0BkO4pzcEnL/zDGoA5gZpf2nxW5yx6YU4lUY1koKuSY/c6m+riZi4+3doDiFsQ/RUem5rgPGErjYc0yekkcFRq+rLUzrdxFslqkVeOEUDI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791211835; c=relaxed/simple;
	bh=nkiPU9Dzl7nXkTBF7BADVGd8nmNAaV7TSvljCfeKr8A=;
	h=To:Subject:From:Message-Id:Date; b=SuWzglD0FbETG3gWJCXPAxzDsx4lRhDoGr5GspxEw2mwlPZTnRktNCNnuvwn2zwKDt7FIpCSRB13zvyDOut4en3SM9x9DBwsMIcFkcEmUIm8SBTyKcn2Hf7hojapc55uurtCNga1UO5xZpdkNUiza5TqY1UM/QNsQGd4MgMpiSE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GfmgMHyO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GfmgMHyO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB566C2BCF4
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 14:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791211833;
	bh=nkiPU9Dzl7nXkTBF7BADVGd8nmNAaV7TSvljCfeKr8A=;
	h=To:Subject:From:Date:From;
	b=GfmgMHyOWEAUioDG7FMiKWf5BPVun7vzXfUzPulE2ZfO7QfoQGDcWsp/Dxv8rKMwV
	 S88fcBVbXyGycmi8UAGIJyxWiK3llbRpkFUXw0poicROXUbmk69LpaVX9+PQ0QeN9o
	 lryraWAewexQ0ZndjybJCKf7sHffLvLGYyFA9t+SgrKTYIAq9zCdT4CxC9YoPXNm8L
	 Ow5TLjY0IIS13bLK99bc7QiJksTfg1AUlv95aeBXNPfw4t/nQEtHjBIb5MH5DYjOgn
	 rSEitQqme/up+pTcecuFpb71ipb9+CZs+KG/5SyMP7JgTcnE+MdmXlikoBVW+NENoR
	 oW8omHAStVBTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA545CA5FFC
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 14:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179121183368.16739.5193507727695735155.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8dcf90dde5e1da267d5df306228ff180a3fe28fd3fa1c522d38727cdcc5d410d
Date: Mon, 05 Oct 2026 14:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791211833
