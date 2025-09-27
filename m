Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29D5719922D
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 10:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758970194; cv=none; b=aSnn3e/6XeWDLAXID6EqCweRCfnbGjHzd/VagFWGwMMT7Q6FPpHis/VcBVh8j6vCYVbz++hG/Mk/ySakoEuc+g9hDLz9mUHrcoi9Ij5nx6d7RCPKiVYdxvVTs1/9Fprr8lPqwGFMqMH6J5gXxPGzdYHd15xUcp2LFxtlVtMvX6I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758970194; c=relaxed/simple;
	bh=WDQ0mHkmWOBbfzWtnu1Y1S+NUK2DEBELmfL+x/neweA=;
	h=To:Subject:From:Message-Id:Date; b=Dz1exH5serQl+W1pvIhZj9eiACDxHA/3Tr8XGaaZ0mng1EOX452KhoOsJYiI6IGVLM5DytpaBa1/1DCjtk6mcf3gSDtH3LtQHZKWvN80kiOBRVk53Kpco37lonI7Ur60zpQc65b/2tulwBJ2CkF2OD1k7vXvHzUzZ6NEsrEliXM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=miXVu279; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="miXVu279"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A561AC4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 10:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758970193;
	bh=WDQ0mHkmWOBbfzWtnu1Y1S+NUK2DEBELmfL+x/neweA=;
	h=To:Subject:From:Date:From;
	b=miXVu279auAVscRbZelSuTvk7TPV+jG2pfv1Z/R3EXvajhAXQLR24jemNcHAuxN8W
	 +JvaNhVotM1xlBNFbgH1Iv5RhBgRQV3Ozf9VcseGBKvTTc34jmsSsFMKAu362V5wMq
	 LXeBikKGEb2HeqqwCjJRKn5axKFPTxQ1JhO4vx2VApyDE309AlQijHu09Dydv6s7nK
	 zrw6hUu6geY+LyQXJXNy5ulAUYt+KNX8e05WoJ8gVtDG8Ea6txMLS0rmsXDpgcbTKZ
	 VxJ7xB48U5wcf2hLzebsqTkYT5mfkrbCdhMu19OiViEL9LzZtZyOVEEfhcQC5rtaOQ
	 nBx8JD9VvOMlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97FABCAC5B9
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 10:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175897019360.7874.13339971813345032554.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c70ddc69861213d2272953d9749c8aa96b3481feef7d81d8d02399555fa31d16
Date: Sat, 27 Sep 2025 10:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758970193
