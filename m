Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 453D34C79
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 02:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766975034; cv=none; b=EmmC3OF8GmcUf/pVawXC+JRO5icN1AWYNlkoNhtZh/kp+iPxtAGqcIMNgzW8IO9ADOsmBZEY500Fd+oZQkvIfu4CEYDAroElCD9R3WhuEasaNTKXv0b5VeyQdgYwjurjB7P3g3udC1yBvUz0wS7/QFeIDAV8M2686Erznue7r58=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766975034; c=relaxed/simple;
	bh=eFMTBo8r0GOv2Oy22u6q0KM4jPWulz/CiOrj0ijwrfU=;
	h=To:Subject:From:Message-Id:Date; b=NU+oHu2yO0sY9rAjBpf9LV2pZJIW44UIkAwIb57BlIcre8w0nsdyYLvGIuQL8munp69S2yUmlT4l1Cmz1xNkaOnZ65VFq7Eozp3na/P4Wsm/Pt0WRPUXUo7DuPI5R5iL8k77hjsGbuI9DR1tHLPO4PuWN7FXPvV3yzWERtuCzxg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L2VLQpqb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L2VLQpqb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4CBDC16AAE
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 02:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766975033;
	bh=eFMTBo8r0GOv2Oy22u6q0KM4jPWulz/CiOrj0ijwrfU=;
	h=To:Subject:From:Date:From;
	b=L2VLQpqbWuKbzUO5TMmDyWlDDr4ddYC/tGKU3CpjuhV0V+2YKzWjy9MN1BB2LZNyo
	 whQ0eltzw1L4Rc3wsPbSp6lcYxSBhwfBdoUAAYSl2c2jiFi76lIGwTAx7X8i/Q+rpu
	 55dqku6PN2EEyTJlmoTWjv5gVs2tDeZSrgLdg+vmU9WVNKnSIHXtrTC4vJFPAml4jJ
	 tc02+78QgXsZPxQF0NwXfx64c+ZVJL4c0KOTDm8eTg7ikTz2vJ8AOistg4SEh+eFv/
	 ciCmfvwQfhd4wR6oJYF6lUJVWt/HoY+X6v+mt831FSPWaS3IVh0wiUZiX6Le5hGnNh
	 2vQm46doRPPEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F1B2E784BE
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 02:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176697503360.6097.14041206832729035923.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47f3ac2e4c05c4338af661ca69dfce7ff0a1264759ce082234eac3084b78a142
Date: Mon, 29 Dec 2025 02:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766975033
