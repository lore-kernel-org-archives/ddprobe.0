Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22C3B4C9F
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 16:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758904194; cv=none; b=m7g6eSiym1Hc6CjjWG6UHjbH3uL4tOwKBAKjQ6siPj1kU2Pxaw9BT0qetWvpL3pX6PtRiTtqXw0BWMo542XhFLOSK1XZ1bA3N187tOrDPWcTlPfolvq1dQ2cKkaPdpnzsLTEfn1uaKTg440yLn+dVxcBmFZQJsWQgWipdOZZad0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758904194; c=relaxed/simple;
	bh=B7D1XVVwh8vT4/Ho9RPbdalYb6bBEI2i0P0GGRQLomg=;
	h=To:Subject:From:Message-Id:Date; b=WTV88bNeQ78nS2j4WZ0NiUwvI1uGwgsGzwQNfc3ivnklozkW5z9zRWb1gLrW8X2kWeDHfM9kwuQQHHHIbFZQVObvi8X/5l0dxnJ7sn5wMFl8CNy5RK/++mgAJWaXAYIjC+5n9MlMX08JsHJ516Z4DWiZPLvVfuVxddAgs3rViI0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hFJUOuND; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hFJUOuND"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE223C4CEF4
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 16:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758904193;
	bh=B7D1XVVwh8vT4/Ho9RPbdalYb6bBEI2i0P0GGRQLomg=;
	h=To:Subject:From:Date:From;
	b=hFJUOuNDBt4YOB3G/siynvMtKyARtEagyHhrU0UBdcwvw4m4ZOegvT+FRkEtAO3R9
	 G2urJHFjPCvRVmKff7j6quVoBRG2gNS3Yo+TsTh77Cmn7PANpbyT2M8I8ylyrDx/Yv
	 G7UDWL7RdorAlxBTQn0n0WancLQkJi8A97gMt4GXYrrvenLJYXmwgjyhre5iXKMruj
	 LEnkuYFh77drFt9O7iyn4cq47HYVf9H2Vp0NS85touOFZqKEfLhaY+7AP9cnGzMUYt
	 j1U3xKvNSaAkZFY/ZiQmvwL5jiUC4Fzh5h6wUuJwf8gj8Uotx+uJU51mmxJXWZM3DA
	 pO805rhQSsxkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 985D7CAC5B8
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 16:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175890419361.18813.16702797257000981668.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ee64e0573c7aa443fbe49240c435171eacd59d473bd299885a98dee8b5d17ed
Date: Fri, 26 Sep 2025 16:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758904193
