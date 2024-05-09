Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66364C8E2
	for <ddprobe@lists.linux.dev>; Thu,  9 May 2024 17:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715274143; cv=none; b=Ywxhh1RIylvL73wUqcORtUWSF58JKsy5Ni7b25G1mWQWiujxbdYFiYAV3GZSfSinNIIXRMqfpWVWdkXwm1iuo58aABKCcSjtk90Jn80IuIkYTgqwCmipsNz9i3Akmopak3e+cWsjJwdknEJBeTqjAfvQ3Ii2jKdRgFeV+/c+1SI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715274143; c=relaxed/simple;
	bh=XzJV6qyp9oL5Z9cYaBeonEMLG/kEDSCkuNVTlgIc0s8=;
	h=To:Subject:From:Message-Id:Date; b=RDHmYlt83VW0L4H9M3hgyp4X5Ux4OThCSdSGg8qv6BWROpma+LvB4/KoSWIIgec4BtnTrV0/35x8WORyn1dJmQmTjxXsPRvcidOfWTEhiLZajgH58RRJTxRWFzxiMEHGfZZ1ZzswppD+KTV7KNoXMHAuupom1dfX0JV09j0WZts=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eCrMNgXv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eCrMNgXv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3D62C32781
	for <ddprobe@lists.linux.dev>; Thu,  9 May 2024 17:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715274142;
	bh=XzJV6qyp9oL5Z9cYaBeonEMLG/kEDSCkuNVTlgIc0s8=;
	h=To:Subject:From:Date:From;
	b=eCrMNgXvYUzgJkCcrR+47igraAwxSjMnPHhqnxfLhmVj/4CE3ud0/GzTqmS4uLHk1
	 0XzARQZDC2pQClcnZ/EI0OE8KXmcXNRQA/P9Xq+E3WOa8tDm52JyPf0/i7PCeDXdFf
	 tt6gXsiF8bcMJ5ZPaM7rHN2K/P5rXNk5KFDFxF82an2js0D0Mt6Pdpk/MG6UUwglKa
	 TlsQ2yTzN7nrynH+xiGK0C3TdkA3g8YqhbYOQgoTZ71i5KOT8EXjtyDg5OiQOymmjG
	 m0a1tpC46nmegD0Rn2Xr0NUGi3nZOemZ5yLLgtu6umIUC3A8miSajeg9t2+fbTDf3s
	 G2ioDVvggxT/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9DD1C25B10
	for <ddprobe@lists.linux.dev>; Thu,  9 May 2024 17:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171527414281.27133.765894672605557161.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b7e9af2a006de9d10adb92be786bcb60e13f631b5e5461029e8af9282f954e3
Date: Thu, 09 May 2024 17:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715274142
