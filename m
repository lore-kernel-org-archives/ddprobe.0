Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 221C147B422
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 18:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777402054; cv=none; b=DGu8vdjUQ0yGR0ot5dmdvjFkPCaeXAB3OM2e1hoaFYwtuP5sEPJaAzkLkeFCVoPcWsVX9BBPYokrClhs6c0sLS7eT6b1yE4pWJoOTusCovGx/E8CiSOJlWQ5wC5DqmTOhcuZnYlsxSLhYCaWVBLk4FtbP2c42UlWczAQ2H1JvDA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777402054; c=relaxed/simple;
	bh=wJVW5xiTN6Nue8601SSVHD570s4s+RahLWzGkM3fNAM=;
	h=To:Subject:From:Message-Id:Date; b=BoIh78bp6PWAA66C9XtYT4SMksbwkGHpeSsX94jatDN2X7IoHQuAa62DS8DzLFTa4gaSdxzoTw+JwNAIvJcl7uItwKffUzbbn53SUAhr63W4Eh+xIdeAuZOH5KxUtCiU2UhlPfL4yXj7sYzJfvcYs82wuavz1WHd8KYugG37HJs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nDjfz4wr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nDjfz4wr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDE5FC2BCAF
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 18:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777402053;
	bh=wJVW5xiTN6Nue8601SSVHD570s4s+RahLWzGkM3fNAM=;
	h=To:Subject:From:Date:From;
	b=nDjfz4wr4BppkmOle2SXoArMA4QJprwvxbRaynO0aac5k3Orfy0ZOpS/ihzHmtpwm
	 lNTxC5iq2X0Aj1xMeIXjL2B872cCvm+8Os89eOfI0MLcsWanMeoMtLxkA5UFvCbdpf
	 +BBpde/pr5QWqbAO5/fVl/9j6uOzzk/I5YR5yVWHAmhaqrMeip2e/mtbEtAH2irSkw
	 j8C/Qmnt7jNVY/BMu1WfQ24jzyz6OTfJrgNCnQrk3L/Q0eOtLXQl37gUUJvqHfdJGA
	 bbRR3pA7XwCHWJSQIeM3xZr71VxJl4y4A8TmzD2LghjOQMp2ht0cYTozW2ETN5tuuR
	 xuSbxFiSMf/+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC405FF885A
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 18:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177740205369.15398.5119642588267522009.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d970ad50c2d50440b1a711756a6029ec897e99ad745886a5e79b902ff6852225
Date: Tue, 28 Apr 2026 18:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777402053
