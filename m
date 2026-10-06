Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41FD2362130
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 18:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791311434; cv=none; b=fjKkjNk2lkl3DqwparbPe7KKSNfMlSJa9ZSDPGwWlDR7pzGQvYfTlToQUy2mbAUeUSU1UvxN8zJL+g8siyBb5TEraPf1uBYaFRELubms+nKhQGjNkQQ2BoBFAKn3gDVvVAgnBTIPxNRDIfhJpLHK1ZVnJaJ/D4ldD0xF5kOk7Aw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791311434; c=relaxed/simple;
	bh=qzTAm+7OZziAHpIHW68UzHYmxAKFbGc1l+wSjp6YKTk=;
	h=To:Subject:From:Message-Id:Date; b=NIZOYTHYJnjAmTpcJ0fdik78kgRTRxrrEjnkZckN4ReJOCpV0uQ/uVfuJDfP+LlQWVN9r5+M1u9ceNT7T0RPc4ygabQ8yYDEeWwOZluJ872W3v5qM5f3vqI7TrweV2D6jSa8Ywv32ZvB3tmpKYEElKF5KTpQq+J/31kzB7/4q/Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fs4jRCBE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fs4jRCBE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5072C2BCF4
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 18:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791311433;
	bh=qzTAm+7OZziAHpIHW68UzHYmxAKFbGc1l+wSjp6YKTk=;
	h=To:Subject:From:Date:From;
	b=fs4jRCBE4eHPviHy3ZlTwz/fvHavfHkMmWncXW2MQpV1yVPCPZjXVuTps1OtsP30f
	 mCbMCa0LQiJjN7mGkyw15m3gxSvGWQQKLkiCGofLqBDZyp1SdYVfjBWj6HyfXBUDBT
	 RL6F7Eotb/VMxivL4P8p9Yis39eZIDmTpPJ5iUxuECJegkIljqlIng7mcf4aqtYxLP
	 HL2SwL5OFE9+xK/Cw+7/C7tolaSTGOtL7TMlOmjbQ7OIafHMZqDX6x8QXn7gbRg/TL
	 jBMIi15ZyFQTPVxNbSmbaX32R3gjCJDo+nNDKbziLuZpgMG1SqoGmSzwAzAwuBKRH5
	 4QDLasgl0wY1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B012CCA5FED
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 18:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179131143368.6211.17364127498784190179.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d25a206771c5a56881a7a1be1111a0d1e3da7e3f9f7ca3c30cf6ffbe5eb70f27
Date: Tue, 06 Oct 2026 18:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791311433
