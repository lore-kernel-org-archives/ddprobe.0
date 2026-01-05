Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D915221290
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 05:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767590034; cv=none; b=RKCKgIRwKNMtiJbXz/n9yzw+GXaaRLmfMhUe0/WTYZXUe93W4evLaVVmm+Am+LmK2pZhpMR3WX1jIaj4WBrF7C4kBpcCtnIvECI+ndvLRfGXtUNZA7rZyoaoYQ6Al6WmjTijB9WA+G7c7GYppiOC9RgqHgw4gtHR/w1y+BDZJr4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767590034; c=relaxed/simple;
	bh=UbGGdYCMuG4vgcJsWlAH9HuzVpJBXYQNXRpw0XzjZ7w=;
	h=To:Subject:From:Message-Id:Date; b=mIC8sdz32ALgPh6b+WvSPcIpdv3FM4JWyBwzZNaSyzXFrbBa5T1tKL0qycaNbTYAUV40x9N1oFzRufPRy2QrtEN8MyH/oeh/svIEpP69dFMQ3W+oA2FW34dQoLgdWVGqEuoteQj8hdr21wj/6q4ALM7Eb7UCXJ5mSIi9jDtDpCg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=roYmYejU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="roYmYejU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFABAC116D0
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 05:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767590033;
	bh=UbGGdYCMuG4vgcJsWlAH9HuzVpJBXYQNXRpw0XzjZ7w=;
	h=To:Subject:From:Date:From;
	b=roYmYejU9JLP6P8oUAmDKch2/DkdCHSc8T+4EKDEW/9jJXIpaSWq5uT7zjtPSXIlM
	 /qowoustpDuM5Cyz2+BvGkH5HL9jPmDaiob0iFSmsoYZP8j9iAIEYVBAQV7W8gIFgn
	 VuLnjHfRZlUL9ciuZ1cweonR3OO7CAaPv3u5se0vRRi7ztKKAe/2UL2XXRr1Jr8wMZ
	 KnrJd3b/oJhXRjPf/MW95pHgQ+fF1gml8Usr6hwaEA0SA01OxrWcrmwN2qFQaQT4jE
	 8N76P3idSYYPR06gQK4XvZQ+fvZF47VvjqwQpoY9UUvRhxX+SvrJ+pLCViMBYhwnNR
	 x788wtuNadJSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C792C2A072
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 05:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176759003363.20592.9345997098294224788.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e4722997db9b0563cbc783a3f17ee65e1f642a1212b360aebd80e006c5e6502f
Date: Mon, 05 Jan 2026 05:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767590033
