Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 341CC2F747C
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 07:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757059194; cv=none; b=rpTbO/M43yXCUSCzC3dI3dnuOTNRGErAU1Wg3ivXozEfcyisfcyzjOGkSFzzwGHGB0RFg2mNOEuT02+qmu4KOrlb90IWKnuUqmpMiTgmoUbdnvzGGwOkBNrrjOghysEi5GvkSMepxiC/lmzOLgiKaFBzvAWRk86jv9zVcLmlqbk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757059194; c=relaxed/simple;
	bh=EaZHZTCzmaLdBKXw7Kl7ZwDJerIrs51h7Wkn8lfB0xo=;
	h=To:Subject:From:Message-Id:Date; b=ORK0bSs1CoED2JHCezYKv6Kx7JograLchlqKNyu0/2ouimZO7h/XpjnTF5u0l5eMNUAEcWHcMbINRmsw0HGQE/hy9wflkaQ/iN5dtjTd9ykq5XKxEwEge7AiH9tRgs+gRSMNDtVr6v0bwHZgfG0a0FEf+ermnFyBXtETbmb5d0w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HIrLco3k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HIrLco3k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0840C4CEF4
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 07:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757059193;
	bh=EaZHZTCzmaLdBKXw7Kl7ZwDJerIrs51h7Wkn8lfB0xo=;
	h=To:Subject:From:Date:From;
	b=HIrLco3kI6hMXMWVAr0Mb0J6FV3doqjxC8vWq/hwVm453iVfOmP1dic3bFdQPJXcg
	 R71eynvV2nAzJ2B/M6Px8MFY7/gq1iRVewsDZt0xhJV62pkw3G6eNTkk7VAmyx/6gM
	 3/WFgBQt3btP3NFob5Icw0KUcNQkuoxOUJy9pqwdR98cUkqCtT0IefvD9dszW/i4dP
	 YzfrCXwWeDwVL3q5KgM6/3VOLxsHnSWzr/dE6dB6ewTBcTQt2AbzE/eZfBUCiktyK3
	 AtS970RyJ9VZg1KmBph7W/7LjfnqzAh0kVLhQnqKsJf8zys+97+QxCpKOPjSs5eOt4
	 YJDvJuUZv2Bug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F21BCA0FED
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 07:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175705919357.12695.8693906444630619859.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a81fd1a05bfdd61a7a9009526d3a1e8dfc76840363e21895162311251e48151
Date: Fri, 05 Sep 2025 07:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757059193
