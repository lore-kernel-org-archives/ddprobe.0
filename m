Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3793C1CD2C
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 01:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748481594; cv=none; b=bQFRk9zUYrwwQyXRKn+dyTxGjoikfV+aEmsqNEbjKuW1+E3UzWlZwubWI8/lFKizXcLd6GM22QWAX3Yjq5Lm1rPMLTpNDYsBSJzJnE0zI65I3bcoVuesGLNwWLLGteYu0Ma3vhbZN0mJOJqERyA7kbTzEg16gW3eyPhF250GzIQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748481594; c=relaxed/simple;
	bh=OkSy2KZ7iwqw95qKLCSYxWdNSBo6FqDYxUNIfbrpUO0=;
	h=To:Subject:From:Message-Id:Date; b=n4Bkg7sKfgdL9INf00JBC0ykzTVCFwLjtNdwlU/F9DS19iMmTOspvy2cWqXoOISdl+L8wG/3N6DUEial40/bQyFIjsoAF561TLvBE2r3DxkSpAkVK04H+rmWhNq4t3zSYvI6gk6FnhnCiPLFsKqG5FWsTvgi9jxrRdwv9aw3/A0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZyqaNu1H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZyqaNu1H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4637C4CEED
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 01:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748481593;
	bh=OkSy2KZ7iwqw95qKLCSYxWdNSBo6FqDYxUNIfbrpUO0=;
	h=To:Subject:From:Date:From;
	b=ZyqaNu1Hi9IsKMxrrL/dS0g213NpSpKwaBe/dRTGTWmcyLkkm+vBfi0wzLocKqOpl
	 UF0AqPEhvd9lCJS0yoeWYtnl9q3UUdk9SpumypVl6WRjJnUOSIXPCjASoB1G4LAh2x
	 mFJDPs0FUSW8FXi/pkVzcQlIqjZfn98gs9ftBwbHWtTFBXy0DlMI82FjcPhyXLvZss
	 pMHst4fhREqPqqg7b3XDTP2hKpHOL0lRwEJFl3+SHs3Yq+bF0O9oLJP78JW7ZwY7HS
	 fpE6/TECFT1iw9/UyBG0lvKk3QV2+A0ufhxluX+hc26//EeDu0Bx+gZUevuicjjarc
	 tQTkw5omCuJiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F6D7C5B543
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 01:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174848159357.28592.10757906147983593008.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d2d7ed9cc7714b537e4f91fb194cfb023b3c27f01b926c64e717be01ad80bed2
Date: Thu, 29 May 2025 01:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748481593
