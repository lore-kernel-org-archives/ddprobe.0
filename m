Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F3EA282F2C
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 22:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785797434; cv=none; b=UYhBMqrADvT7qOH8/eggZII7eOP1uvywhKFzslxPt5/OVaSpe8GEdbQcs8YoO3C4NDCSXqjSQVxTec5/5OxhY5AD6mxJZBFD0FcrXsM1f1uLOg5w459+PQnzsNJCWLTnsmdvv70TxctrkQeb6Wp2Xk1n3Df87mz1A4xO6bDS4t4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785797434; c=relaxed/simple;
	bh=y8CujodnY6niPJf515BVNTbmcdhpBNPT92lLrAA52Eo=;
	h=To:Subject:From:Message-Id:Date; b=vAcxjF2b6tU+SkDD4Rm8iw3X4sdcNqUpO6mM8YuJcF31gJ1z0nx2P8LzyiepKUjEmmq/PgrNxbrpA3oibbMrXCWW/miQLnMwU6BdMUHSncW+K0yvkp0ivHXoZrJhz7c63EYdJrrq5FsxP1T695wporv8XGan8/qbVX59H2FzfP0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uKYW7b0M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uKYW7b0M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3E07C2BCB9
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 22:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785797433;
	bh=y8CujodnY6niPJf515BVNTbmcdhpBNPT92lLrAA52Eo=;
	h=To:Subject:From:Date:From;
	b=uKYW7b0MuWiH10JXsjvd27TlDfKF28MQaY7BvPsTaRAvfFPocVlM4Rr5OrBtxpVBk
	 H4IZ1YEREmnRZWOJugNNuHjMWJYxTm6EDZWHyRTHmEYgmEXkhNqxylvR5LoXl+POpm
	 4kmAPs2UqeeuLF4LefnSr4bhgzr7cdNbAFIPzfJWY9nMrJkfLQd1ONWZ3lUhBI/gn9
	 DrnY/rF8d1w/w0/VzbBVaMDpSbauzgTM0kDPdOq3dFnWnnN9+2wZD3yNnei1DpH1aM
	 RiQ6aQK1au2N/tV3UzZm4edDnWsO7Q4suGEaFp5WqM2OUI62XsBZEaGnOos5JN5xHT
	 ueJZ9dmui5MZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0582C55182
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 22:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178579743368.11145.12350619599544602943.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 39fc460bb6ca5b1a586b9446b741e4a5ec834684efc80f2bd06cc4023737c88b
Date: Mon, 03 Aug 2026 22:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785797433
