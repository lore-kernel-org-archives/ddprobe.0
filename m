Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21C3937FF5F
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 22:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776725854; cv=none; b=p1MJaMhBvvbhXBHMTG8Rw2DtOXBXAOWuvMpM8qlRTYD18sxwyvIUmlLGiIauoXrINjIwmWluLQriQ9Ao8F995BQ3mRAtzefHlkI9OqnhNA7SZ5DNuwjFjnzdVsKyJd3V4zcutWx5Xqm5EM8ylcDKJcMGdLkRvnG6NKTGMS+j/os=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776725854; c=relaxed/simple;
	bh=MGNXb2IzCRN40wMDuIBe+RAslbCitqvoSaozZEw5i5k=;
	h=To:Subject:From:Message-Id:Date; b=FM9cEf4clq4DZ2F45iNxRR3/HFIKKoHCWzW1ZP0D/JKA2IDPJQf6to/2ksb2d9rcsbcErEfoU0yk9liF6pyCtnTPoqywY5rOR/IJrY5O+UvuGmopjJHTEw6UNfCM0Hixl1VLWW4fXroMGPB02UVKH+PyW1Tt58HU2801y7WruXk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GQLkcIjK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GQLkcIjK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C16A2C2BCB6
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 22:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776725853;
	bh=MGNXb2IzCRN40wMDuIBe+RAslbCitqvoSaozZEw5i5k=;
	h=To:Subject:From:Date:From;
	b=GQLkcIjKtIeHGhtOXozZ2h866Q03SCycHgN4dIDVQkI3vmMZyjvpMNxARoBVgRWvr
	 1OA7TGBEJ3TANQb4WR2F6AgiLevvt/xAIGMX9kBB/Smbk6ldzcNjKBWLAOwdRU3hF4
	 IGgvFB8mPTFYQ3VWILZ/KerLrA4clrsn50W3hh1mGfkELrQ+LIy0+YLnU8Up3gqV4N
	 06wTzfZWaQN+Y41/Mdb/R4kwDm85HT/ELwwt7J7dlSKvxXgIHqCUQ7akMvbrmlDoFY
	 s1jMXAeYpvxFjEFAtF24dp1GFyBtVZptnitx8Ee5PhNLQ2pTk140fpubL7a8iIGMax
	 3IDaxLgzk0R3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9A7FF5A8BC
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 22:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177672585368.22552.13177226885124198677.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: efba59623ecb06658d90ddc058fb4a3c8da709bfa0997c900e5fab6d88ebba49
Date: Mon, 20 Apr 2026 22:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776725853
