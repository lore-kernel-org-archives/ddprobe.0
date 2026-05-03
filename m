Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0011F2D949C
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 12:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777810054; cv=none; b=XK/gLuUnh5xX+QNd+iUJGnZY9Qz97kfLeu6RkkLMgibS4v5Y9DJV5272tR/c74hrohMTyYeb+1mAwy7/Xh/4ES2kt4v1aRZNYtrdW42sQomd6OfhLYQ2zL1AarZmNfOmNvq9+cqJYfwfWOWnoCjkKYnRrRT0pvkP9LEAMcLzjDM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777810054; c=relaxed/simple;
	bh=QB9DEa5tF8ti5VfsCMuG/cJ/4iLXTUNlJK6qnchcwT8=;
	h=To:Subject:From:Message-Id:Date; b=Vh+56wx1yIdikW/hIu8hSck1HSu04M51iuaakpXR8+Sb/D7l/S7viZPkpipYdufQMCU9dSr0hNTL+nkx9sD8oNzGcsmJObqPdU606fmwruyThsKkqw/RITizX/08arwgLlUruFAp4ZmsOvWvMjeRUt0M6w2ZjUnUpzshCx3GYmE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=piHaQLhV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="piHaQLhV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C440CC2BCB8
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 12:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777810053;
	bh=QB9DEa5tF8ti5VfsCMuG/cJ/4iLXTUNlJK6qnchcwT8=;
	h=To:Subject:From:Date:From;
	b=piHaQLhVqVDdXmsN140ynPwC08OLXtHXcKfVa5k2YvTmcK+S9iurhdw30Wa0Dhpe8
	 192uLIf+n/AJx3gLZ3UdZspBC3PnnOapaVgLRGQA4KaLXbQBaSAvimCZHCXySecFSl
	 +0GLywCmfd+2Tqpyx4psbtwakWFamRy+3yVvEzisnTZJqJsBZuPaw564BCP6XA5blk
	 +f8dP5cvdXYHp7KZaEaWG036ouTfElZtM7lsEDpcE1fTEAYxefV4XVNnbSWLjdAcl9
	 4Bv+bfLO0vzvc6pUOgrYWXgjkROSjgBf1xvTq16oBgJR5/xtOqNH2eavinJ2WCeQ8t
	 M3vL6Jm52w3YQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFE61CD3424
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 12:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177781005368.11416.18280551030444735272.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27f9a3dbea251fc8736ffe54ef715d0ee0f44f2c03a27db9710a47c7809fe533
Date: Sun, 03 May 2026 12:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777810053
