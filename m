Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 184ED54774
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 03:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774151694; cv=none; b=d3pmMK9XKvasN7aUsbEB/0VYxis+ljSeI1Feb0VC1F6ykI7y1sO6ZojrwHPJPW7A6o5Mhd6CyGTdaZB9JjCL8bpevMi/gQ/72Dxe9gqJDKT1iwSMNDgqa0HYJdjooVDoBpStsXHk+etjJUpbzQMuWAfo542wdscEnKvuT/PS6CU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774151694; c=relaxed/simple;
	bh=c6r6VoxE/tdApR04Or2QcPPPyfTyFTzSb9/vyEUv3tQ=;
	h=To:Subject:From:Message-Id:Date; b=snCCzlKsX2fC6CMdcfikq6MI2g5bSV633frYwlLC4LKNOcNyLNA1d4akMePndXnp2+cSAOOv/Q7SyZVzVuYFIhZVsGCvoa1MMKaSH5YIIK+dzzkEkgk1eSBZ1E1nYnn2R5cNGOL3vKS66PE+JWg1MoDIc6kchqUc2apOpvtBli4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=modrjbeB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="modrjbeB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A602FC19424
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 03:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774151693;
	bh=c6r6VoxE/tdApR04Or2QcPPPyfTyFTzSb9/vyEUv3tQ=;
	h=To:Subject:From:Date:From;
	b=modrjbeBEupDrvjSRGyBFLFsCosktgF2kdy6d5N7fpiV/ID/sg5ArxV82CpvZRMZ2
	 x9lkCuzP3npMpG+q8BKTRtuKkPlFs/umgyTFfFztm31WSAkTuLhjFiinPbRAEweFAM
	 TH7EfXlKZjTDG23eau40dqDqkPFO6lmQM3n0qwnyhEU94PAaCw09QiQFYgc3Z/O11q
	 uvW0QtaAluIcC5KbpQ0BqUwtROYyMDQ2PCJrbBYdcw/jfWEoZ0hYef1dZv+rX9GcoZ
	 l7G9ZqUWFFqh1GISfLNmFaR2WqrG6efm6xHSrgqpQfLCJeUQ+dYKFz1pkJ+NQoS35G
	 h//henFre98Sg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93F52FC72AB
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 03:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177415169357.22712.17038581113676020285.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c851d5a61230ab0758006ec5b5f119e938b8f111174569108f974ca97ef4a24
Date: Sun, 22 Mar 2026 03:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774151693
