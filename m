Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 516A84A01
	for <ddprobe@lists.linux.dev>; Sat, 23 Nov 2024 03:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732332954; cv=none; b=qky8dyz2CRhFb2Vqoi2qAQgK5+C5OUKlC8zeynwnL1xYwWuWXUSTl508vzV/4COuWP2go0Qm4YUjYonBSXHzELDs9OFAczXwlf/DQyl/UylBw9cOErq3UhWmrEAd75ULBoxBnVW+POwtDJT6nOe46jj5yXgMk9kLBrNWAsrE8+w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732332954; c=relaxed/simple;
	bh=c/gi3V90XvzMPc3TyiuAlD1xpUGqhisllAfQh8JySIY=;
	h=To:Subject:From:Message-Id:Date; b=Hds2Iy+2PhPsdeSuq90Y02D7m4CFfJt/lkCoCGCfruY3Ki8ll0ukH9egGPUa9aRtJuqsOFQON+Gxs2psaFzB3R0utk4RFxdQa+dvaMeSOkcPxuxm401iz1I0kvQ4bUscLcM9DEoINr7b70Hst/PaA7kJPY0OSlePSZ0kdPhgINk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qnf8zBdd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qnf8zBdd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B03FEC4CECD
	for <ddprobe@lists.linux.dev>; Sat, 23 Nov 2024 03:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732332953;
	bh=c/gi3V90XvzMPc3TyiuAlD1xpUGqhisllAfQh8JySIY=;
	h=To:Subject:From:Date:From;
	b=qnf8zBddB/XaclN8i1E6jIUgsbG26W7VRyrYpyc+Wq/UBVsC79qGAFrzYsixYfQ5D
	 VLIuhRRVc312JMTP0WFNCKv9vNTo8a6V3fYk949RtAKTh82hgiVVwU5R9onXD787Vv
	 BXhyoiuWnOs2yGp4CnyPMbVXrMS+F9HYx3p87i+TQJS1tTDthKLik8nFlQdIebHdYe
	 Fa7FBpUirxvBe/fvWNNm0a9qAC2zgvsVedFtpICpC/39a4tYYYw2DoTpH9UclPBs4D
	 mkyv7YpkWwhNQ5c+/njOJKI6s27tzRBy4wOaSxGSdMyKJ6ucTiM9NorBYdLD1bY2dy
	 ecsew2mvBrqpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DFE7E6ADE2
	for <ddprobe@lists.linux.dev>; Sat, 23 Nov 2024 03:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173233295363.12741.13918664147332089214.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f248812a224442f845b12af02a78e623012946772541d790910d49e2d042c84
Date: Sat, 23 Nov 2024 03:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732332953
