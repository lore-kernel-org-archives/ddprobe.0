Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DD4E10A3E
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 01:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749519594; cv=none; b=TPonw+2k41fUzol0NngTO6ABgrAhEscbnoiM9HH/Kf6rqQ4vcsmXRmEFs8lpVTBXS4EX4VOztXBXIP4COOmzP1TMxGjtllaIcK8xFyS25dLuj8vzbog9vPjfrd/hIDzyCUywLCLkTINbLDH0B5Notc1vCmRWoDvp5gsL51J/Jxw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749519594; c=relaxed/simple;
	bh=UvirSM85a2UJZyHY8P8CNSwlbOgUeMkiQcPLmisJz1w=;
	h=To:Subject:From:Message-Id:Date; b=bPFmyk0wL970DIUg/4iiFuI0DIffUi1g4T/rrH9uhu2hguRlRdqA3lrSu8eMskEZ1rPVHXYCkwC0k4b5PVZwxOD902noBi9GkfEVnHRRlNyMYbVhlDPAk/pzpKFZeAxitN8SLoVJlrq7zXH2Vq7gJ929jt+3n9ivBYSmmMwYNtA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DQH6TpkR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DQH6TpkR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7689C4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 01:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749519593;
	bh=UvirSM85a2UJZyHY8P8CNSwlbOgUeMkiQcPLmisJz1w=;
	h=To:Subject:From:Date:From;
	b=DQH6TpkRt3qubjOU0uGO5wGGk1XY4Dbd9tRiZEMFQqzJqjEgDY6zWrJu9NqoZ+r0d
	 hbe/Pq2JaLdt9CFHru+3ZdlzhQCbI1orHvqy35praB68Bnz9ofTMV/iVjy9wHw+fUf
	 nljJECjexbQTXUCyE/Jjlnz/TDgRqaSTUtcxx+iUIqnfcNLEaOQys/K+bPCkD6lwPl
	 LCxmnlxmfyaVklDuzI5cMA4RpU+pGIbefYDPxRxKyANfXdr0YaZclCRUO/zq7muIrJ
	 HHAr5PCWTR8ou5D2E5AjplzTpUEibMMlyw90oQefjS2MM+VOISU7mz/oRcP33flDMc
	 3K5ee77WOGO8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91261C5B552
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 01:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174951959357.32322.326490617818183328.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 980b447894f718398d616d4ec5337ef4d422704ab6b5df2ac334ab2667a4d56e
Date: Tue, 10 Jun 2025 01:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749519593
