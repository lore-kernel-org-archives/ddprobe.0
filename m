Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EB9E3BF68F
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 22:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792189234; cv=none; b=NI+FFX36T5NMTNB2OOAMbjkf4rFygGzCg7eWn8jQnED6y3QaTxRU3thR+/Jgmr+BjgqKqTRKVrGxzhAUqTLYVQMyVkY/yR4mMcc7pPl0ztWTyJUJm760dQZaBeEKUr0ndtHFXbuGVLEsdlVjvVljvr+CRsrdokv94S77Ry/9+w8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792189234; c=relaxed/simple;
	bh=QrCXB4D1mKAsKLKy9eBMbHHpFTaq8S2sB8jP3/RANEI=;
	h=To:Subject:From:Message-Id:Date; b=IVMOmMBn0SxQrozxdnwACwNxBuEcoqH2oZ+7+UMcEwFtD4Ipx6KGBq9uLa+vRUQ4xemgtAVsNjGgBvSIpU1t1TpvcMQXuFFGJXj5Oo09gLU1LsMsfNEdwO6CmR7fewL6OFJDRIPCwHxmaYcJRDZkQh4xG1HGTX/UYTeQe2c/MNo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hrJ4XzA0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hrJ4XzA0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8A94C2BCF4
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 22:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792189233;
	bh=QrCXB4D1mKAsKLKy9eBMbHHpFTaq8S2sB8jP3/RANEI=;
	h=To:Subject:From:Date:From;
	b=hrJ4XzA0ziGg9E9liBpt353aDIZYcNROW4av6LSs3lvKcDtVZy6NLx+cDCdGyUTfa
	 uTXSXVmupzxA4LL9QNG1cd+F42bYKhuYpBFdDr5QQqhw43wk/c/RQlLbd5A0R5zhOb
	 3NhhjTe/IyL621KwvBMSCXCGdGrveceWm61WnYu5A1O29OlhYqSCAlMuWBZLMlaHoc
	 zCe4SsXBU04ac0sMm5glFApX464Oxn+5b8Uj7YFrgNaKRg6QD7W2vdTq/LGGT56UWI
	 Y0NH16TuG8Zuw/JpWVY1V10r3tLR4ciCU1sTNrrilShDzI6rnPf7uutgLjbAP3ZQMN
	 AVkf2jsa7PeAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACCD2CCA490
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 22:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179218923369.13606.10441591091753116102.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a65630faa00095e59e1d75c437a05874f9bab96424991ad04aced5358ae4d43
Date: Fri, 16 Oct 2026 22:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792189233
