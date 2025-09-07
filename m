Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FF4823ABAF
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 10:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757239795; cv=none; b=Oc+JzZTPqbc3rEIv0CxB23Wv9PhlEhfwWRINIpDwtNavFnvypkf+5vTgPDVbCz0uDcyT9L2Fk+m/p/Orx7LiSJsTUHvpoJtF5I2Wp5U5a6z7HIN8rc8AZcUWBjxtf0IkOCQXwQT4BkS52HYfYDXr4gfs39IRW7MjqgaRuVI9Koo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757239795; c=relaxed/simple;
	bh=8mhfYSGC64zyR2E+IMfXFstnQOZtmNmbZOvOmLaENU0=;
	h=To:Subject:From:Message-Id:Date; b=OOLuW0bnPEXvVT1qFHSX4bat2pBSrXk5pNidhB8hOfy3r9H2HY7rzClKQyKV4aK5HdXGjRqp82zEvRicFhiMJoYK0j5yG1aF7iC5acIO+EmeJn3aTJY0bLix/J3+nPnJOpnNrtHUPzX15IxGaHPG/UQ6K17qBVnsi76YgHMywdU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pRYz2KHy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pRYz2KHy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0656C4CEF0
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 10:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757239793;
	bh=8mhfYSGC64zyR2E+IMfXFstnQOZtmNmbZOvOmLaENU0=;
	h=To:Subject:From:Date:From;
	b=pRYz2KHy+g2ERX1Ti6tVN5qLC/MGit6DRJ6zgggYiHcqV+mxhxd/u5OTdU3CcxufD
	 txDOqLoQBC//PqLSTS3MHxW7Dt7AgEYoVfj/oYOTxR97KKNwPSWdWF4EXqCjKq77JA
	 zPDpZsPY34z5naG5ghPRgDHHNNpwmQ+rMRUx3cmePZ9j9jHuMgaCVVXxrzmY0VgO1g
	 1f9kxKB01jUfE/L9ZRK9VPAJuTqo/7NoqQgv3QxacALZQevdnMtIaFhkJY+0hPh+NC
	 ah0ldLNW1TKIkRQXS4E0oA1SpRgzBnyXnEAwXoaPc3Nj16nKQk3PVuqW4MKZ+wTvgO
	 u21TCOj/bulXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91B2CCA1017
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 10:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175723979357.24225.7059655094268641291.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 13aaa149571dbd84012f2a5c7a6f8616c5f86b7ba54395115427e96740595526
Date: Sun, 07 Sep 2025 10:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757239793
