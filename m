Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 019E0221FCA
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 03:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768361634; cv=none; b=CO+8S0wlU0OfqOuM2LYnkDz0hfF3ITkoL2UP+dZyMnPjQET1R4vZHkERcfB24gYuUPKbedmen/JH3OQX049BMT4eHBEJde2RIxIGketw8TKWYDXhaHW6aL7aST9F4dgEmeNe8Tea5ao5+XuN3zNuuUXiTvghkdsJpx7dPO9l3aM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768361634; c=relaxed/simple;
	bh=f2TjrPHkSNyOczElgTpmWbbHmiRy0hre/SM0IXl3aws=;
	h=To:Subject:From:Message-Id:Date; b=oAePc2c75D4sXAwyXcuCiECH1QCRxKkuyIR/3nMCWAXKEjYZ13Q05P8N7gpkM3P2hFdHoXYl2uvlo6FCzex/vgfd/Rt0GIeyFLn+WU4g6Z/8JtuyXtMSN7XJrIU5HY+fPmHsGR4RzBoB342R8WIb2OCF7ND9ym3YTUe+po4qcqI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VQxJRC7z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VQxJRC7z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8371C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 03:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768361633;
	bh=f2TjrPHkSNyOczElgTpmWbbHmiRy0hre/SM0IXl3aws=;
	h=To:Subject:From:Date:From;
	b=VQxJRC7zeuEa5tTv4qJ9ExrArxWE98oJDV4tgEhtPw+7FT9zFdkcsuAjrRg4gsXFs
	 LzVUx43zXkKYCYUd3UYu+gtzxG7JYdRgeUyjsdWydUBODiZTkVRvcDJiOuVWlCvVLd
	 WW8JQaTnwdd8vAsnsBjLDxZ0ndvNkEfYPGOiLZA9TOAN8GkG/bq02KQh+l156dTmlM
	 qbS7ZGzXdcJnqV3mleK/ltYrpMLrT+0PvwD9UYTIYHVhX4jRgCVZjD2tynN5PcxbvZ
	 qZSNnqSawJb7/tm+9pArg7ebMenfgGD/EknkfDmBm13JjyTB2pqG7gk8fhY30q62Pc
	 o1wNb9jaH7NMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98D85D31A08
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 03:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176836163359.27715.13016821230598544970.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9fe75a40abc8fb2eda0af21e0e00b50c4a08254507916a029869faec9d63ecd
Date: Wed, 14 Jan 2026 03:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768361633
