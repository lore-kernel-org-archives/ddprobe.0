Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37AD731F9A8
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 21:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783804714; cv=none; b=bAPy+bbgXU2kxiN6RwE9d6qtnnidk88VLVsVqI9VwAkS8o4NSPeo9+kQI+D/aO/s+D6Yx3mloAF3hIzj3OmPCFYrNbcQ9P2k2JFg9wk1YyWKNvqKYsygDBDn1/STaqrZNtzCfCnejUwvq/te5mdEuyg88nzjGo17qE+qyKuzVJ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783804714; c=relaxed/simple;
	bh=orEIEW43U9EEHNrWAEQPnz4MRZ7TPx3QHv1PIZKyk7I=;
	h=To:Subject:From:Message-Id:Date; b=sG7BzgXbYDDmMCGw68mcS8dXWE+Mzy16zrCFDp94JeiIOD7707KtT2hCrtU/jeGuuFRJ+kPEH54dIIW3YNZOcouIiZ201ShLYEbTSm8keaepUcfesbDLzciHOU5UzwSz6IUXxdSzYDWknkC76BS9xlJ+bbf8aBAKCe61WL4zbBk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SwjYQbXn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SwjYQbXn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1778C2BCF4
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 21:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783804713;
	bh=orEIEW43U9EEHNrWAEQPnz4MRZ7TPx3QHv1PIZKyk7I=;
	h=To:Subject:From:Date:From;
	b=SwjYQbXnGAienNo479f48ZHeXUQe8XNcm+z/aOPEJ7cWXHbx90s6gtZ8DvtAriTst
	 HFXD6jEb2iOS/poL1Pi7f7uEgpfpg3I6LKH4gxmJC8eMNqKoaLdXylvt5NGKVniwgX
	 112lHXYPe8YgXa+8jzzhEDFER+LOPsOydhHTKT8SV8daa7c953brUwyx6FiGWM26tl
	 aNTlBSVCu8hDCcTVoGfHCpZKeo6gGnDCysPv8h8a9fL2+eq7NJsmmHPylbKY98woR5
	 bweDU/TmGBpZlnRsKdAzKwFdJTl0CTTKmiWz+Au4qi8opWriTe/bPe+Xot44ajjJHL
	 lqiIl564kD2ZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9270C43458
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 21:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178380471368.8944.7648338171431583990.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dee2e333bea93e1aa670867db31c541af669eb48da08f620a2e1478628d63f18
Date: Sat, 11 Jul 2026 21:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783804713
