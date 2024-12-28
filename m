Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 454FC136672
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 14:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735397154; cv=none; b=KDLFyyHrGg4bMPtLH0Aq1rQiErXP08aYicp2QWaShHv3Tda+E11b6oXmHtP2hY7HYrDIVyvOSGyUgUEgkaYbucPWHvfm7yVtR57uR8nA+6Ld5LQjUbnRRYU1Z8imBRci4QVU1+bLZFTqOBb+FTG7FI19XhwVi/GNfcRwBrzi5Eo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735397154; c=relaxed/simple;
	bh=5VxyTwJ7//XBuwmUgQpqgLvyig0jlN7cgFYBohSH6BU=;
	h=To:Subject:From:Message-Id:Date; b=jN/RkkCYeoxJwH9QCYkleK9OT5RHhMCCDs1pnqwHpWrFiHCWBCUqUo4y53mU93M1tLT+4cgBQarcNAV/IMM+WmXxDQoHIEl3Twb3yp4dsBY7OETo8ZMjVJ+EVjwv91Pw003BphJrscZuGNmQ2cNCb2NuUDsIIHkY3VlyHteYwgQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NCx6o2yZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NCx6o2yZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D22C8C4CED2
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 14:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735397153;
	bh=5VxyTwJ7//XBuwmUgQpqgLvyig0jlN7cgFYBohSH6BU=;
	h=To:Subject:From:Date:From;
	b=NCx6o2yZnEmZoG/mkgm7RDmU0US78iafui5kMFbBnI0xG6RgPGGMxwrF5+2j/gN2N
	 zsaosM3hNDo+spotYz0TyXUMYCWhRt9QO7zA/YrSBYKjSFTxaOAWappEZVeaWJ4ei0
	 BrLMz2ZAUd8A1Oqqtfc9Hbj0ApIVIV4RBBBZR21fRrKVYDCEKeFn18MLP8zFMiQPU8
	 7AO6lqrCeam1umBIH1ru9JVEsfExtnG2pOMlJEsbH0CI2PpNtJx4ocPx+pvlWjEWF/
	 C8j/auCq64vSAEoDZK8EsRBO/X+R55xeBB8tojQAYphPzRfKBCf1lDGs6hOSPTm2Hy
	 TJrfg6ZUl+sgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5A9BE77188
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 14:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173539715364.8434.8945531622938227609.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 67795326322fe5f8fdd2e7119e9b7ee10776d3a4d79559c9cf046da37fa699b3
Date: Sat, 28 Dec 2024 14:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735397153
