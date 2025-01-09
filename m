Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3642736D
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 01:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736385354; cv=none; b=Nff3OMNKsA7OzYbQ3Qr/HIrfB8xmWS+BEO5DzzojTEwDT2bScy7UF9Zc2s/KbAZ1DkYA8+JH+5eZ+pitHs+ROibeMvhgDtTWku3frLQZiWFI7jXtDO0MLV1IcMkk71AWV3m8wG06fsTLK4gX30ODix2KUptMj44/9WFYUoPl98Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736385354; c=relaxed/simple;
	bh=wo1x+EnvOn1tTWB8b/eqJTLFstimgowGOeb4lLye4Iw=;
	h=To:Subject:From:Message-Id:Date; b=HZALwLmq4B4jgUmcKBm0lJyXpH6i21xDuEmJRgL3QG8qksDM9tMHh3IfeWoHtMSfKcAK3pon3Q9kVuEl0mNBcuO3qgGQE461Fxz2oaAaCfxW1HT1gyr0zqBmC8msQTSVHx4lIdJPv9VUbThdVm8yj8wa/MowdDJC8aV016rOLPc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=klnpREhg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="klnpREhg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABED3C4CED3
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 01:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736385353;
	bh=wo1x+EnvOn1tTWB8b/eqJTLFstimgowGOeb4lLye4Iw=;
	h=To:Subject:From:Date:From;
	b=klnpREhgzbZOWsN1Ke+/AJbKmVFIkeLvIrtumpc71tZ/esHPd90Lz6NecQfzQSYjd
	 rd1iPkOFfYp1d09NDrP8e7Gvs8hbXpZHOaK0wHFi62fO404Tx8STQKnjKarfcWyWP0
	 oSVq8fYs7ULiZe3saDoGst7cwzt1YKHKxzdfgc5y2bpq3hUqtXWSMcO6GdEmOBgcyk
	 S8w/7dN+NYXYs4DV+8lCLT4GZnxn9QEWte8vI3mz+cHvV/upL0Xbw4E0wZKRbn0rJv
	 sBqTVZcSrybh2GprveHQD8VhObC5Bt1R363fD0b9//frY8NTPllIOAw8ZjTZKnk50U
	 XGBlUqqI+rbWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93E2BE77188
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 01:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173638535359.8446.4372558214554436585.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce5b3a1a79204b5a349883ded0153c4e3d821a5ea08affb0ae44f0b38a21b123
Date: Thu, 09 Jan 2025 01:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736385353
