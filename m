Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10BF71E32D6
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 00:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770769434; cv=none; b=stCEVoAfGPnVrwmb2aB2Hue41pa/FCBBePY226JJEr2RjBjnUOmq3pAgKU/LDBd9J9neekY/TkHxoQqm3h3TwxU+SkUH76n6A0NMfJyJ8NV173KajGYX1lJp1rgzORl1zkOKVJbUjItJ7iq6iNYXz9q2Z8I9tkxkirwFBlt7qCs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770769434; c=relaxed/simple;
	bh=hkjSvdVn9jhkzbCtoEm6vBZesRGM1U8pGmej0no8vuo=;
	h=To:Subject:From:Message-Id:Date; b=NxqO+BQUhdfMQI1nAC3cujgRhlXlVXrQw0rWXSb5Yi4kITcHmVy/BR0bcWTkNCoQmBeDNubOgekSYHINV2/b4PlbYaAL83YTjOmV0V3pVKUrufglCVv/6KMEqutMNtRkWPrB9PiBePwfQEFDWTuAfka7hFMSQMJoSAd47OLMESA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j6j/3Tx3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j6j/3Tx3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5AE0C116C6
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 00:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770769433;
	bh=hkjSvdVn9jhkzbCtoEm6vBZesRGM1U8pGmej0no8vuo=;
	h=To:Subject:From:Date:From;
	b=j6j/3Tx3Sh+dymEGXSSPx6iF+Dfvlh4hU8+peXqQcZoQcOfJHEAPTVs+mvWOoF2E3
	 uHVEDlfLUCSr5Z2EWFA2+8kafeAaL6G0nFtwkuFevQSNA5LXJgxjegmp6lbG1jEf2W
	 0efqjqUogLQoYBu1M0dgvWjKHrCIZFaj6CioL9ajv+iDffDOsp7QMzOcpEHNweJX8r
	 +52SxhsRa91+T4PWTzLhCX3ARpHpnr2DIRBEs1piTgbieAzYQseSxgQyjF2pBoQw4x
	 B19EDEnPXMmaLrjbnGnWBGkqI09pngKBkdgrSSckgMYNtGiSmR3jcmqwYM1084igNH
	 /aS0lkp/QOidg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0756EB5948
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 00:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177076943360.23300.12202658972524981453.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 847c565b7ef35f1be8cf61ab5579b13acd39b704274b586a67422d6e5f0430ce
Date: Wed, 11 Feb 2026 00:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770769433
