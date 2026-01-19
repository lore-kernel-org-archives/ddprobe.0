Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17DC2197A7D
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 22:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768863234; cv=none; b=AzFqr2RWUdQ4R1IFgmQkgdAm3rKa847Di1RG4tWetGvoC2c6EtTkzcHSnzk9pYnBTIlr0lNhm0ISDiqlQQpJnUgkf3Sk+4Y2tS2WJjyOzhRhoWEwhC4p4aogDoIzduVYb7czMfknqk5B3MU7VsODwww7jGZvqByjunPWIWtj28M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768863234; c=relaxed/simple;
	bh=xygeFCIxfKppbcyYpy/jDZfukdGEajSFk3OOLp8Ee4Y=;
	h=To:Subject:From:Message-Id:Date; b=skl/3MJftmuDT7ZsaA7Fk/QgSP7ssArhUf4HXKrCdMivPBfDwb7VTieG3fy/Wmxd7kinNRrPcu1rtbzBpBFqJVamFkpEz2/GMIzyQ+/U8+qeyUq/Ae15ib90uJvYpjcmM/myRN9yHUWgXUFBHk3NtPCf82zk/V87naT2o0PCCoA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SXL7Z5Wo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SXL7Z5Wo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3A73C116C6
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 22:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768863233;
	bh=xygeFCIxfKppbcyYpy/jDZfukdGEajSFk3OOLp8Ee4Y=;
	h=To:Subject:From:Date:From;
	b=SXL7Z5Wo5wddisKlPi3hyhGg607jCsGGklmbY0ynyjaNS73DOIVLqDTJXGsVlJvJm
	 /fEYvRe80KdpcoflpIlPyMQBoJjjeeAOdXIypViqJF0VId1UgMdI1o7E4NsHdrT6sF
	 xlvqPxZY7LKPpBJzClEuKEyveKhI3uwnuId4cHowL2AszH2sjoaRv8m+rkefWFWI/S
	 1Os70eZ3KXrrGErEf/FmGvwTTLER6GBtnXFbFRLVyQuINoo5MTowo3oB3XFkvhExLE
	 lZABe79JWoHuzexsrhScdBVYlyaDBJ+wkBM85zuD3nzTnUhQlMflXCK/LLE5BZU7sr
	 KEECTNqRz3maA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92AC8D2ECF5
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 22:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176886323357.21578.7670973520206844945.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e5f75894d5a3285a0b2cf0f0a8ca15de1a5604714a8fc55f0c8bb8bd6a735887
Date: Mon, 19 Jan 2026 22:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768863233
