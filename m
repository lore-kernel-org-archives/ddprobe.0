Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28DFD7F6
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 13:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728134154; cv=none; b=Pc0IghMozLU0FZa3y7H736sBLMDdAZal6+O8XCT5R2qa/suUzyNwp8tKaeqfkC7bnLTsKfkxVr6VqrywWQJQIXKvo4uhsR0z87JMeo8aXhuJLVkyC3kHa8u5kJmK6vr5mXG+8XkWrDk/N5GqfrHf/ZkxXV3OnCYDhL5daPON0UE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728134154; c=relaxed/simple;
	bh=FJVQz/qZnqkphnjpH3m/B2xUZ4EhpsM/PtygDe2O6Og=;
	h=To:Subject:From:Message-Id:Date; b=nSFUDTpYMd4yM2otkgojKBC20OBoQENEitXTXvmFHGvq3w1UHcpybOpt0SiDs1/xKz4Gpvd0L9/ykbMeigMCs589F2AuS+btGfrFSDUQayBv0gjluu/5RH2XZDsi1H4vqud3dBlKRC0N0/FZqPGEek5lbq2THbZQO0aE26HT82g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TDUKdahN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TDUKdahN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF6EDC4CEC2
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 13:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728134153;
	bh=FJVQz/qZnqkphnjpH3m/B2xUZ4EhpsM/PtygDe2O6Og=;
	h=To:Subject:From:Date:From;
	b=TDUKdahNr754zbCv6oII9gDlGs1fq4QqFHVNfiDjSqg985VOzltc635OX4rfbpR8p
	 g5YSPS79C8fGWm1loJxincevbJOgGar2MCdRTj1897DgzzXtuzTuK1pP/jSePnWINm
	 LtNVQRl561przNFktC10eL9BG7U89tGv5MZim50dSeSLTyvxd3fK+bpvli6i1p4bon
	 XHA0XBcA3zDC95uwMvDerUxOTeSC3W156Wn5s+vEgsColFDk5rwVMG6+1suDzlpUb+
	 lkde+RCtENHiHGmO+jW4kSv7idD6WeOn2P3k2vsDyM2X0mdzaE+6YvwaaujOyKKCnl
	 kiqDC2mPuFwOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98C18CF8878
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 13:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172813415360.21229.7300198010313175606.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 44d8ceffa06583c4ff7a1d1e205a6acf15ccbe1547c261222642c9f20c9387e3
Date: Sat, 05 Oct 2024 13:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728134153
