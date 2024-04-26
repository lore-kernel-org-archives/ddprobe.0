Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A55F1DFED
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 20:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714162943; cv=none; b=mVi9uIgFyiLFHTSLWWCgiqDDHDzdLxkosS4QLy9+ibB5CIJ/YeNb2Hw3vbr1VoVUCKyRr/Xq2XSh97qKU41o8g1XFpL8RZF5Ls3vWF1CJfd/nMMDoB7W5jC2fHEI428gvBN9ukJvGM+4vF3gS+lQPiBrmZRZXx9/Cmo77/3Y2tQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714162943; c=relaxed/simple;
	bh=UZJeLY36aPu8tUiWAotvycXOuCbzCpy8ColOF1hBXSA=;
	h=To:Subject:From:Message-Id:Date; b=KrCPzGlF07zkf6fhRKhKzVIWWLow0mxNUyqJGclyir37hKpsRTZT5T9543wmUV9TueJnHUieq88JrGs3P20pcHY9Qo4a2a769LRKq9ypKDLhgIvNapVhikIlNpEClvgIAUCnim4iE/PeeBpfjZkrCdnuC3W6CjYiRuXuRBckVog=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ynd/QPkZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ynd/QPkZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCAD5C113CD
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 20:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714162942;
	bh=UZJeLY36aPu8tUiWAotvycXOuCbzCpy8ColOF1hBXSA=;
	h=To:Subject:From:Date:From;
	b=Ynd/QPkZYQyu9keA+wlZC356wQDqTxGppnl+NuXHi65lBzq+cTEeIYOkw6lz8P7po
	 KvYob9eS8Eucv4x72y0YKl4gMBWPV+B8nK8VZiVqSCHSyMHwob81Hhe+SS5Ptf91Wz
	 hD/Hs1jThcLQk2yvlIei3sGNSZDlraU1nbslz/5klFPcK0GHMeWIdJ8eTkxCk4j6hb
	 8JQK2RSnnE/qjuweC7rZXql+WnvvVA5bOu1dtFI6EMdcGgz1H8EE8tGjwGCTAK9iBl
	 9ch2KtG/AjRbZHwL3UtdNAec2plaY0WFBbAycoROTIppc6dTbbqSaaLjVdT0hCf3Qy
	 N7xFIO5+NLLjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C722EC4345F
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 20:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171416294279.10108.2389379012845745458.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 87139dfe4308de13646bfab3ac1842f6dc5428401a7a392107002ab2603d5e49
Date: Fri, 26 Apr 2024 20:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714162942
