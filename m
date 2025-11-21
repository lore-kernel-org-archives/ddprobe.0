Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32A2F29DB65
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 18:41:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763750514; cv=none; b=ZZNpa2AaC7kLi1vKtyhE48qP7Y6hoRneXsivjE5722j1DYEnckTcydqTvYWb1Kzu0zOMVyKljcnLLPdlDX4MCY3kr/5bTJWcMvuExJlqaRK7yfHTWnD7fA05AU35M6td8e0ykIZfmTx+9cpVF71FRXEgiBqIkEo6FEeWc724P30=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763750514; c=relaxed/simple;
	bh=SnrVixM8ltgDpcarXY9hjCzGH80LHrr3HNJlWP2gY0s=;
	h=To:Subject:From:Message-Id:Date; b=Ib9f8zwpwqR1BR4XwI5FMsPZ4xzLO636n7ykradksxVBWj0x5DnVzq//vZEhdgUkQyiZIHLNsETzlmnM9hE6372TXef9r/cEAdwAwFX331D+ZVMoxns7QliQnGZwaER04dHn5Fj4kNBx2hjp8ruL7HHitGhbEICumB34sviPURs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AEnavyOu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AEnavyOu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFA26C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 18:41:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763750513;
	bh=SnrVixM8ltgDpcarXY9hjCzGH80LHrr3HNJlWP2gY0s=;
	h=To:Subject:From:Date:From;
	b=AEnavyOuwcOHwGJ/bNDSo7evrPkVhJo85VLbfROaT2POdCrANqJETCQ0ai8TMZZG+
	 MajRQa+SmnXRxWi/ZAgOApwD09Dv1fggiLYbkhO1vOM3Sixf+/o0wdoSUhtkXuFxMI
	 ylcaKey8VTvLrbYivDsFhdWA3sMIv+twIrCPGSotZ+aygrvsYP3aq9DksSYKO7r6t+
	 W6hRBxZj46T0BV05ZCXxM5BU3U/NrZDBMyoRwbA6joPsXi6hXdp0W0BECOrhbtPXYX
	 2seL1bXySnSKh102KvrQ0mgOeHKT9ClU8YPe/VfwU2FGFbSVrLOlgMyUGIEOBr684l
	 ECCWkGM6L/HYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 996EBCFC29A
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 18:41:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176375051360.15724.18240599976284227706.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8ba2b4645928924d6be605ddb8dc6eacde0a67b9382933443f8405922dc9339
Date: Fri, 21 Nov 2025 18:41:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763750513
