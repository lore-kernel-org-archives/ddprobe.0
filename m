Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D0B0D4317B
	for <ddprobe@lists.linux.dev>; Sat, 24 Feb 2024 15:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708787896; cv=none; b=kqV5EyVN2zBnCrxXYo33uWAI7enrwD3F3HVsS76/op1nE+yJoEyxLt6Mns2s5nVkEeuhnCLZ9VUbPN4MUuUd9++FLYGYWMjIagyog1nZj/32M2sRzn9vC3D4CElsqWCVpmqM07MuJhsGeoM+iyWs5sez0KOzOoLAF65bGjJQYsA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708787896; c=relaxed/simple;
	bh=2jVZKMHtaXfzBFpivFvwmBXhe5YP1NMbsZeMsqgvgU0=;
	h=To:Subject:From:Message-Id:Date; b=E+uSZoeFeRNrdSDadz3tAtJzxPGuOaeERljLU7tkrywVE7Is19mUukqz3X+HRxv+aOnlAXKJvRpfdXOadWaPMaKAVgrOuKENwxYDlfbWNivrPWYerJwWxQZyT2QgffAA538kwzdu3+ueELVtO92T+2lFfR0zw8y6c5AEFip/9SI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xg797/KZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xg797/KZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A426C433F1
	for <ddprobe@lists.linux.dev>; Sat, 24 Feb 2024 15:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708787896;
	bh=2jVZKMHtaXfzBFpivFvwmBXhe5YP1NMbsZeMsqgvgU0=;
	h=To:Subject:From:Date:From;
	b=Xg797/KZr3iqt167qHbi/i7WtbzSm1fs0aeoy3MwuspnQmyLZ7Zu58dM0QGPhUtJT
	 VOoFVh56QDUrPJi/RUNRKeNygTNdrsaZSsQm6oOwMifzknF4YKeJnUI/T4qv8YYzCX
	 TlKsHVce/OxxjOm+iVSmGHltpsHSRDXq380V9sC6lrSoYzh1aLGrrETQxZW8dBpFdO
	 fM/HbKOHNnewOdc2Ww+rnppItSPxUt4RSIq3QnfFUOjiIaw6g2C3r0GB/ndpLHxMC9
	 Zu5LoL+e3Beh11djOBk2Hl5GXIPOHsi3IOj50juKlnvsbH9ui9Q+1vp3n8R7Us0e4y
	 DZT1OIF6bb4zQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F7E1C48BF6
	for <ddprobe@lists.linux.dev>; Sat, 24 Feb 2024 15:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170878789636.2340.17511257628231590309.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a1b398b4384d83ebbb0d555bf5e48842c6df641d0a56c423940d20e5dc113343
Date: Sat, 24 Feb 2024 15:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708787896
