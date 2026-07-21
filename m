Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B4B878F2E
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 03:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784603914; cv=none; b=HBQcri6SPJ9s8wUFTsOPsXtErIGAvCm+dAhgdvetroxevFmFLDjk89fYNfyrFfGEnsHQXfpCA06DAy2CRwenuiRqwaNwutVqlHnJSvNiWem2LEeMvi0Yd4lxdaPJvFXyR9Si89kxqOgyvNCE2q6ebj3GZWZpaJDfsYVUNGTnp9U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784603914; c=relaxed/simple;
	bh=/yx3EIWLRB8XozqLeeIdRuyBs35uubc7RSOHESm1F7U=;
	h=To:Subject:From:Message-Id:Date; b=XxQ4b8zaYvxPlmS4ZC3TW87pCSKwo1nlx1DIbH4Z2SRMW/Lj0DgeQjO5Z2XdmvNgw8hf/3JDms/0chdYi0KrdANL4j6GyL6mUdWf3W7PW7thMWgzAUWm85uokL723TqO5Fo4nqOFSY+gMy+/AIUKq3CFARj+TyDfnwPSuMnyux0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OAni0k32; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OAni0k32"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC2F6C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 03:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784603913;
	bh=/yx3EIWLRB8XozqLeeIdRuyBs35uubc7RSOHESm1F7U=;
	h=To:Subject:From:Date:From;
	b=OAni0k32JdLPa8ou7iLcC+/uozTxGQbVbiFOk3vFRScbzXRXxuIOmHIuL6n1LQ+Vj
	 OKW5sGr/3uATWDdOkV1zzhRNAWypzIiyH3b1x/4gbdpmNnkup+oZOHlVB9C4lZ8AbG
	 r9FuNB2mTQTXqa6FDUoNw49Fr9k1tlW2KJqEvIELASGQenswVSIQhQhH0FYeJ56KEY
	 LfhuiFFD1FwqtihZRDgtmZGOFsKhWBFVkD/sh0SzUKNN2+L+mmzkomQk6/s8D7TMfS
	 8RuK5LIq3VoSxTCrDoRdiRuDLrPJlDOpdrcwjj3qpvwnh38/t3aDgwlGhm8y5nseE8
	 9LeuezVKD1GyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC6ACC4451C
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 03:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178460391368.32248.7283889931486555000.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cae2e44324fe8d5292171fd8e508b6508998bd40f1a837bba7d02ea60718b35a
Date: Tue, 21 Jul 2026 03:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784603913
