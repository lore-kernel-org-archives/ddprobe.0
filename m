Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A79E182D2
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 21:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750541394; cv=none; b=fncW/3gR6lFyTpxeHjzYX3n5pNhhTXQ+ZmdEgXuU4LoNhFEJrEvTbl8JOve1Ysic9DGZUlbXYpAmOyWH9arcyccgOEGNcJ6r6zYVCMdU4RBSOvtUqqKwQGKI2Rv1oQp5t8zhKgi+11hzpZVBUw9UxFVUIy56MMWdgP5KEKBj3wo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750541394; c=relaxed/simple;
	bh=JTAOVha7tz4/UGUUJNUCClQdt43sjCrs5VyJfN8GGys=;
	h=To:Subject:From:Message-Id:Date; b=uS0LrDofXa1y5eA/P2vAn3bcuM/hOUSSoRKr3uCLKrSFwHUr0St3RCbdTUrpbfrMt5/RLciFM2kn6MG34/Uhd9gY7T4WvpBXUpBExbcdJZjQ8tzEF3zOrb1PaIcWA/DEmxEyTvDisuHzboW6/ZZrLWNfREC2yWKZmb84JzKbanA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BHETqr5a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BHETqr5a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A34B3C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 21:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750541393;
	bh=JTAOVha7tz4/UGUUJNUCClQdt43sjCrs5VyJfN8GGys=;
	h=To:Subject:From:Date:From;
	b=BHETqr5apKr7P+aO/0M48Av1GIYdynx3TpgIDYRsN8i3E6ryVZ4ZE3p3A6L7l/szJ
	 JAMO0/iQJLPsn0u3oaL3GgzunP+nfifZSy5qrMfRXlar+QJLkD64abaIbWnOG7nzRf
	 28/QcbJDalBESsype8R9/YKxAdzXv0l6upKZst87JIWaK1PScpAEVccQhn+ZeWKT4N
	 WWL2SLXcUeFWmmHVfuN9CtFhUGEMdV0h3aSlt758EVuUlF9lxTJsBY5FHq19TjBlaN
	 9Edfpx3BDp7zZ/MBx4ysb13Lw98yPt9kJW2QqW4hvLqkNu28oczaRhxjfNZ810OQFm
	 IVGBpB1FdRLGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91DDAC71157
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 21:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175054139357.11455.2548312886998930655.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c2ae27e0cae93a55f819140014a5bddbbf808e69db2e0f2f0331a748638be02
Date: Sat, 21 Jun 2025 21:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750541393
