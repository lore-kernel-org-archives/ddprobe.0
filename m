Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 379D619D880
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 06:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751782794; cv=none; b=qYzTK1qpymyRgEPdn9SWdRM5CVi/zBLyh6CK46n+aMXmRxqt9xHQ/B21HkUwnejSqqC+6j5+eSNrMMb+LtgxDGy9SXc2idgNkwO1pkVh3bbNjJAkGfOtvyix7XFCsAEQG7J+3CcKV4muP5+Soi0Kdpig7ZU195ntHe920BhKdYU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751782794; c=relaxed/simple;
	bh=k2c4U26JOCgggfOmorMAwAZfneZXXWGeA4Jc3oy7DEI=;
	h=To:Subject:From:Message-Id:Date; b=W8zKk+6Zu7VfV6CdCrBD/jRD0fDYScrZGjFtMDzHSR30s5NSG7THfwX71XnQblZK9byld9OU+aF2h+ZOlFDGKhEA977I1BRava+Sx/X7OERjb0NjYTO84Z2ep2ZlBrjHPLOZdpCUXU03AIlCzDareq6p14XagGfAN9YXkCGxkLk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AOkPfzY5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AOkPfzY5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3E9AC4CEED
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 06:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751782793;
	bh=k2c4U26JOCgggfOmorMAwAZfneZXXWGeA4Jc3oy7DEI=;
	h=To:Subject:From:Date:From;
	b=AOkPfzY5d6w7JZT77q4sB0n+s1F8KFmz+L9yUaDDnpE87o1PBlHLAa6+6ThSZ2+gU
	 kifP8hjwJOil+1iHrTOGej8Da5Hqruk484txK162F/AL5g7S6sr2RdEe6gROlRCWqq
	 rpIl0AEAUzgXSNeg+dMDRM59+RRgnvYSdX8hPovlv/MhPQby3HTwTf6+XONbOVJw37
	 6vKer41vJ8yr6Ggk68uq5ppg4JXK5Fg2NkN/RNsHENfDoOaTSMLB8Ulqo1M6wZujBx
	 br0abaZpPaQWc20sDTyh5ohCUF6sqXByzycp0MxScTR1FC47z14NtRRxYEtHx5NAvC
	 m7zFQeGA3PyMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91DBAC83F03
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 06:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175178279357.13786.11985222639524469398.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b5daf7ce1a7629324aac1ace8ad0ee160d6ac45059a3442e9b66daa0cf2dcd0
Date: Sun, 06 Jul 2025 06:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751782793
