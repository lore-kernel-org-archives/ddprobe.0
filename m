Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46B7E4A23
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 05:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779255034; cv=none; b=dznhNKpNrW6aVOCDKHwDhuUmAkRspRieSM/zzN5y9aUpiXgCu0Vlte5KDvwjJtIEqpaAwsQzBOsVrUZtawsOlREorLuEocoBnejjqDrwDi7xAbkAMOPzYWpf748wFfsbj7ecs3eIrl8EIBQXGwLo+YCv4KYKd0FdvBZc2KdwRUs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779255034; c=relaxed/simple;
	bh=/67LTxn7okf5np/DajrUWHJWzbvMEIoPPlA/7STTMr0=;
	h=To:Subject:From:Message-Id:Date; b=kwZnY0r0MmzImYxuO/Z6Qxu26MBoCeUWRvOHGl8XfpaleKYUYYsdDoLjl1DtsCYUGcBp7VypNot2UuBOlodC9+L7yN1vq41DKVRIhL6JkIKt1Osw3Qsq9EagZxGVFoBzR2IIlSPx1h6QnoIBIahBqCMzHmI+nY7h21ZIDO697fQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TLGbkp8d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TLGbkp8d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC075C2BCB0
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 05:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779255033;
	bh=/67LTxn7okf5np/DajrUWHJWzbvMEIoPPlA/7STTMr0=;
	h=To:Subject:From:Date:From;
	b=TLGbkp8d4AVRPohXpeooFTh+45ONbNmLXhbQfMCKflk+Pm2E2pbpYO4HySrplAz4/
	 MAUOUzHbGN9z9LdzFY/Yb66Z1CRI2w9z3unquutYdKso4/FBMGIM44GXZGlVKkql0P
	 TgK+UwighOsuSAWRZg2eQYX4lCJHMTXq2b3Aote/TeC/4MLf4vBusLWNGlWy6tvKcK
	 lzOHKLmpSAa3aLL81U5xtyX9AyRJe91dKKBzPbqVg+uhBFV+RhdjLojcrwQ3quAenl
	 ZcW4y0WLvAbZ5RoVWIIRClNohQH3CpeP5AyiL9liqMtTQjw9/k867E22xPmstPoGR+
	 RVD31f3+h5UTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0BD5CD4F54
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 05:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177925503371.21232.11777317260986250572.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3167f62608351b6487c8f1e4ddf6cf2e8e1cb1cdc593f50521b9cd1f87db9aae
Date: Wed, 20 May 2026 05:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779255033
