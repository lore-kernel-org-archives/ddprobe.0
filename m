Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED4EA22A80D
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 01:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777427854; cv=none; b=toutiwNWnKAKnMDdhwuL8e1FlNmNLtdd3HmPy/ld+/hkJFXZMim/bvhogqB3F1Z1PcjweKw0NeW4nIeQK1y9BIxlE2HiIoHLdpuDbM2MNlaIX8CYaXnO0RxqieQI19RjUN4oYxnbydd958bcd4QfyoKNHhTX2k9zOWQY3sY/KW8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777427854; c=relaxed/simple;
	bh=CKzFN7QlAXMgA1A0Nwjx/N16MotDJx9o45aU1bWgB5Q=;
	h=To:Subject:From:Message-Id:Date; b=YE7ezpYoQRJB2VKpyG9TDxW3Cx1IC3ZwmyM+uly0WoMztzPbXNDhru2xYJcBkLDpeZKaV2MeHaVapkYvg8NZ91reBljRSnQoyIuUYPOSDQqA7SpgwfSBYBKOT2TVu/UnzMVJUfUmTlz+/fUfFkruk5cS2CzGjzdCGfjEMEXvSoc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c2Wynr4G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c2Wynr4G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDE65C2BCB7
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 01:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777427853;
	bh=CKzFN7QlAXMgA1A0Nwjx/N16MotDJx9o45aU1bWgB5Q=;
	h=To:Subject:From:Date:From;
	b=c2Wynr4GDGZpsmNYx4H9lp3+VHXQDNnOIOAn/LfUMjYcSaf7tjJwO1LlZDo6oOIOB
	 INZnjEIlCr+TwjdakLdKQn9L2w6vrmBmp/ZP27JM3/4zt8wMWoT+JBxnXpF/Jkl6Bp
	 AKGOPnejTz1MAX+iSJqktiEqavsNh3Q1Er7j5ZLl/YjJGOaoi2eSaN0qCoruPg9vxA
	 lu5RL+d1N7Zt1I+1LzNtDp/HFGzgMYZFE7BrcA7gL4u7JUKXH55czMGGzTLuBfvSSQ
	 dTuZzn6wODvXzP/ZLX/4qO+zKgad7U2x3k8s0EdozGyn8Uuv8FHIke4F3sLyIjOplx
	 tKjviZtWfM9Tg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC571FF8875
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 01:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177742785368.24925.16107512520434558072.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dea3e927b184ea231e451b436a554c1a648c18b5c7c6c37deb83b4f14eaca480
Date: Wed, 29 Apr 2026 01:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777427853
