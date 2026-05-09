Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B90B299A82
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 22:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778365114; cv=none; b=HFLwBDp/LYqhGKeHtZCNg3UsGseLT6JZk33QJgeWM+f6imFGOGfxHejDzAgQ8NpeeTL9CY8mP0TMW6c6qwTMryVO+u+Z44vEvOrj04yjZmMVx1WOnpc9M7XMtB5teYNS4TsRzZm2vJXRdDnQMhm8Ym8FE0eYJ4Ve/Ld7NSJEo08=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778365114; c=relaxed/simple;
	bh=Ho1nilkeK50GCkOtBrhfgwW93GtEFi9MyYvGAeRaOvs=;
	h=To:Subject:From:Message-Id:Date; b=WOHzQp24C8rAXViWyGONV9jST4PKr/70rfR7DPppJIc0K1YzS/sXiBil1SbzqQT0Nn4+E/aBqxNgQJNKV/7/JwBaVxY2wIOG6Bg8QasGH1V2vBbNU53uKCJUJkhmdsTJs9e+/fp9NuMB+8btamAH/BFWlppPoLXNxHU/fugKorQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NHhBqEfu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NHhBqEfu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4F1FC2BCB2
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 22:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778365113;
	bh=Ho1nilkeK50GCkOtBrhfgwW93GtEFi9MyYvGAeRaOvs=;
	h=To:Subject:From:Date:From;
	b=NHhBqEfugfS1E0syGnYA8NSqDEBJleE2oUPCKSCAbQ5j7q2rmfJ88F/8dVUDq5zVy
	 wsInjLiyWLdwMM1kxnJ5a2CVPq21Hz6QSjTQFj+DKCvU7Viz8X7qETj3L9zTwaY/Pf
	 f44ZVMgqIUu4AT03u2T8/x+LzOzqlOyFx9aITmElP4aIqBGusxoi1TfSTxnn2kMMZ2
	 J9fPBFcdXRgMiexqc4djIYJi6HEAb+syZ1NiRPag94zuUAHCi1N7GykVoHFXM/hfZf
	 uikZneZmd045R5WoZI3h18LjwzrzLJGcHOl9ephOa5uFsHudiD4t3coIo5yX4OUova
	 cuDH4zAJUpCRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4AD4CD37B2
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 22:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177836511375.10282.3436874658054430027.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 51e6ad3af452f075daac2b77129505703e89123f8a5ec0fec8fc3131fee31a64
Date: Sat, 09 May 2026 22:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778365113
