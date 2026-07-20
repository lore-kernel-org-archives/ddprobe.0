Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FF7531195C
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 17:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784568514; cv=none; b=CwdUuREuEf16itjF2KgYYDJAUAFYFBracWHpRZwQAbwgfPv4usVesQAAZHKizahrQx9fcPWub6fyC7dqVl5FHohrHBYQji6YyJEmSY/qBpVRR10EKb0uq2qMD5F4aVCkkcWN1lb4LLwmhzoybw2YzcJ3JXLwx9/rO9OYnpw0iH8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784568514; c=relaxed/simple;
	bh=qRxJKPP0G5FmSZv0RVSmEpyCmrWUss1eb7PQGQIfUxY=;
	h=To:Subject:From:Message-Id:Date; b=AYEjdiNgKaUbpLxN1A6ZDLEolG08BCdLWMPCqjHnawwP6P7sgBgVRb/Mop1t1ih80Ba0HcVpQ4wmDmrE/Jsd3BJw7NhkDNRIYWwNOgf6oOFdeZyJoMfRheNupqPrFqFCxdvSGT11IxxqDNGVBU9Q5HavUwtL4koJgPMPpDs381w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FN4prSWF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FN4prSWF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6933C2BCC9
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 17:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784568513;
	bh=qRxJKPP0G5FmSZv0RVSmEpyCmrWUss1eb7PQGQIfUxY=;
	h=To:Subject:From:Date:From;
	b=FN4prSWFdOOmSTblOsNAi6OoXM4CuDj//MeZ1hZCnqRfbWLdrlZExyQ2K6zhiJQFv
	 7qHmPVuZS1Um5MUEP2hl3ICQZtBXRnMfNx9gbg576jy9yf+Jf+WDiTIF2lKGwvStMB
	 3QUgkxIur6WTFeZzYq8hhvTL3SQZZeeWXOJujgin2Y0LayZMH8xxjp/vjZxNeNE0lj
	 o1F5y7M78gPC6PCpxvFGS8DYdJiBoZoHBr1RCfF9L96QbYAZaFZkQnWlT6Tje2D6AJ
	 aI0eiiYEmrMwoSu5HDe2P+y218/J6Uh2JwchdLuPeyukBB5sl655+yuUtnV0Yvu8Mz
	 QY3y59z8isOhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFDFCC44520
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 17:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178456851369.22415.1490862540023684850.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1159966d062901eee19372b555fb40fe84b77ba2ab2941ede1d38936fd327944
Date: Mon, 20 Jul 2026 17:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784568513
