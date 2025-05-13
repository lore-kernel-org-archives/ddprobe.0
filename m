Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA06A38DD1
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 14:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747145393; cv=none; b=R3KX6CM/LjqXZSG0mhb7OzFnZ95lk4cORHDX8yzCxXc9dvSEMQtN928l/LNM1pfJNP3BFtJJhDvAxb6T5MBWsl/2zoEDjKrbsnQeQ0pmUv0NWepQ2vcsuj8EunPDe8vL2wUy50nB8R/3NX/vaVkCxOxff7nQzMWZV2494p09kRs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747145393; c=relaxed/simple;
	bh=9NGlPDKx9FDA/zIBBPwlVm2LqhAZUOCCTPNr1zV90yo=;
	h=To:Subject:From:Message-Id:Date; b=JT8i62RidLJjyScPYgG8Yggs6NozWpessp5XDWPK3vI2cs0vYi24OjixwrOUWk56xpEYi75OuNY21Adp24fTLeMO8aDOIRE6V8I1nTwkV6tlLr+JPrnvV6tyrm44NsBkqtwq82aDQg3HqQmHfef+9l8CzONTq8Fb7kCH3EnVWTU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PlZEp/jT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PlZEp/jT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A156DC4CEE4
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 14:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747145393;
	bh=9NGlPDKx9FDA/zIBBPwlVm2LqhAZUOCCTPNr1zV90yo=;
	h=To:Subject:From:Date:From;
	b=PlZEp/jTCnt4Eao+g/8ybPEwToKdcfU82pATtXOhPCdbKTotghVAZxWje3dZl0vT5
	 TZm3kGlEOBY0MT87eE5hohQvQRGf7dyjVnxS02kBVavfB0pNHbiWBG018KM3en+sSe
	 hMv69QMapAR7uaasf4q+tUj+y4BghPRyqNyh/uyVp0ytPBENwod2BwQdIhtU4CgjoO
	 MHOXLpgLMPFV1W6t2+p3MICCG02qDeR1odC9bu5HdFazjzkNcJebgzyqNgIFhbocAb
	 uDoyLkjJioe5+CgbLwmM92rtdftvr3OLT3iJsB6ELOxSs9Cf2ovvQaL2OvQOsWieOm
	 cZjAp7GkOUWeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E93BC3ABCC
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 14:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174714539357.5249.4009797950896041195.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 07e915c5916af88d76c7727a879d7528882162231d318c6efcece4ba73165d56
Date: Tue, 13 May 2025 14:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747145393
