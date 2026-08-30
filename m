Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C7E138D
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 08:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788078034; cv=none; b=Rw6DnZeS88qzrOW3leE2nlS/TW2HofAO5t5chlUGKh4tIzaT5emQ+Y3t80RULm1VUeKDOUdkbuv+ySZlTpmMFY/7Og6LuNS+HnF97NSHGFjOaDAaSl1f0sz0/FxDplwnyRGR7tQVX3siwo4LKSgIaPZvteV5zML8L0Kil3oXk6o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788078034; c=relaxed/simple;
	bh=8rNMPi3MF6/OqOEF4K6aSjIdC7+JRNOB/iTZdhMaJes=;
	h=To:Subject:From:Message-Id:Date; b=t1VnDjn7YVFx5h2HGF6Ek1KxW5cdvXTtVRYJIENWEHAzqBgKODR376JolI6/e/adQmo+kEzDcYc1Xt0LnDk+smhttuvKlzKmhlEs//2TeNNzT8vQ2kGyOfJakCCIaeyunIN3jz8spIJB4nloKtfQyBB9dnz8sJxTRAb7OU1AYCw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZEfi5aqT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZEfi5aqT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D099DC2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 08:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788078033;
	bh=8rNMPi3MF6/OqOEF4K6aSjIdC7+JRNOB/iTZdhMaJes=;
	h=To:Subject:From:Date:From;
	b=ZEfi5aqThG3IvAGibeFf87WosIowK5HZUBYnwZblhrX2756+5sJJQT1hIhHtcDA8G
	 TJIMgefqLtnQZAJizrrh5qucCEtElkYvTkRi3RIv+r1jin+KIKnZwSywCcOe18d19s
	 OK5HeKYV+0dlobSVOzz0Q8ZsfRL6dcQwED9yJXBoMLisFaePcHB4lxhydNn3w5gG0S
	 MjI/ftkRx8yVuDx/F5cgbHcWSSSeQXgRJY17D7/JqRGe7mnBVvBMTf7TrKdXe9LCK+
	 vktAnZDb6eFJh1N4pIph8gTvDtNCPTrdpTkZj54HcaQQ7o1YsDbRmpdAqmDqtfj+yJ
	 gJDltthXA5E8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD53FC61DB9
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 08:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178807803368.19502.15652288066148373194.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b153d4192250d4da38cbd7717aa4e6a63721dbffb93754e952d60e0e3f43e24b
Date: Sun, 30 Aug 2026 08:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788078033
