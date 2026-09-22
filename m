Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 859C351354A
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 22:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790117434; cv=none; b=BywpG4qEFoUdCddbHZBuR4fzRt+ojR9hL6A05Q8eUzjeU6kkncqIcx0lio3J5k5vIrxqofRLJTcKTk/es+HNNpUw22vG7jEWVPg7pooh2zb7wkdre3ZUBx5YTNAnNLffWbi8B8f1j5io0qfnKmkGIafiz4pZ9C6qqh+9u9K9lMs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790117434; c=relaxed/simple;
	bh=VArgFGLGl7SSOF0ooS2OtDWsc2MNPwC8i1j/lkKjH/8=;
	h=To:Subject:From:Message-Id:Date; b=ZVAYTDrqZegjoUAG9L+CB+9djNpuueFytsAlB3D+Ri2ri7WZadzMmIAvAHLH+5+0Blq3Vh+pzH9vp/kbPS3XXgby0p5F7z714LZJcFMpr6qbgHSlzG9ARLxqCwVyVGQgnYgEvY3vWE1WTN54hv9RWsm3KPDsP8IIFwgEHy2qSms=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dAY9SlJb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dAY9SlJb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D366DC2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 22:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790117433;
	bh=VArgFGLGl7SSOF0ooS2OtDWsc2MNPwC8i1j/lkKjH/8=;
	h=To:Subject:From:Date:From;
	b=dAY9SlJbNTZ/v1v6dfGZ7W0UjqXPD/WPcB7f8A4l1bDAx7M32AeB53YIFo+yBX6Xw
	 yjh6GYEYf6J7ee6NC9DA2Pb8gaq6vwv2QXcq4t6E/wGwAzLTd1xdj+ZS5tV/wvZhRa
	 U0RRnu4QXBSBzv3D7BRrpqq1EG0C3Z+eh8z1D1vG19TUOgNrbfo+HzGVDbaz13vqaa
	 NP8j4UArSTsFuGrABjiKI5QG2A/4/BfqO6HyzDiQwi6vDwt+y11TeTHyuKs51+Hgf2
	 TywOBxtSfzRJ9rp61sq0WKclSUu4ox1AOLGfY99hvCyB2Cajz6DzRAeH6pMA5RMSVF
	 CxIsmbPDRQEIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEA10C982FE
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 22:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179011743370.13828.16632043246179161030.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b5540db45aed2aa876c0b39be016b39e41157c40f55778e54b45e12a794db99
Date: Tue, 22 Sep 2026 22:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790117433
