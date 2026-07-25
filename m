Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27B4530C168
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 18:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785003634; cv=none; b=l16Kx6XdlNy/Dj3XcTH0xgQ9e+Q77YD8afZ9MTa2HkkwNMJTohot2PmSdqBORrZgVioCs9YPBN/WXk/nN1G9LykQJFR7d9gxaD28He34rNe3+q+hI+9z4KQLgNrfXuIxnJGaZvJ9Dw0csuMAVu7OqO/4GLLwLREGTPR58O115wI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785003634; c=relaxed/simple;
	bh=lHVzb8iKKtubIKf7EuDRYCSko+Sjb5DL4eArmufO/L8=;
	h=To:Subject:From:Message-Id:Date; b=kpZT9PORQD7K+o1bi3q1yql3bXNopv3axcyyzYMJB/hVU2K10xTKi6iFoOjgFEXFAcHHxHQbvQPU4S3DMDxrnHteB9LwLDUhpPtUvTj9Bz8a3iX5cbWemYeBCd2gTrH4BdLRGdbUeYlhq02C0rK17JB0Do6W1E518yohMKns4ZA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X2vLHoLp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X2vLHoLp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF3E0C2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 18:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785003633;
	bh=lHVzb8iKKtubIKf7EuDRYCSko+Sjb5DL4eArmufO/L8=;
	h=To:Subject:From:Date:From;
	b=X2vLHoLphuYBbhwZRkb0+E9YYX9NziVY1dtbe2aTdKleITgdUlWzNBmSMix7N2A1s
	 vYRcP/N0w6E0CqQ+83lSlSTMZXOllKsQd2D2VTdvrPtUobF97LRE79NZuwURwhvlZI
	 WSjsx/xwO7MBXNVo4bdIJRsuvuKIvMTu65i4rhWaUuWQZgHyqF0zfLYjD4AZl7McCl
	 GdB24J+p6Pik+tD1JanRIXXhXeL0wuzzOorv4z0oa40WDhijHThxefKd6XhePeCASG
	 0qpUXm5KpnjPC2mHBGUtUXfu95Ra+CK8qAdrW97sqXTaRXReSUlRkaqbudR34ZWzB+
	 NxUoux4hEtA+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADF8CC531D0
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 18:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178500363368.3157.18061289868372033951.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ff57e56c7e95cc37899439e7f4f20cbbba38e11f58d1384bdbdcde7717627cd
Date: Sat, 25 Jul 2026 18:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785003633
