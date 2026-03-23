Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E560539D6D2
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 12:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774268694; cv=none; b=FmUaQaIFwNkuopHByY3/qdfnxKDzTz384N4hY5oKoUOWQQfLYnPM3Fx+nVAOcBVDcIR3SlSDLacS/pMXh16m/JRY5Hr5IH3HuD+W67FoOR3vsR1YjP8RZBSeqXUjekFWoko9GqZ2NKbBgxSluKwKSSbPv4dn3LtuwSHHe5LYZUk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774268694; c=relaxed/simple;
	bh=X1oCsiiM2MjHZR+ffpGoUM84O/TjQg+0WdZO3qsKndw=;
	h=To:Subject:From:Message-Id:Date; b=mas+gP5eayf+ymvamh13Nd8InACP4F/bgCEb4Zz5/20mQgRRKYHviBLOKOGyvMBNzMCf5jgo+QwTl6600j1HOQ+onfF5p2cWhnG01zGGRX4wANk6ttKJ7G5aIG1+1rkN8CP57jD5BNlJHiZSqgWVVainDofWCjCgn1qy3ixihgQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J3dMxz4D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J3dMxz4D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F07CC2BC87
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 12:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774268693;
	bh=X1oCsiiM2MjHZR+ffpGoUM84O/TjQg+0WdZO3qsKndw=;
	h=To:Subject:From:Date:From;
	b=J3dMxz4DhodGlHoUDYNLxt33ZKsplaAz3i/KYixzRK1ytbEQrG2iSrtmM4OPu3v2o
	 b7XfMNkZPcZoo/VfC8SXv+jvrT34zPCJYMFwuc3c9/ME0JD4oIxjQf+IOlgftaLwuf
	 0CZgP3oNjppZunaX3IYhCwinHgbJs5xqu4mEDVo1bYSLW5D2x/a6np3HeK41OmJy0T
	 quVVTSongqAh0RyYdC1FivkMxX1veUUz94CcU1AbpMqIv6ryJ9n1OsF+lWsuN22kTa
	 vo+XcN2vFOJGtVPoFxLw3l8Jz56U+c20vlee+RTISioXJBN92rtfysqtxrLQzUMFL3
	 CMXgSDGdtymUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91532EC01DF
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 12:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177426869358.17710.7591234107088211293.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0754717bbae52d3bae37904c6e8fd665564cc3a29bc5a732d2bc530a9c80f84
Date: Mon, 23 Mar 2026 12:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774268693
