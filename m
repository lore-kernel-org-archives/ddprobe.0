Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B4572C08C8
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 14:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770561834; cv=none; b=k4flVmaGnMsmzoex1JEtTvhoQ++oa/Nbufy/eM/Qi3s8dZ7oamPzj1CwHc7cvYR4CNl+SQpJBdAKRfMGoqhAV6E3ZmG/rnvVmPQbItBVEVAD7SJFySasaHbYJ/OIdeL//KLKFRq2X5+4/rnzCBgYrUKlrIqdNmTxqx2w9tY+8yc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770561834; c=relaxed/simple;
	bh=MzAlQJZK3A77H7W5H0S7kB62sUlI+fEwxSQ6LdeFFuw=;
	h=To:Subject:From:Message-Id:Date; b=AGytA+xbZ3nxz68Pn6Qi+gGUcL4XZuYinhZ3KE8aRfdEE+CqMXdcz+BIDKwKXcTXl5azSF1ILBFTGOe5zSl9AmQmRM5zB4g1QEer4WGXQlTmBB4vMfsThIO5S2pTUFaU0gna9J9RWtWWtpp4jZ7I3RnKxWavsO6ev1CWj4HGbS8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NVD+veJA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NVD+veJA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A46E0C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 14:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770561833;
	bh=MzAlQJZK3A77H7W5H0S7kB62sUlI+fEwxSQ6LdeFFuw=;
	h=To:Subject:From:Date:From;
	b=NVD+veJAa91XFm9NzO0xoaawNC8tZIz+PTSDtv8kDD0BQrApIwT1ZwFdTGl+7R825
	 f1VuFnpQ012kaSGmhVxNeax3SUt5FxiGb1bfpL1Bpj9ezYCZBppt5i/FMJro+5+q6p
	 Sv6oftn7vRNZDsm2OMPgbOZS6q3sAts3T+eH5vdB9hbGhU9DfVz3KSk8ObV88CKknC
	 Wvf3ILlh7ERwn5NddT++Kd3TGT6cpUeE6Ns6ahhLuUV5FOcmOlSMPtFSvBRAFrlj9r
	 eUntK9UiiEDI9sX/8F38bPpq3eBXjoMV3oaAB+Wq2pbvGYRR80XajGRqGrCy/yR2j3
	 ZLqPez0t4qNig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93955EF06E2
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 14:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177056183359.32728.9702322562083011917.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cdeaa095eeb73f8834126edc7e9029150e049d98a65acbb14bca5780f67188a3
Date: Sun, 08 Feb 2026 14:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770561833
