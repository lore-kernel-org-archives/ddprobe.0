Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 136211DF985
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 23:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761089994; cv=none; b=TWva2N8jbObea6jy4OuQmLwriHTBXOAEJ1tv628UWlEbwUQne0zgBbL/J5NGfj6Vn2kX9nZIiyqpGA1cngY3HIEI798gseiEUa2jroT+vpl9evFtiWxlh91uhhwYcuM+jLO0d49RW70FC/dBDWTJXRY8sJpaArxw4TvGObfmkR4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761089994; c=relaxed/simple;
	bh=HMkwAo2HZaoLZVE0YaPdZq8CavHW8rkTzj0nzqaRaus=;
	h=To:Subject:From:Message-Id:Date; b=B5g209lsk2/FTVnHLdyGKqGMyA6ABiWiSh/1sNoYUrrgif/4gVk9i/87uNwYkjjYGjM1dmCmR7VPFfmkCoJkmbtp4r0idIy9ywAeRiBQXxYbdOXTL6RTh0wb95i2D3wtMbSBgzB37vPRlKEEN9yxpy6a1Hc8O2NKKOKMAs1qOHw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GfqxtE1B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GfqxtE1B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2CD0C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 23:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761089993;
	bh=HMkwAo2HZaoLZVE0YaPdZq8CavHW8rkTzj0nzqaRaus=;
	h=To:Subject:From:Date:From;
	b=GfqxtE1B0CZ9xCnIygxSpbOOTKf/ixlZjaFleJyfMgwaX+tg4fcFf7sv/bZk/Bmmh
	 682jJZ6CDtm/FnhW5WT92uaS+5MH84oIJf/Qe6CM1p44CdMX/9uDomXh0nsHJ59SNZ
	 sStSgNvSnC+YxwlaNzL/qpY8F1lm/cyDhcFCVTqqpk1nFhCz8oVKBy78z1RqYdsJac
	 g4ZZzUwfg3/aGNcP92yrI+P96fUe37qX92o+vS3zzHLehzSBKfp3uBh5qSaufm2tMH
	 TCRiUnR6Dh96UzRupSWDL9rFGQTCu6kMYEydmTqudwmBsG4iJfHjVWlk6gaqy5ojUX
	 sK25SNZp9V+cQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92C28CCD1AB
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 23:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176108999359.26874.9716125850858607168.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 91c13ab8a0690859a314464350683657e55e0bcc8c5389faf8d65367c6e822c0
Date: Tue, 21 Oct 2025 23:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761089993
