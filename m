Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DACC22756A
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 16:29:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747326595; cv=none; b=NHPMT7MS3vbycboN9sclZCAfeCrBvOL62BhliJn/Q3GpP8ntbU5VMB5PwO3awPEO3511hrcLa60iKMC0nRKtkIJj3UJcirlURZiyxWN6ChbphVafP2VabQcqAjZROhGBU8LxOK55xVohSHoIci25Wpj6VXdcAbQb0WIemxfG3n0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747326595; c=relaxed/simple;
	bh=c6gO2TJ6B/Te1kUt2KutUbNgYnLFa63yuFtp8ZWUdDg=;
	h=To:Subject:From:Message-Id:Date; b=RLlNzvU6NhuSzHCcA8dhouK+NyHGb3/n4oRaxI2jnU2ipMUOaYTQE1lYR7s4dy5NpruLYuyOOYPAV61cruXYlszRf7VjOajymEKnz+nr0Q40zPY2z23yUctTZuliuhflxkv0tgaBxsFZKDpEVXjYrJyHdlnyKuC5rwAnJsaLMO0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pvS4jUq9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pvS4jUq9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A343BC4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 16:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747326594;
	bh=c6gO2TJ6B/Te1kUt2KutUbNgYnLFa63yuFtp8ZWUdDg=;
	h=To:Subject:From:Date:From;
	b=pvS4jUq9nFCBEbuDGxKPCVSMzYovzTDHDtmP8ZmW74LwsCTEgU0zVTdpth/Gu+jbo
	 5DGbMEj6tzY1b2JZDrPk7kzaFkrwwVKMgAy+lB45Y7sCbH6N7EUJ26XcVL/k4z2U2/
	 QfjAYzGxDH+33WvDHbP3OlSaPXw5xyaptfNnKOJbk/WIlN9L+Qh0Ms5BSE295+4nQw
	 7PxPTdTxZkhs5d7l72VSyJb1G1fi652wicSLlc+YLj47vKCdZBc8jkSjCM1B65+RMy
	 WR/cdsbu7TcXdoyBG+FggyioCYo5RYun7ARM1AprJodyGY4rxxEv2V+2Bu1VozEJ7S
	 b3eNedtVka7jQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9188EC3ABC9
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 16:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174732659357.10071.15446774314075777900.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c554e037c9fb693e9dd2dfc6b791da401f63b6c20e8b2a032d6728d6f45e1d62
Date: Thu, 15 May 2025 16:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747326593
