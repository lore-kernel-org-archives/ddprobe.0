Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B90DF4611DF
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 15:43:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769096634; cv=none; b=DRwWs7aaDYZ6baLyFszS4DMuEqPRM49KEINvgMFId36+6jmGYhxdG5sv/841tgRBNTLbbUSjtw8rglSpHMkeiCTxJyjHwS0qInP5s82gJiRRhoV7KzZpz+l27SrS8muUFz1PvGDevzQGjIlXqOrdPNTqqaAYjFNvQCRB8XxdjhU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769096634; c=relaxed/simple;
	bh=IdB90dN2rCOhx1ABjEoy26liHMWVa3LRpbdGbf7Rwgo=;
	h=To:Subject:From:Message-Id:Date; b=QSSOPY8CsqNf5UaUb6yAmbTUHwLv/LRhDkHiCkKiBIDY45yAfdEQl4sf0/OyIk9MPFxymV+F7X10C95K04REUMeVCZeUxIGj2Mteglg+i9e9fRZIZEIhqd+berIAC3x/UkU16jr5LlmImEtkwCp4+TJAE1EaPPpdtceAroziXGw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D3m9ltbl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D3m9ltbl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D56A6C2BCB8
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 15:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769096633;
	bh=IdB90dN2rCOhx1ABjEoy26liHMWVa3LRpbdGbf7Rwgo=;
	h=To:Subject:From:Date:From;
	b=D3m9ltblsy+ixZjBaeM9IBG4hYzKClZGt8MrLE9V1NCsn1Kz3SOzlVLwQUURKJnXI
	 R6TiILjzHch3hDcJ11Wi7CP591iiI/JQVTyMOVEcVXdiiQj6KhAhIJzBEwo++5RSNe
	 edGmX/0SRkr7DS5tYlNHLlyTQ0tohuCNULp9jy/BfEoShv3Wglw+lHwr+LzOT1UntT
	 PyxEcTqQQN2Az1c1HSlh1VMf4f3Lc549RUMNlnPHjxGZACoA/Q3BL8LJeqkYLn+BbX
	 3or3ypKzaIwwVMJywLSE+ey2/DBokKZGEcifAJQxBRwJb0TriE8n5nCYKL3Hzwkg89
	 s0S6Y953Z8H/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90EE5D3EE7C
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 15:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176909663358.9706.9589655813382132725.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6ed588f1e08e8912b8463f1e5b91063d33028a89874aebbd0a370261f17dd7f
Date: Thu, 22 Jan 2026 15:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769096633
