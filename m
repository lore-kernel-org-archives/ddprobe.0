Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C828817
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 00:57:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720659443; cv=none; b=IIG7X6/RvvEDLxu+mtyMhCTPkKZCmTl3HE1/Y6/71qIM7dfv4fHKr5bKuZd77697kED0okELT0rDJwK817g35hoig4h/f0fkMdIVdSN5Hmt8ex2TQO1qzKKxl7FW4MnBGBApIPeV+UPOuup7l/sh+1aQRFFh2GoE1eRrY8Nn+Ro=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720659443; c=relaxed/simple;
	bh=QTS/v0433VsHz3+gvoaO8yj1dVi7ps2XfII+RRs7lVc=;
	h=To:Subject:From:Message-Id:Date; b=ndMG9RSO4O7ODh/0I7ZPPYTiuLNGf3lXtb8bYTl0ozHnkPrffmM83Pl/fnZWqu/OSjF98S2urC30eZAf9Kl+FRa2eZzdFZ/Swmzo0zRCJhRgOLBQEwCbETJfSGjn9u0LOlBani6JHQ/Y/pBAPzaPrmSjR0sTc8G8JdCbDTtN6m4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HHzFtB9U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HHzFtB9U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D87BEC32781
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 00:57:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720659442;
	bh=QTS/v0433VsHz3+gvoaO8yj1dVi7ps2XfII+RRs7lVc=;
	h=To:Subject:From:Date:From;
	b=HHzFtB9UtiJM3KriNC4DAzzzuABZ1vr4hb6OF5C+9kHNc7r8yWxHmT0VF3Wcu6KHY
	 3Esr8XmiWpi3bDR/mu/8mwqBzwtlwEWmXry+mNich7ofsw2YldaboD/eQphNuPMran
	 p1o2pOI8TDBtJWvQISPHQZ1B1mXK+izhLNxqwVFD0WwSjxDqTIKLwN62UOrf9BJZN0
	 LZfiCDcx/6Ga8W0EJkyABZpmHUu0W6myMTeZLSeG8lC9DDz796uxkIBIA/NklwxrD5
	 d5+yp27ykJJjlJY3KN8lcEveAnpFq3VqXQooX8uoW39i/AxzPQa7baSP4HKmjmUbTZ
	 4/9BAMR1fClmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5313C3DA42
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 00:57:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172065944276.18167.9856877886048276785.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a6ebc8671fa1640f6802db9e91935a7eec84c9a5a7788f5f8f58de224a237a87
Date: Thu, 11 Jul 2024 00:57:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720659442
