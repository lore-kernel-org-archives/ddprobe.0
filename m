Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3692CF9EC
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 05:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749189594; cv=none; b=REnE/bUg9PHv64m2LmNixmJdG8j7oketmaUw2k4LB2+7xtPf0YrvT37u9oOT+jUOx0b7NLeWGDc8C7pUEcJC/6Dm/OBG38JN8a+G4YKEPmV5OHRT0aDhIkIJiDPPXcgkjiUJvaIMTbEcipUq2Q0pHae+HsME9wf3nuHHxLs548s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749189594; c=relaxed/simple;
	bh=WgRw2l+lnzSllsROGdOZYJrYQtnUrCUntkbsLwvYCnc=;
	h=To:Subject:From:Message-Id:Date; b=uwCPdQ5yBWouemmEZBPX63Cn5HofVX+RA0F21GQSB+0gc400MvoTifP6Yf1WVBGCqu4CD867enEzxGqSINpDVpgzlEb3FwUvjkMGDWkwz1GEXxIaAg1D4/Z5znL1MW10IWi1TlE2i8OCGdpS0/HVL9c9OGhVfSQn1jiV2KYQMCI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=giXA2IBs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="giXA2IBs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0CDEC4CEEB
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 05:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749189593;
	bh=WgRw2l+lnzSllsROGdOZYJrYQtnUrCUntkbsLwvYCnc=;
	h=To:Subject:From:Date:From;
	b=giXA2IBsrpusfGzRPyPKNHapSVWggNN9qBFyXi9hBYJ6ijpxvuQsPHIFQSoPrpmDY
	 cZlE3rttFe8IOe6wiNef1lTmZs/EvuGOlfQIO7hj4cP2fzAs0YABPT7NU73u49wpd1
	 PRyftw5v9Rclai12xWKfKRbErghLr3XtaQkKzOmK+6+r5yYJAKqvQibZoO4mYhxpaa
	 Y1ZAiWiuMFPVCfF1yJgDi4HjT6gOu17E7adX3lGdSMudtvkJmnauZB11e+BHVMYvit
	 ieaDBaZ22pVNm7+b73k1iyTOZVxF+4mACR8nAHqAI11L42RLteej84DC5QQpx9o/p4
	 Wwru+4SbfaTsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9180DC5B549
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 05:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174918959358.16603.6872870410353574752.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e1d026942cc9e7bccda54e9294d46ef47b7391131868df3492b46c546f624bd
Date: Fri, 06 Jun 2025 05:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749189593
