Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B599264612
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 00:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786322434; cv=none; b=aKB2PO54oCfMBYLN6dMmz06sPq/Ljro6gMzUVpyAS56aNdST3yTLgxoKcXoole+7mmSZUHRESEoRHm5V/rgWiAytRDbrxFoHFomS0ipYvCbPuKRDYFdxsxq8rd/tW9+BWTnr2m3SnHXrjSNxkNzMVCWKv1/Wlyb3E5rOO5k/LK8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786322434; c=relaxed/simple;
	bh=0x+9mtF5pzjLYwfjVAUUNiZUizkWqyAk5xaI20K5vdI=;
	h=To:Subject:From:Message-Id:Date; b=Alo41oNwoz08iXtITMHMoBpk9IH1OlT/WHLFCrklCXWvKmh+kJyYa6GkyUy7H++izYC7vSBMS2vHxpZHluiKga+o+dnUPTrKiMAs60hXAT0nFZjFhkdvhBrIq2vNJAxrbQomvUCuWiQkTxeR6gWyoN4a0oku0kYPPJzCWTl2t/I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M2vskUyE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M2vskUyE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D80D2C2BCB9
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 00:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786322433;
	bh=0x+9mtF5pzjLYwfjVAUUNiZUizkWqyAk5xaI20K5vdI=;
	h=To:Subject:From:Date:From;
	b=M2vskUyEtDc1rbKhAiOIB5f6djgyGMKvRkLyQQL0odbrcFJty3ompOnuxSE8rXq+L
	 UZRgPEqn3sBb82vnlG4oZXsmRDoY1aD8SYF2BZKtOf7UhEP6IXE3dkEHNfVXn/BozX
	 lqTXXziMc2tUtqsmoNmitsxpYBjPlPUlcKBoAaCKs9H5vTeRdQ+kiaAJFP0FTsnxzB
	 SPn1moZcBExTE0HSsI2Fdp1ucRC0w2VtsiZxyGWnyNu3CmLlXIUhOvISEyQecXTkd5
	 4C/fnNoBA9AHNyOhirI+8aJL/LZZWGfdey3x5/f3eddG4UKuUwoaZYmgO4xuxu5x68
	 bAgX047kOlBeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF1F3C5AD5A
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 00:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178632243368.3493.17893003706303360647.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f20ca60bf61e43251896a6c0093cd7d555561233c564b646631bcd76308ba44e
Date: Mon, 10 Aug 2026 00:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786322433
