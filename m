Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FCA3EEA8
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 02:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744512595; cv=none; b=SIaxBIQAQeYqzTw/m+M/BFRDD5a1XhIK5zjyFDvZD4N3doQERVzA8hJKO749cHDF1UOSjMuteWw7+TngCGhkfdk+Ufqn0PWxb5lQ+oQRsF5sIrT9fxdus6t1NOzWFMrs4io6Sk/Ngw1FfBO4K53+isIez1hD0fRz2pSBWIWZ4KY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744512595; c=relaxed/simple;
	bh=TCMn5CxWgLL22Kn1eP/bd8z+VU0mKOxLzuuggvI12Xw=;
	h=To:Subject:From:Message-Id:Date; b=C6y854/nBnfnSN8sjW4EONJPvxZTBX0IUroyB5GDT1ilkKOrIPdf1aA+5zwaS3KdL0D/E47GDLWlNbV3dyh8gMKS2+NB4lXGY1zxhGKsTEc6bsW+f/cF+oesK3B0U4d02MwLUyUWnnKoaoavTvHI3ZvHjta9Pvo/Lx/mIXR0Rgk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k3BilRKx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k3BilRKx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD4E4C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 02:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744512593;
	bh=TCMn5CxWgLL22Kn1eP/bd8z+VU0mKOxLzuuggvI12Xw=;
	h=To:Subject:From:Date:From;
	b=k3BilRKxbsDeyl7k+TUBy5EcEQwbp20jFUvNt+K2Au5oYkcLym8kAdAS6BIsEYZWW
	 R3JOICrrwwqIuspFf6oXDMWzlVts4U9+nAsEA0ct8p8+wA8LEDeupLZoxojLrinN3w
	 jSeawtycSoHwBkNjSv63gOwl6jVC7WDK8+xKoyQt/uLEwqA12LopRfoSCsNR+XUL7q
	 LKdu1Hb476gz0m3sqlUpoGhvGx7rqlyBcxpqiSiJ2D4zfrL0Q+exhvqoNQLQnuPalS
	 0Ci63ngfJ5aXrKyzynILfIwxVtknnjp346n4s/p763avsNfhz86axWS7gh3JLDHjKL
	 uNIOdZWaP6++g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93696C369AB
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 02:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174451259358.2577.3141286910124404988.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b0e8d5742ee4304d890908150ff1e98efec8f7448c7f5868696b244b3659b0c
Date: Sun, 13 Apr 2025 02:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744512593
