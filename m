Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3811D47A0DE
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 14:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778076454; cv=none; b=QIe0N+uRpKP6w1Wlta5bF2vazheWH+jjRXkQ9h7oEQPxMMOrr/XXYmPQd+lCwNdsvjq2kXpyLjLRkYsxFrd1JypQ2qcVb42je24Q9ClpK/bRSJznYeXcA7BL9Tp0PK1fzvyHVdB2WDHyYisetvpuq8pGee+iplZKhSiOYT0f3bs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778076454; c=relaxed/simple;
	bh=1AwKZKrcQLbtUV9ZQidqo5XSaaT0jarZl5oz4h7JZ84=;
	h=To:Subject:From:Message-Id:Date; b=EDL/fw+YO4dFbA2yzMPKkGYa560/aWCQyohGTGBFVH4b/4raQuN8uUEMndUMpvcjYfkb4ZCxezfMsqN0D3kf6irgS7GQ2Wz7+Av00n3bJT6VvyiOPb13lZ3toHBpmh26y9dmMobpiuA3F+0/NPxSbb14RMT8miBc5BSwdmzVbiw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NopCI4I1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NopCI4I1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8A07C2BCB0
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 14:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778076453;
	bh=1AwKZKrcQLbtUV9ZQidqo5XSaaT0jarZl5oz4h7JZ84=;
	h=To:Subject:From:Date:From;
	b=NopCI4I1UxrUa+1LT5xz2w4NyoY1QJC83NDFf2lG6UaClI3Nk6l0AhMUcmLVJzspb
	 73BE+Ruax1BlIoAuDnC+tMKiACimbartgnas2WUoYg3h1MeQRiBFz4gaAgMkvgrMcj
	 dNLY5QjUiyTDdq4NvHp88Z4v9s9/FFhtSFqosB6f7FcnZtNweVFoBQTwKSKi19lu5U
	 nJdAM4PB0fQY/MoW/3xHCKjNrHBHHm2V6zVZEqkgrVJ2JySdB12AzqE69WOZfX4W1E
	 eWDy/UwTR/J46ceOk6st25INNJ75VjMS8Ey/4CBW3gD6RyvhNayjDM7oJ11Iwff+mG
	 R7Z2ZNYSwb1yA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AABB5FF8855
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 14:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177807645368.6219.3723945175017880717.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dcef660454005d9c710f14ac35eb9e57dc0705337b0031e6a86f53f178da24ea
Date: Wed, 06 May 2026 14:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778076453
