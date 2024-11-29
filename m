Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33B05193
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 00:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732838754; cv=none; b=rsb25LCOg366icKzgeKYRfAEXERA4IyjQrZ9nCaRwvmurNFmXzWVOU7OT1MTuezw/KqCVih63j7TdfRi5p2LkvGCgtajmKRKKrG8kI3ozSMa+/2swRrV8a1P17s/Rjpk0yBq2+oeBUnsWXJxGXhQZMcyE4w9fiSf29kXA9m7hDk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732838754; c=relaxed/simple;
	bh=NgF8RapSRbSKmA1z/mPrF1fhtV3tqkVCY+E3ac0RUfQ=;
	h=To:Subject:From:Message-Id:Date; b=Oi6JISsEyWDWjrh7Xd4Wpk9H3fl5U5bQ7Let2wBgeKRy2v3J17p7qadjBaevor14phXgL1OfwAA6zFIj6Ylpslw0f/za50apdlEuhhx1tbPGhzV6s/bm0ifyYN5PKdWQtVpSyEuizcrszGrQJM49sF4gk7GLZQMKHK3T00TELvg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hBv3edh4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hBv3edh4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1712C4CECE
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 00:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732838753;
	bh=NgF8RapSRbSKmA1z/mPrF1fhtV3tqkVCY+E3ac0RUfQ=;
	h=To:Subject:From:Date:From;
	b=hBv3edh4NF31AO+U2sSoDJPLEVOQjgRsGQVEMypuTWrEQrtr3lS0aZHhwoVUCIl2Z
	 WFpiyDFJMu5uYKqYfPRa4Wp3bMRegpDpugaX5PnWap9SxDWu3aHZIAFAVRsz6HqSwn
	 eRE0kO4wQKU//FLwsMzOk4ubQc88uwqJiNAvxMGZg/c9OjyI253UWxwBe1exX4iZLD
	 Q3MS9L5j2jKC0u8oV+r9o19NrkzBkhXF+Pn24kl01nif2csh8mOxS8+EKyO/U2G3S0
	 1+0I7TqxjgvaDKXYdETxJA/Q0XcFNbCj/82NPEErcpOTpPfrPG7YeZmLXQz5s/OreJ
	 dpXkemPD65irw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94C95D70DFA
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 00:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173283875360.12563.15519105785649564867.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3b229e2e0b50d50985234cb7aa7194f720c7c0d055a53405aba5cdea3c2962a
Date: Fri, 29 Nov 2024 00:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732838753
