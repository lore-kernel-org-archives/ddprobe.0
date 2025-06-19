Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29E63238C3A
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 03:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750303794; cv=none; b=h9HAzKuqBFUAhhvSNtVf0LjyPHl6DxfPQLn0tG/H7Z1bfoXJwO3DK4EWVG1LuVr4P0PszjSTe6bxGrBMZeb6ZeG+DftnWKriVJcnli6xKJy0MI3Pg1CLfkFXHZ3wizjQDPoT0gShCVpHL7OKPJLA+kLFy1ENd3rN4+GRJUBlUwg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750303794; c=relaxed/simple;
	bh=zyk0DJoUYXNZgKobS3FUSWgOo250KNyZrcX0M0z2hEg=;
	h=To:Subject:From:Message-Id:Date; b=O870p/M4aX+AL//6qHmhH8oYrIOKBh9CSqEupTc8LmhaWAsRwGO9hPRhF3+y4Z0hPgcuiFg2zTlkUqUD+XT1COYzKcSAbFsFHPZy/hG/zfsruOU0UBmoEPadbPEffhV08vyW1PxwvXraZ7cIIp3TJKgQpbplCipjdRFckDAhyrI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=epIA5rfc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="epIA5rfc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA93EC4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 03:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750303793;
	bh=zyk0DJoUYXNZgKobS3FUSWgOo250KNyZrcX0M0z2hEg=;
	h=To:Subject:From:Date:From;
	b=epIA5rfcGHCs4ueUh1jn0pAQ22Hijw8k3tfAfIC+juC/1Ew2Z6UaKr5REC+GxHPTv
	 4L+v7OAMF7kngjh1efDLH4MW+tf+d013lod5onWc8695p/2QGB2UgpNlXGVcB835PV
	 8aSZwoSoVp2VEzDf18dwvWtltn/nWLKyL/DUfK4FMA9cfa0YIeM8RX3DG9cUQ2l1mO
	 7BcVIrNPAuD2Y1oSu8J8A2bc1yFax5k4px1gMLIMAa7D8iuMuJjH0KJDBe69AZd9Y8
	 M9N/A8V/vOVA5TME1F8c5Z8hkBs5lESgu3UCceORbd27YiE1SuBbJGqcQ2YeqcR4kC
	 wUhWhGZ1aSuiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9310EC71136
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 03:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175030379359.2658.9231938855865835267.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea48e1cb7bf84a32ec4dae81ca773179e389077c6b8fa22c6c0e4ae39c54f1f7
Date: Thu, 19 Jun 2025 03:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750303793
