Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27079354AE2
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 09:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760866794; cv=none; b=KQQPr0ldem0VxH0dSZOlY8bNnuLOYyREELThaAOuhSzg9q8N0oqIILR+gwi04HtxwBeIczuAQuNL8P/NBFI0XyRL3eeZoL/5RRiJ3QqWPIPlGcTlbgKpaRII5PWi4i7pCnIRBXBJ1nP5CxinX8nUAEdJUVLsFKr525XXC82Fm68=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760866794; c=relaxed/simple;
	bh=OjXTP0tJSLB94QZd/mljDAxEf04yns/E1suXKxJaGLM=;
	h=To:Subject:From:Message-Id:Date; b=J4dmW+eixfcwUEvVxvm+6gpnr41QVvkrh87jn8/nYSbRaMIXdtXeqxPtfjsh5gwLXV8pBTsfZNZBC2TzLRLCuNoYorw2px/3qY2hpC6V9RzvWU68zEj3aLVK0JLgBT0VHz+jR/O+ze5kB95/Sff/lbuGoC1vnpfO6lO7ma4ii5M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oQkFRS76; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oQkFRS76"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABCA2C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 09:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760866793;
	bh=OjXTP0tJSLB94QZd/mljDAxEf04yns/E1suXKxJaGLM=;
	h=To:Subject:From:Date:From;
	b=oQkFRS76jfKjkiF1OXSQ3SAuxCG+XlAseK7J3mp1Lnk5wF7jA3NBVH3RoFpgK4pUi
	 h2eJC1NftdzSQxc6bSP7TNzYAzmmsLf34WFMiMvYgRJNT28j6ZFDH/B0b6icWoJuLU
	 JRH4eEmCnY1cjTvEqacOO+pfinVil1l4IA9EjGIJ/w8zgmadnFvtU3fgMOB57lJfRx
	 rndVmA57eQ4yyuSpH27SRswJQKDhOZTdysrS9algDj24sqNiuEJMFLY57FwQxJFAZE
	 UpapqP0fkwANG7bCRnI1wNC+AdiACFVMYrwp9z3cAcN5busxkcby5yfpt1Ml1Jw0ZH
	 IU4XAKnfxtvUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9ABABCCD183
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 09:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176086679360.18861.11562197782229607755.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 77154ef0f42a853e3a1df229b660555a97ab16b43a9745e106238c106b0d1781
Date: Sun, 19 Oct 2025 09:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760866793
