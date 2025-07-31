Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F0B927450
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 02:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753929594; cv=none; b=VAO5LBDu/m0afL+XovrH/8RJz2GnnrYrpdryyMFsi1puW0u+qhv4E/pCxxNrjtADMbLdyNJrabfovOrHVq4anGBVhbDE8xbQk0x5NWrvbGsownZDwDn831A3/MNgA00bf5TvKMsrOmJr+yn3YB2kO82Pr0qtXd866vIDDLSGMJs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753929594; c=relaxed/simple;
	bh=47tIMeu3uzJ7pruj/ORs+GIftxWAvh9GSHVChWJMu+Q=;
	h=To:Subject:From:Message-Id:Date; b=TrvQDtxEWixD3nq7WGj103OrJPdHyTzXW66ymo9VBBGyvDQDBV4vAvNBwR/NECBP34nyWhMu/y/jhV/lPzlMNELP/NcgmXXhd3CiENb+3GM4PeUCKM+/I+I7CkFhQku3wztXeyEB6aZr+DHJXD6XoHVZ3qHlZjRUoLaKCoIa0PM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=foolc/bV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="foolc/bV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0D30C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 02:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753929593;
	bh=47tIMeu3uzJ7pruj/ORs+GIftxWAvh9GSHVChWJMu+Q=;
	h=To:Subject:From:Date:From;
	b=foolc/bVjzNIb0spq6PEhWK5aI4eXZd/mxG+CV5ccjx1To4UAInacawU9bhcGKZBc
	 QlQ76NvatVnCrZvfyi9VkeNF5/PG9+fJI2P+Q4pk8nPvxaNEu2/c47xd42Nl6e9X9M
	 B+qAoX54D/LiQNS3tTKotsHUSDp91wfYC7eCWRDYpQ7MglCKJjBXQuxz7HdWwuoqjD
	 W92GCsAEFXEf7wOedVakLdlZKjC8Cqq+MiZFQJqfh6Db55KoZwzzEKmQJUR+jZkW+O
	 7oCKWBxynNovQnkshQJzBwuq8qszvnyxRyNHCh138UJP0BF0oMgO5gUK+Q2S4lyyWp
	 zQPffnm1sPZCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92EDFC87FCB
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 02:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175392959357.11499.2310953662444941877.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 951644ed636d83b8dba1d23489d9850117c47c5c53949ca73a86a15b3069adde
Date: Thu, 31 Jul 2025 02:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753929593
