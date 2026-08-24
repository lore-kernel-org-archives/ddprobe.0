Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58C90266565
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 03:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787543434; cv=none; b=qbo2cJ1J/RFizZFKVJWATQ0/Y1ShCGlJDjNESuzP0hB3CaudtEUdBAoBc4D490RBPD41uIfJjTjQagNznX2+UAoIgfQRM1adDK8G68byLCBtiI39YzFlXDbzCF7NT9Jc0hHu4BD8nVmp+n5nP219ozIjtRlCjlArQBwcWv1Mams=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787543434; c=relaxed/simple;
	bh=Yzf0smoEu74edyzYTFx7Th/1UeCnuBVhSHCLpYL8Oa4=;
	h=To:Subject:From:Message-Id:Date; b=EJlXn4MaUWDTRuJSD+6CDMJVL1+0KUNhSHzAlAtP+YC6/luspcE2vpptboQgzKcimnKU8Z40c0a8MfXRly+oW9IMSTzNLbNusuI1WprDZzfqHVMl6TTGg/qkwDURRJ1lAFLWjdkqnajeDj/hVzxuP2LNBX73/Cu1w72DOk0csRc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K8980KeD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K8980KeD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2ACBC19425
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 03:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787543433;
	bh=Yzf0smoEu74edyzYTFx7Th/1UeCnuBVhSHCLpYL8Oa4=;
	h=To:Subject:From:Date:From;
	b=K8980KeDQZelkQmrriQ20mp2T8kbKUmboZzApSqJHfnPMVmQZgbbnY9/OmS9V3NgE
	 el8j6L/rrohjg/o1ZMpjSAlVr8/punq3WGW9mht8e7tvqidD+KUzt1WrY6Q0u3s+34
	 7Sk0YjC/W+jLVHBMf8Km40aTQFsWuCsmWYXMC7T2S3vMbw9Mlay4SE04prLLg8unmd
	 2ziaLLOSj5kGupn+u8/htLf2EHuRfvEbvDThw1Dpgky4TsdBDjGt1U00nycsfiLPCr
	 qbW2nq+PN0Kh7EedZxnEb4wdMK3q+WknFnBApRg1dYun+W+fBaC55ylpz6puBiC1Op
	 7h3mBDX3K1Gfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAB61C5DF8C
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 03:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178754343369.19922.14252272068719325631.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a9aa2e97f470e9d6dd278c8f1bf5f40e75b6d97b0e59e9c79bc30095853c222
Date: Mon, 24 Aug 2026 03:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787543433
