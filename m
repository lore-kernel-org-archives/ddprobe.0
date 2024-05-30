Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 750FF14387F
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 04:34:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717043663; cv=none; b=XfGS0p4H3yLwYvFX2R5kw50u2lcCitSIvUQC5TUSbDSTdnpSzfCsjl1oSU4jf4ejmdxQ7vCSN8DOSm7d9rNgmDZcrEaQbpVsoNWrQFyXM/TlhOv+xdqSZond9VXUdyKn8tyL/MIQwA4ukvh++T93bjXtq65VgBq3gAV3kex2YUg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717043663; c=relaxed/simple;
	bh=+IRDdRObSOIo7r1r+u1+N764vGUKZ+mv9Lt7TtJBFSk=;
	h=To:Subject:From:Message-Id:Date; b=C2Pp9IMAmV9nMhakvi9J5Y6ylD1GFlhFLroV95IM5vNOtesxYnRhB/A8yv2xw1m9c8BXGbQnXrai6c4cZVTNI4stLUoiT7i6O13G8PAvJXOatvfxM8LvxIYPaGWsj3jaboiUnBM7UTE4n6XFxPxRd9e9QgtQIkECHC5GBAs6yPE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ETY7zwyB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ETY7zwyB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EC83CC2BBFC
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 04:34:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717043663;
	bh=+IRDdRObSOIo7r1r+u1+N764vGUKZ+mv9Lt7TtJBFSk=;
	h=To:Subject:From:Date:From;
	b=ETY7zwyBeS/B0Lrn9Pkcbvyt0Ceh+U5XaVkBxWJbEvocbum/AYWBjDNSROp6yfPBc
	 7cZQjFNXYxrrrXheN+6T1H/IPEWtwvlgYdqgqeLwZV83zn1XBG1agLyPf9T5eBhAMp
	 MzHZuGClzzolb/XmuHGs/LBp2Ntd4dCCASd2qtmf04+i6S/BFNkeD+p12xdmsWwApa
	 dIetxNumThXlbcB+nskVaj88QN8W72S3pwyWuBnbjwekBfJdL6VeSlpJx4nY32TmPf
	 MqG4A5bwKFkIM1HLv5PnuATTavLEEi/ajZ2HGglLb5FVsFcTyFV62zAX7vcrn203n/
	 I07PyHdapTR/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA0B4C25B74
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 04:34:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171704366279.9252.3441449458209683326.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 69c8f1f01abbeed4d578ea04d04896a86478c7059620bcf3f99e62336f4d9e8e
Date: Thu, 30 May 2024 04:34:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717043662
