Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 012B8139579
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 16:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760546394; cv=none; b=J38dP/wDLJMPSIRM+Uk4rKFQ8qHQDVuIxIoNGhEf0Ys+U8MyzFDbywtHm0MpVtQrTk0gaiyWp0HIAHusdTlALh3bieyHm4meqLBc2JmMlN7/zm5U/0fNZdZo4ffcpPUh/+02Ln8DCY255NH7w3oO3ftLKRlPyUPmCKDFS7vOdSw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760546394; c=relaxed/simple;
	bh=ZTv2sN25efu9FW0JYqcI9zXEIf47fD9Lvh9R5QNQLrU=;
	h=To:Subject:From:Message-Id:Date; b=tCcaksqT9S0MCzWwnuMmH24ca43HwFqE+p/+0quxvom9U5Ep9MipQR0ZCRhynDjnvA8VXRqsLl+9K71npc7uVLRLpgtdptT3LyoohECcF6c4oAy9HdBcptxEwZU1M+NoNLsa5Xsy38Zb0ksgcE1jf2Lp/8L8+cPmMPUyM1mP/hI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DlQLpQXp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DlQLpQXp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A14D2C4CEF8
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 16:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760546393;
	bh=ZTv2sN25efu9FW0JYqcI9zXEIf47fD9Lvh9R5QNQLrU=;
	h=To:Subject:From:Date:From;
	b=DlQLpQXpVio4o8xbOmOAaMQ4e9WmgQlxTrZrrfadtCiwsmgF22txSVY56QT6rYVMg
	 6+KxIDeruR+JQUsPmifredE7sMlIB+gcQdVSqcRftbU7yMLepKiLgS/84Oa+GRimHt
	 Svkk7nfBhgdeKyHlkl20xkgocx3WvBzgLcH+DKrFoutKgzOBOezbVFnL5zJVcG0/1Z
	 3idlacik0E5vDbZE4zohTlxFT8xVIYN9wHkWLyoXUag72x6i4lX6zvrmPz5+BFBTSG
	 Fiv2O73dbuuknMG6Jc9ksLpRSiaOVU3C1Pqa+Ws7JkFGxjW54+RcnIEYHilDkbUqxo
	 GQAVXsNTl75+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92E16CCD185
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 16:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176054639359.21768.14248963723504624752.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4db905137c8e0062bcd860f0d446f0b1edfeb1ff9510dcba75224cb17b59423f
Date: Wed, 15 Oct 2025 16:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760546393
