Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F151635
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 01:38:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718415503; cv=none; b=GT9cwmod6pCV0e5MxRznHxMFsvK7v3Yk75CVhUjJNIasKcKOC1pZ8lhJuhDBHTIGOEIJYmlbhp8EJ2fCPISK9hSSr9OJPfXcVs7uMiiHPNK/7toC5ZlQ87JZNs4Ufa8bgXy5KxzkPKLNYWUMmJ+KKwX9nM8Ua8uaVtUD22a46ts=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718415503; c=relaxed/simple;
	bh=tH1zVw64G11evaHohaPKFG35i28+3t8WvJZjECR9jEQ=;
	h=To:Subject:From:Message-Id:Date; b=kE3jUT/SsTpuAYKlt2p5f4VSjY2Dxp6lnMraxDVYvP5oSGvHmGjzVMoL+pqPRfh8+6DPInki4PsyTRDh0ygOxdynSHbFazlR7bn9nQWdH5y1uCHukxr06ueMPFe9UY8JOJNXRgDYTPkJT7nPcKLkMyZJ401p9PPzrllmTzcKe8o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EuTQgQsa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EuTQgQsa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5AC5C2BD10
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 01:38:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718415502;
	bh=tH1zVw64G11evaHohaPKFG35i28+3t8WvJZjECR9jEQ=;
	h=To:Subject:From:Date:From;
	b=EuTQgQsaLGWOCwcg25ZK9vYRLPZWnLP0aPeEgAvFsA4W3lq2r2PaCjgmUyHDiRfd7
	 HFGGv/vlAlvsLL5hWaoezOtdL2dn0N6wuwWezeYmPaCeZPDw62o70C+JcBgRvedp34
	 73Ap0NTkcUxxpEXVYTRu7lgXfEiiKKx+BAXVNmy5Aq4N46/4ttbXlZAxEUJ8WCK7S5
	 SvcIjkamP0zQJMdQFAKCpOIA8jwIQLAC+DlkdFZAy27R3o12MNiGikGo0Ce+ZmFO7O
	 U9KAtuVgA0INTmRZHjrNQ8f0yJxceSuZQoCPuEacxNyNMeN/73QDyCRqQ4ePUAHof8
	 YCdb6wgRAg19Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CFD8CC27C6E
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 01:38:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171841550283.3023.7626962986765896194.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98b28b42a40aa22d23613692e241dd1b0ea93ac0bbbe3c40e9bd027f37d97ebd
Date: Sat, 15 Jun 2024 01:38:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718415502
