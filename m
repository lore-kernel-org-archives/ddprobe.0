Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 789A350129F
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 13:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790862634; cv=none; b=Oz3ThfB5CHEnFdUCVZej2wnB+zzm1P9IrVsRK3TV0r8rUNO/Q9flWBC4Z5N4douBbI0Vze48uiWBZ6DDWSB3GyWuv6jzn8aKVX7GDjlY5c9nco4Z5oh2NYJVGqn1QIoP4m3u0SSHd7abGSnH4m+S3G1IuQv6HEwMuvn2AjUcui4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790862634; c=relaxed/simple;
	bh=sx0bb9u+PvQ7/3WF2VWTbFXI7C+fuJiTdLyLB7rEs+4=;
	h=To:Subject:From:Message-Id:Date; b=PAQS0hLPwkxnBPT3KOkbeVPpjzdNCtB2eBh68zenJu3ccVvOhaDZJkBQ44DnqHIRs1ayLEcPJvn3W8sf/0Ql3t9PhCISKs+sPkpnhImbrh+wnWm0byn1hy3HXanAn706VvH/wu/1dnP9WrL7j4Uz4PwkjejM1w40VAGG3oSxivk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rhpI6Ll+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rhpI6Ll+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D30BBC4AF0B
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 13:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790862633;
	bh=sx0bb9u+PvQ7/3WF2VWTbFXI7C+fuJiTdLyLB7rEs+4=;
	h=To:Subject:From:Date:From;
	b=rhpI6Ll+gZ1JweEnW9YjGHQemVnVqmurgUQHgIxBrAO7IsYzXQujzPoejeQ65Qg4V
	 fZMMfdUB0F8nj1svix3Je/RdrvxGzVGWAFakQZ4Av1vxL7itJj6D97G8848RtEtHMH
	 B5i/KIx61IXTPOwPmN6kRpBBpoFN1bz2p4dpTijbBtdAhIeBCdwFJaEsZWVxIShZ11
	 qyzXB8hMP8TgRO8QnTgAjm7Go8iOgWteOoLX1DiQq4JOpZ2pmfq9O4OFm7t0clngoE
	 TE1Ly6RGYyRn12I50yr8G2T3lXiMzTe+Nuq6xUgK50AAEaJ9Q5LL+kRtr0AE1BzZfA
	 hDhz97mvXJlvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE8D3CA5FD2
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 13:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179086263370.22064.17110816709329537004.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1d22415b093e376d5807c3f39632f2ea6b002ce342aa8a036db0d037031ba48
Date: Thu, 01 Oct 2026 13:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790862633
