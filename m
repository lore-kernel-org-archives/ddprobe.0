Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 619433AE706
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 03:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789875634; cv=none; b=n3YpcZNVLqcsa4kedVGs3zK5hZjtVsF68gBRSIUfrc06wIIPki8INeOpOCjGUh9xUwD2EqDPCa1Uh3ptkBC82VDEmATFTOOsOP6z8uQXaUd97a0Fa3HRo2V/hsmOmVryHUD0vNOVwvL2K+HY6QyPJkw9TjSUV819f34sUz4cAQk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789875634; c=relaxed/simple;
	bh=ohTzwa01nj9dLmGZbpueQN5AaHIyRW6XWfgXbSj10Fc=;
	h=To:Subject:From:Message-Id:Date; b=edAQuH+gjEcKRXGjd/PWY90hsI2I8LUiiwoGpAAD0q0SedggNcp6AMVuyjEnyCsF1Kg1NNK5Un4xQGV27KssaJiTQ8DplsPmw3vl/dxNvZ3tn2Cgoz0Q52WgVTahO+4KEzC3ypJFAK56hja1E4oD53iany2N59E8awzNlR/JEQ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dlUeE4Iv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dlUeE4Iv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCCEAC2BCF6
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 03:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789875633;
	bh=ohTzwa01nj9dLmGZbpueQN5AaHIyRW6XWfgXbSj10Fc=;
	h=To:Subject:From:Date:From;
	b=dlUeE4Ivg9hcaMzUJdjIdl+QPBIhZUR0Dt7bz6EIc1kYYQgpBm/kuJoRDrNo0UUhU
	 RVKmBZIz8Opr2XOFQZCGtpXEJx/8eJa5NxH7YZoBXyz5Z2WK/b2wYMYhXQRYJKhs0c
	 F567TtL0e82uViDK5x/rsaVr0l87NGswgMLMZDvsNUUzTwz1Hm27xKIB+FV2dcOjMH
	 GBBsSbC8WNckFp/OeGwb6lNm9Ke6KIXWUyO3tJ1tOogE23AspKAODdBB0d2x0bxH36
	 SnFSm8heohkn1VjSh+zf1IJvv6IMTzJnjK8DQIpUqdk3DA8x54SKiN5T2v/R2iDwps
	 d7aAhVCMIZx5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA8DAC982CC
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 03:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178987563368.8623.9783460648732211462.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc0b06a2175f4ef1395542048cfc38d473d66b3ab89e017cfc06c64b892eabc4
Date: Sun, 20 Sep 2026 03:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789875633
