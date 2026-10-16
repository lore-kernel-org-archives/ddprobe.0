Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4381F3B83E0
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 08:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792140634; cv=none; b=IHAzo4yRiK7Ukny2eQoZwlxeNZCBgN3ySbrO3H/mBrgkuEuACfHNhcKjv3pILDfD4vf2hxLrNWaO3jgMQawx7fQRsLc6OAdQfPm+qC18lsB0doLn8QyeUgicnrSdWLs1T46V4dT+PN3dD9mLUCZPeMvp7G3XNS0ESyt1zi4voOk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792140634; c=relaxed/simple;
	bh=kulumgwsWq79f0qMIS12l1hH52Xf0DuIsC2dK9qTD74=;
	h=To:Subject:From:Message-Id:Date; b=n6ri3LIqdTKhk8G644BhhTKhlv4Eoo+SI4FyWY1Oqc3ImFIrM9wsdzRFm3ZYicIQA4aM6/a5XtOT3g6AfJpTlKnnt+SPFf+h4u4qIMixrzJ/WIhVsH8MfjKEgONOch+uEZuq3DAqRMt1icGRPzYu0pT0pR5lo/6nSH3S3GMzXO8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uqPCdYuf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uqPCdYuf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE455C2BCF4
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 08:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792140633;
	bh=kulumgwsWq79f0qMIS12l1hH52Xf0DuIsC2dK9qTD74=;
	h=To:Subject:From:Date:From;
	b=uqPCdYuffbVqN2/mA2vFMPWY6jf4HURwqlRbjwjvry/ywYRZSZBIHvviOapjeG4Lb
	 2IUAPcN18GKtf1qxvcdFWG6DOnMSsTPjP6W/xjnuZOrh6hDNP/eizQyRicOSgKvlfi
	 Ld8YX/tNdYhX0tZvmcvMbE6KLk2nudzpL4JuotfAHt+Kd3HwcZzcgkaDS+Ow2qGdkq
	 Z8gm/NFLs/I95XVcaoVMYqI4WPzuNVZbGqRdRiEgXJ/7InP88jKix2Sthtwd+lC7ZT
	 SXMXEAkFn0qkrsDMaXRs4vs5zCfumDByf/3BSYRqVZyzpokhxjrcoPA2wTcpHPbNSG
	 NNH1ok/mCbQNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB853CCA462
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 08:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179214063369.14244.17132018663407454399.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d13a4873b4eabb25052dc384aa58034b7bdbd4789361d53765b3caa0e6a7f8d
Date: Fri, 16 Oct 2026 08:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792140633
