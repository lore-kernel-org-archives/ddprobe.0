Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 947B419DF4F
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 01:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784426314; cv=none; b=lSDhyILgStBb3xL8/mqJngsaDKagKOb09od/GtCiGBSLOBHQonTDHaxTNRYEJPLNmoeZfIhLsqhxqHXKY0qi3YZblKPhFYJVWK8gWuvo1zsSagg31jmAudK2tUg+bAW4D4sNpm8t7P4ov8GdvwBatHTeZIQXPKr80cbpNqEfO4A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784426314; c=relaxed/simple;
	bh=ljp3EtEmkFu0sohJTxqkNYOyEDOh/jiboiUXlXI0WvA=;
	h=To:Subject:From:Message-Id:Date; b=EvVvaZ4OXuFrqv0lBxGEYNUz4kQl+EZfSZ57tvNsjat466Plp++wZDmJxy2r4PrBSIVjq38ro1y64j556hIIW9daOVpKT8di82jxd/D5HWZK1f5k8P0xeFYWGJKBu6gKMpMrbU41k46soHbfS0djFQQrM0CobkpyzwniiG5/FH8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kb+ZQ3xH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kb+ZQ3xH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 1A139C2BCB7
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 01:58:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784426314;
	bh=ljp3EtEmkFu0sohJTxqkNYOyEDOh/jiboiUXlXI0WvA=;
	h=To:Subject:From:Date:From;
	b=kb+ZQ3xH+2DTgURzCrZP4qsORpnZVS4oBXKqRIho55YfDBiLteo/QoB/VM4rgHZ7w
	 60Gyg1M38vWVatnVwfKUWjDK3A+12MdtWZ878ruwkgGnf0lhUR9NzwthrAAZp5thZ8
	 piLJWkKLIkl1VXUl9y9KU7ljvXJr/r0yYyFc2Mmx1+byacf1NtWDZLQXbvwXwiNp3H
	 HLv8snZopEtBLQF/grWE1A3CXj9f4ygv/11Oj9xEy/TMnd7Iu6uVcyxNkvwomvHs15
	 zN/t2IsfGKNL2iM/RrFX3AeIoPwEZNbcgBKf8+/vFYbBbURfyr92aEPElXNU/Uyh1H
	 Z2ESkTsoNcG+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D34BEC44521
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 01:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178442631376.12369.3803552095858999411.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 026ed0e8ef7849735a0e4f6b71cc592363ff659f753fe10a3b317912bed9722b
Date: Sun, 19 Jul 2026 01:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784426313
