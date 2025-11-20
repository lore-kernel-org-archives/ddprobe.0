Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FC7820FAA4
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 01:41:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763602914; cv=none; b=symc/0vdnpTmeaR6XJvjse1aw5Cf//3/FP8+DO/95AhFlkq1FAcLy10P0nle+KgrfHxxW2yKASmyjbGuYP5Ov9yTlCiJNcF1m/HUVH+FVhJAoD2Nj8WF01WCq/9YldPKI+TlLkryS5Uc9HxG4/trHKabmOsp4aFzRAlfal0St4w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763602914; c=relaxed/simple;
	bh=fnF2D8WWUS3pNYPVmi+PABxn6nP9tPoLKkdamdzP9ZI=;
	h=To:Subject:From:Message-Id:Date; b=LLjSD3FX2SYUVyyRpVmIQ+++c7XT7745YCTbUdAkTdmOWyE9lPKXt3T5D57xEFeMst3ur+ZU6UJslrJacadd3MfCWP2h8Ag0o29EWSnsaLrwVBzNa7gET4D7zxufI8GVP9j/Eyy3vD2CHbsGIK4m17xKTHpoyZoGU2+N3ZtGTec=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B89uRWi/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B89uRWi/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A441BC4CEF5
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 01:41:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763602913;
	bh=fnF2D8WWUS3pNYPVmi+PABxn6nP9tPoLKkdamdzP9ZI=;
	h=To:Subject:From:Date:From;
	b=B89uRWi/2CbehWhK7Q7cg2CKzv7HzR51nlf096dq7DYhicgk/Ixlm4NDrqVBf+IVL
	 z4HFp/3ID6KvU6lY9mTaAlYKKp1zDDabgnb7LFSzzFlmamy+UvjSyrjMbJIytV6SFm
	 PYx8ieCgiUNu/AOE6RrdXM6YQWXHanVBwWfUEFYmcsMJHtdkbCcziU/qR07BzoPMxA
	 Ykp21hk+YDkeJSyS2Tp7lR2UvCVG+Cd8q7vBRyV69D9h/fd1roDoyMDQBf8WTsSqVM
	 5QdWWmLMPJdauX1jJZw+RSAMvJq2CcZ9Qq06obDTLpZOFtwxx96N2ltjLS7D+NIS03
	 n93n8iEE8au1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91A62CF58D1
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 01:41:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176360291358.24614.5911525372227580846.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 91a57d350b45d7610d240c2207767a741c82c9c0fc5026a0e4197eda55abefb2
Date: Thu, 20 Nov 2025 01:41:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763602913
