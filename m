Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49FF434F259
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 06:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787208634; cv=none; b=U/aF58O3a75ULRL7cYOJnzt/CtK5XkwMNIdHrvJNZbtqYU0fNgwNZwzdDUx8TSmBjPDnfPq5KVAobSLBUcycGf1wqhKm0u1/y7iz4VYmtBOCg7z0Vhtqs7iRNxsYlqa5HK3uDmhDkcFF6DkxTFdJCDv1Ots4NEJmIs97pFXf57Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787208634; c=relaxed/simple;
	bh=W5a++4PDhuDu8Fg2NtKAC0WNk9oPbOxocUU7LIZgfLg=;
	h=To:Subject:From:Message-Id:Date; b=kESHCNCyoBk5EsEoJ394P+m/0wa65IKf8QrcFiuJiYMV0kl1m+EaFo8Scvl6DRcXXiLSPhrFoNZp/7bHPpJVDQtnF+lBklaDCKypcyG+ReSoLPnFU7BVdUv6zfACqHlAVV83EjNRV1WiozPCZecDSxwh2TycHcMD5ysB6Mp0O70=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fDrCODUw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fDrCODUw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAC50C2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 06:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787208633;
	bh=W5a++4PDhuDu8Fg2NtKAC0WNk9oPbOxocUU7LIZgfLg=;
	h=To:Subject:From:Date:From;
	b=fDrCODUwNp3iCpkU2HNk0SiRlGBiWnHMxtU9OzNl9bvB7a70ctL1e8Aowb8Bk+K/t
	 0oeUQmj+anLWhcSRDlIRy7923mDc9ftV8I0gqxVB0lud+xXvgl3zvWArJzwUOYDm9E
	 2VZPq9jEyGyB0Hha6weTbDaUeTNQxbsQXp9psxEFt/4fjyqP07begStC1xETyTNSjs
	 91rbYGY4M6NkQf8GNTfzx71JtdMh5RiA8DuRlfnfLA5adrllN3Bhe3GuTEb1yZC+E0
	 3HsQjW2NwQ+6L220/rFBNunwTLdLX2JeuUQ+4qp/Bcn/O4dTJ7duP9RBzkYz6+/UQU
	 WHz+jDSdJjT4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2252C5DF81
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 06:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178720863372.18821.13184806833000245035.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b500f91b58f6684cdee8f3821d9527119af0585b96eb3faa3688f045a7da050
Date: Thu, 20 Aug 2026 06:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787208633
