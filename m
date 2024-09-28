Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F3EF12E75
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 06:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727505354; cv=none; b=QGq+bdf21U1BHmU718UP+nby+vgPXQi1znlr0GWOjd1edfAncSSQ3NTPnizMAeOSJD5cSQafIBbLf6fc3nScK/KTALRtKvCK6/6hEC0UuC1Rx88xioHtm17MXepc23HECn5+2Z06igQgeo9ZqZTKF5cw4S0Zui4wT5XCWMQBMEM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727505354; c=relaxed/simple;
	bh=9fzw9MQRPX7GhQZCE+V63lKPd89RzF2bFpxKjkSsVbw=;
	h=To:Subject:From:Message-Id:Date; b=ox/CIPqsRmbmQt+GmEuYrbrOtDDQe+Ycjv3JRUUpesmN165+oxbTeNh7ZfLiWejFKlw/mubRnAFOmOCMw68qyVXFGKA/1bT1h4CyBnFpZah548C2PLhxcWwUyKGwlN54ji56lsGnWYPDNv3yTtkK9QlCdpA4e10CAP9fLirpzTc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WVeWxwZn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WVeWxwZn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD40BC4CEC3
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 06:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727505353;
	bh=9fzw9MQRPX7GhQZCE+V63lKPd89RzF2bFpxKjkSsVbw=;
	h=To:Subject:From:Date:From;
	b=WVeWxwZnaR05E2+T/EFoQswqorH8F0C5DLBXvCVI73jBMMmnuCp3/oPrPmEJgnb03
	 HU2TV/XAGqfeHDoDIv78qo15x7Sj1dPJdcHgLvZSu0P3cO9MB5XVsPLb+cMi7o4yzK
	 AFA9k3C11wsGrICP0WmUEmjsfcqzZdHgVd+Jsfq27l0d9zXBiqleA5Y9dSiPVDo2ji
	 PqguvGBaJzCPvNNHjynvmCWCuJfXe9pAaJncuFCYiOEzmY6CtBfqiLqDE/qzaHTKsn
	 7Wn5GHhwIMKVe+9IUnwT5zLIdABC8iU+rURokNmtukdcAuevnPmWBzj8Ysl/JCqSCZ
	 iQFXfOfsR4oBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98B3ECF6493
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 06:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172750535359.7208.2086023353938390105.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 62529cdb1746ba19dc8626713f40b98965e965e28cb33e2bbc21e5629d34a6e6
Date: Sat, 28 Sep 2024 06:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727505353
