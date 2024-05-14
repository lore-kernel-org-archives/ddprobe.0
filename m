Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 95BFB1370
	for <ddprobe@lists.linux.dev>; Tue, 14 May 2024 01:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715649143; cv=none; b=EN57berk9pPlpNOpVs2PhOmIkobleOv6AhV+CckS8ESXp9mr0ujmthsGnuRQxzMaDuy48s4Iurevs2aqHNoySTGIhDO9LMbXROlTgpkLwVEK8et5QSk0BPWB+mLVDnJb9M/Kl/nKvMsND7IJENkFnrEhxPcaSxG2KtTyaYM/sCw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715649143; c=relaxed/simple;
	bh=CgW3qyGj+cNETZadyQfsc4jsZbCzrelT+4xDduFKsJA=;
	h=To:Subject:From:Message-Id:Date; b=a5He/GiTdDKlaYPTfilt29C4Q2y4emYu14+DLifqlyIgpahqYvkX5gBsWyXNsJwxwnCcK2CBWdjTs8aID9RmCi+eUFsk0o+RTxbdh0kgWRjReq9iW7trOL3Yu7WjWN64LX8NPlc40nt3aP+ljRp+zUFNDFEtuCYxMdm/lofyGWc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MCcvR04I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MCcvR04I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0B4D5C32781
	for <ddprobe@lists.linux.dev>; Tue, 14 May 2024 01:12:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715649143;
	bh=CgW3qyGj+cNETZadyQfsc4jsZbCzrelT+4xDduFKsJA=;
	h=To:Subject:From:Date:From;
	b=MCcvR04Il8RRvSELTx32m90oooluZ5Gd0t8lsbST9zbWXIY86OpPE5bpjg8mpzYju
	 Hb6VFPGF1CJEIN6uX1nfh10dSVaf5oZGywXg0+j8T+SoaHMQtAjxro2nMtC8dV9NoJ
	 bgZyMY7VtDerwgEuWWW0fNymNVLUEVJwaEWUv68lxAYwyNCc17AtxEf+PyjxC0T/zH
	 C78TmIJv74HodK6dvLbG8Sa5sAZ42v0ZzL0QfsG2oDulNDZuNoSHz6qpncNIAWMtN2
	 iflomQ8a6q9c8Qjp9lGHpunosQEPV5O21/7xTFIAznAnsMOm9L0egS4Y5H1XV80uCK
	 Z2AS9lRCBNZmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D9286C25B78
	for <ddprobe@lists.linux.dev>; Tue, 14 May 2024 01:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171564914285.21584.12792859865266595810.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db51bc6fc701c323699aed7400a752bd5bdd93c717251255f5345168224bb473
Date: Tue, 14 May 2024 01:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715649142
