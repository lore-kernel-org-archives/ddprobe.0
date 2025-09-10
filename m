Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45B982D8377
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 19:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757532594; cv=none; b=q4yNgGGk84cT030DfpXRrfiHKRXEPiRHY4EFbVY0lXbMVMwq++qwrrKvKm0rhy7a8YFklXRdQplyWKMFvXDN6YBJ+r1xTQPAYLjy3OLmLt+ZbV5tbdZ5TtglRMw5a0RiZVBWSewQt9h+rkcp9LM+MKR+g6nz6vj1TGROTkHXpLU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757532594; c=relaxed/simple;
	bh=jVm4pbiU+nzydAUIQD3Rcv2SVYLhLRK/g1kzC8WoMT0=;
	h=To:Subject:From:Message-Id:Date; b=mpzjflOARDuSqKMqR2TXK4Bjlj/hXJkrreNvv7MccENvcVw//6KUbEdMb1lGxC1/ezIzUeupc5Mn4dzOVK014QerQsqcexJxQSOzMXL/Va/p73oLNnbE8nxLKA5IQhY/3ndNr42m+wd0KaEppZzxBx8UJvB1hnRjCY4FTF7Og3c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lIzL4hw8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lIzL4hw8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB0E4C4CEFC
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 19:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757532593;
	bh=jVm4pbiU+nzydAUIQD3Rcv2SVYLhLRK/g1kzC8WoMT0=;
	h=To:Subject:From:Date:From;
	b=lIzL4hw8aPoXmEeR87sDXGxDFHUtdpYBBhDLTvzD6VkmEKVr/f/ZWmpa6HxlSQ+wZ
	 JTVElbpW4kiAhfAJJIZje0bBf8te7SBqCPMMyU13jbbyLJslM8a0zlnrUQ4zhe168J
	 7/mMlBMKUJvVbxtem4oMql68O4YA2Axn4fwpTcEB+rL95OXnSNH6N3W1seoDHWHUDO
	 o8QSbRgzCgIlQb2mXsB+VV/+Ha9uk6ZLM/Vo7sSF7HFGMYtAiNgWM3lun4+8ThfaE3
	 28+JmQDrumL23z3AJuaqSv1pvaooazaexlnd6AKW6lZcFFFf3RqJP7BrKWhSGdcSJA
	 JTUhSdm2Q6L8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99C6CCA101F
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 19:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175753259361.30741.14500254259906291006.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 37f9170576baea094f0c4dee0636816a4882fcc4c3e9a898cc8fb569ba4e2567
Date: Wed, 10 Sep 2025 19:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757532593
