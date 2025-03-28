Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DC1E3214
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 14:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743170994; cv=none; b=Ti3oE65Cb7Sb9FFcdhn1tsmqIfLhXbdAD7+s3B6lTCClZ1D2KgEkRNDliRO5JgtJqcoSQ9kUvmUUR1QE4s5m023Fr1rS9rAvl4pFWmy+F4t0ueyDFPa3kS6iG0Ma6xiGfRGTrsFhVwAzgTU7/wtbHn8KxBVMe9RhFn7GA7jL+Ys=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743170994; c=relaxed/simple;
	bh=jMCND4eWZS5YrjeNZJBqdL/TtAhFkfB/Qv9uXX4f1m8=;
	h=To:Subject:From:Message-Id:Date; b=HJcFM836Ugh/Pw1qXxc/9M9wBvSCZ9hV80gAkVMSznB0E46QL4mC8HuH5ohsiAqDodOX+zdc956z4h/Ip3vCIp5zWwprl8iZ5pci13ve8uKUljx1F6Z83Is6gET+f/5FzUfbMvuUFqC3RtuEXjoy9X2PErL/FTYGlM2qvoz5I/U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I701tqgL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I701tqgL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B958FC4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 14:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743170993;
	bh=jMCND4eWZS5YrjeNZJBqdL/TtAhFkfB/Qv9uXX4f1m8=;
	h=To:Subject:From:Date:From;
	b=I701tqgLfFxXp23UUPmKDqsMXLCYZCWYVhs6t5faHGZ6lrdZk5Yqd1iHU996dbO0L
	 +Pl6bqgpgpsdPrVM3YQdhuOiN+4ER2hlrq350nj7FCs/qMOPHuhmjzkP6PTdwS9hoz
	 fFDQmEVBU+PEyni9HtG5UDC2/VH22xADtGfywnKevK7h18qwVNApWGUtWWYL8HFR11
	 pMTecTSxS/u0HzXQuQELpItk3v8sbkEz9Wee2pLguFwPXDAu+p0kM+CldNmD33wi/c
	 BxSoBTYgnG2bwnVBbm3cU2X4VqNW54Ytyi2+/f5TF/QUDP2BTzXgGoCuiB0dzGqw6Q
	 LWKFr01YMBbbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A667DC28B20
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 14:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174317099367.14773.11751843088418360151.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a1e991b29de4f3cc2f41a2ea32ba6d82c6db37b4efb284e8ec69838a75dcd93
Date: Fri, 28 Mar 2025 14:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743170993
