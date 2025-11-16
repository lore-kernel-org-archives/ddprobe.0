Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2650123AE66
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 22:11:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763331114; cv=none; b=ASaMOi0H7Qpfs3UUScrlCZx4i9a8hIoZ/BgR1nMaiVft8p9pvMMW8LhSE0HCIt/huRcbfFlXBgMZvtkISnkbEJkJ5LBcVAkeKxMeKTTUFTwAUwy7yTaDc/SOGg2XS5Qvgkf5YtLkP8S6Gl7D/jWN25+SKBoOZUJogOxwOHDkpKE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763331114; c=relaxed/simple;
	bh=opPiyssqFrh/RNaxP+rP6GH97OkEie7MA/+4MDEw80g=;
	h=To:Subject:From:Message-Id:Date; b=i2qHnvLFDDsWd5ftGuwgqKj+44U4lbKLcfGFh+G1wyeKc96KSplokrTZ6LdqHMHkXyb1/M786KBkZTr0m8JGyqtAuJs7z99j4S4hwETsrB/fyf1lTLSzC9BDuf4dRNR9vqVZ1SjjnZV9m81iIhyMQgj/ZLwdWYZNBztTFeYtglM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pINFg5Yp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pINFg5Yp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0E21C113D0
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 22:11:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763331113;
	bh=opPiyssqFrh/RNaxP+rP6GH97OkEie7MA/+4MDEw80g=;
	h=To:Subject:From:Date:From;
	b=pINFg5YpzPjyKSGrs9hrN7s7HtC30mlAtnUu9iX8U5xf6SsDtgj4b3x84C7+zKfh6
	 /L81bw+7oaC5xLGuDwcZZxpl2fIhyMBn9dcK0/Y0dXJ76EcxqHT1Gt1SUkKp8kQvpp
	 U60nAxLSBd1herR+sFgD905lzC8OtTtbti0u4q7hrsB6luUob7w4GEHwwK9yHuzkXs
	 Jain+9CBY0TISjGoirsweBGeT+YCLkBq/LTYNcaJMxpmAgZkuLPBUOsN61kDF1O4Dr
	 NazeLYe0Pcfza0fEWE65kdzj8WT8ZUCcpc6N+yykUW7CeOc8SIYVdfqPpv5KUiqLXo
	 NEzrn31d4k7ww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93862CCD19A
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 22:11:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176333111358.6080.12746821821401566741.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f617556f3870b08b4846a05111de73a8f8ef3d528f0892c9207ae1c3529a641
Date: Sun, 16 Nov 2025 22:11:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763331113
