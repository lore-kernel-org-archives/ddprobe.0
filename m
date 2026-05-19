Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41D77128395
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 04:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779165034; cv=none; b=jPB3gHV04yjgCJlv27D0KcHI4Nfka3lqJovrG7v2Xt/RArQCdy/0u3kGWpEC3ENRaRuCX1RHnnjIunr3Be4wf37NOjXYhdkw7sOJVPIiKzfvdd0UswINU/wTYl5WHguYRwXyk9nMenPTggDs4jUhHyLVC5MCyhe8nS3zAlVd810=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779165034; c=relaxed/simple;
	bh=PgViIDv4hk+8suB54nj8x6Zhgj32qIc6EpdgaO9DeEI=;
	h=To:Subject:From:Message-Id:Date; b=Pf03RiQRpyNM548ir1W7fus+x9I7BRAWbNh9CDjwaTJ7aGpP6dqEeuo6QK2xGJ1qO265pgsPfO5WiFv2ZILPBxbkb/mQjr7b95Jq9zWGGblmHEgBldf3nRVfCqsLkUZ6cScAZWvgP4ppMqXgf6VGlFF3peN2k7KOdQPe1D5o3+w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s3hfZOis; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s3hfZOis"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6281C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 04:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779165033;
	bh=PgViIDv4hk+8suB54nj8x6Zhgj32qIc6EpdgaO9DeEI=;
	h=To:Subject:From:Date:From;
	b=s3hfZOisSx54ijUuPD5HysDJbyz72uzC4/KIyk5JDCJE80ubVX7CSsqjh/FarMFoD
	 40nE2gd00fqsMPvblO5ble6JV0KqeZHUsVYs/Bx67pRv/QWk03hISTvYi5gFyghB7j
	 2/t8kouFzPSXfoyq/G4nV+GRMH/JMq86sPE0U0Y1UhIp47X/pcr41fQgLEaLQ9W56h
	 jILaRp/2lMVY5Qjp2/SKzhM2DF0krGlfy2dafAwyYsAN/ePavTGlmpkjYhFHmHOI8a
	 z0beS2M7g53G815KXWBM4Tm8QsleDi0DKEzS/0c/kVHay1mYg+nn79HTrRl8qG2Qcf
	 PDNRxVFU5cRFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B38CACD4851
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 04:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177916503372.17251.15703023576926045067.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3caab92595f486faae92c0ac3bdd6d87b186bfc5e7c78704ac7c9f513bcfc350
Date: Tue, 19 May 2026 04:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779165033
