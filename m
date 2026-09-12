Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49033275AEB
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 04:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789185634; cv=none; b=aohD6z+wkfgPfPaiNRWf9poq/4umKTBRtOd8pWWiU3RaX20xPdZxXQhm3Cs2U0P831EndAahnkwbGRhJ7tYuSU5Kp069tswmFhwxR84MiXyIIzsiRx1WkmCKJRUP7iTozmY16KbiUGPpMoyCZm1RwmoRx0+O/98Luf2RL9omsqg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789185634; c=relaxed/simple;
	bh=5MfJ/F1M7TapGgBMx4WGcm5fZxUmY1jCwPViTm56jPY=;
	h=To:Subject:From:Message-Id:Date; b=e+83S1mOoyb5+c1DEM+z1xzcTwqW5seTGVeuM2HLlNyAecWqCXidAwLe2HEawbaKKD9dL6c7eVHe84+SVeTDIPQ3u8Wbc4Ghm/fkKLy65nCRGmcqIkcJoKinu1CgMZP4zmpTO/H/5hsJnZsJSqik/9Cbdg4IF8aBaTIQmoe+tws=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XzHxEZqb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XzHxEZqb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFAC7C2BCF6
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 04:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789185633;
	bh=5MfJ/F1M7TapGgBMx4WGcm5fZxUmY1jCwPViTm56jPY=;
	h=To:Subject:From:Date:From;
	b=XzHxEZqb+/IGwVpboIM3HBBdrCLSGWhiAXDIxdVYXBRzLly/hHxWGEiYSY7qgvfED
	 OB2y++GWwU9KzLSznPQVNpwHq42FxrPHpClv5mImK+tiEjCa8bIqKnTUlQ+pMns9ok
	 3JxySDq+JmpkqtBVaW6kwjyAP7ZQHSB8CB+uGrh23vLObb6YMvbhbU4KGsbgCaSwaJ
	 KxDJT5E+QmT+mfq4oTW4A+2/VNEGrMhYZWOF3Gzu5vw6rZaJCagWnobaItllGqb0Vy
	 WGiNBw9tdQv9UBd/bFNZ4up/h6pR7l4Z3bvMUCmH0exbBRcp+CuHAyiDsENkkDme8h
	 1p1UEmxLh125w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA0CEC79FB6
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 04:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178918563368.22079.1867010694824095617.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e790c61aad2c48278e5295f61cd3f6cfb65b001590b53f647ed59e04664db17e
Date: Sat, 12 Sep 2026 04:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789185633
