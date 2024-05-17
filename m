Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48C51BA20
	for <ddprobe@lists.linux.dev>; Fri, 17 May 2024 02:22:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715912543; cv=none; b=tgTMkjcBnnbfAZZF9XQVFGbTvw0w3r8/AWyRXbTE3nERaA72rbTuRWcw59pSB6GeIBzWfVmlk+9KYD0zL70z/UzwoHpFrwHJstXigh/IZ8wiTsDKJW2PtbECmv9hWRZZpzuX7POLAeQjpPLBluJO9huYB7QVHb/0x5MXgt5I2qs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715912543; c=relaxed/simple;
	bh=G3N6cteIV2tgX/wFIcIrsg8JOpuwGcdD1xLy7x6tqrg=;
	h=To:Subject:From:Message-Id:Date; b=QhE7tnFuiXX2GCvt6D/j6ahf859uwuLgeLI3ww6eAorJss9vox3ScAv7xgk5YZrt8VScFI6IA1In6PSK7qOBzUpLa1q7L9+gXZh6/2krKHcsBMkQJd0Ddplawc1uHRLzLaNRp+xJwwyrapsxA/WxiyOVpwKYSL/v/DxXznTCW4U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a+Gd1l5x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a+Gd1l5x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3AA8C113CC
	for <ddprobe@lists.linux.dev>; Fri, 17 May 2024 02:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715912542;
	bh=G3N6cteIV2tgX/wFIcIrsg8JOpuwGcdD1xLy7x6tqrg=;
	h=To:Subject:From:Date:From;
	b=a+Gd1l5x2W2m12DBAXPwRu9XIVDBtUBW7jnRkw1HDm4KolYRtQN9QhuDa4l2mjO8M
	 igiGQ2NE8pYiMQS+dPbcCL+RQDz2Ix2Zqt03sq2JzYowl629iNsPFF2wjDBFxgAZCv
	 m7b/3jRketBB8XDcEIKsg3htmC17dV04QRu0x+ISYivkMKdIIQGHSSMlF/P2XF+F7i
	 +8M7emIrB4Y3YALuBRWTkJXv98B5r0/wb/T/9ERUIlvWNVCWOBfmlNpUXvAHJXXs3x
	 tGKsvTRkDh0Zuw1+0uZsY6Pq2p/n9eHShAaPx6SvLf353Gc/Tcl7g9kq5l7Xi/7GhC
	 f5HQK/wMC2xJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2D3FC25B74
	for <ddprobe@lists.linux.dev>; Fri, 17 May 2024 02:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171591254278.25577.7134124540889548678.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 171d770bd6ccefd3a0e2bf2ca8ac935af76968a9d77f26b8c0994d281664651d
Date: Fri, 17 May 2024 02:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715912542
