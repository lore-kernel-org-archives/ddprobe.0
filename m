Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3721F1853
	for <ddprobe@lists.linux.dev>; Thu, 19 Dec 2024 23:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734651354; cv=none; b=BjPri8XTjuJSRb5YCxy0eDH2kK8jRDGf+ffAmyErAM/bsxaXZ3R4d6W7trRbp9F/uC8uOISzVlKNQsRx/OpzDa6FOdsAiiIyRjmnIKyxdD/+JMSzFFDdSsoDw+sabbnT9VUM/hFB1fjvGeDHFZhArYbfW0E/Nqqceyz7oHQyyag=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734651354; c=relaxed/simple;
	bh=wpEIJnDToWqH4bioxagRUspeZ0NHD2Ej+ORr24nYxtc=;
	h=To:Subject:From:Message-Id:Date; b=C2lFcbphQpgNDjLK9IGZJadBb1kI4ffblwRIFZp8SS7hmuzuEVRDGMl9IJG13g0z3xwj2xngSlWRhL7hj30nCLOZPvHqlP8oGeGHUsIFQ2nvp0QpNXi+9gdlSCp7cHP5kN5Q+D3Sq7HeZb/Z9mgfeK0O0UeVzhQotuE3VHETrYw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z2tpI8fP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z2tpI8fP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B38A3C4CECE
	for <ddprobe@lists.linux.dev>; Thu, 19 Dec 2024 23:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734651353;
	bh=wpEIJnDToWqH4bioxagRUspeZ0NHD2Ej+ORr24nYxtc=;
	h=To:Subject:From:Date:From;
	b=Z2tpI8fPEi2gNBvZyzIOlD0MIl0Fnl6VtpGtWTZOEoXxWu5BLIr7L8D2DBBXvg9nV
	 TqtPYD17WxbIiOWyP9OWZHy/dl9+QdCQ+7a4W1a6w/6QhWLRMO5UmPbFf1CqdzxhJh
	 tCwx8aB4XLucmK/p/G/2V9TnnzQ0UVCkhBfRNlsUEZ8WhVLCyBC27Rm9g2vae1TKYI
	 k498qa1gcWrUo0YnrLHyVGLgEmcpk4+vhar4o6kRdpdXJAUflpj31Ho0QqXN09sEkD
	 hZYCfQM8P/LRuMoc7Ve9xAbqGjVL7Gblnvs8FBrboQVVzbrU6lIdz7Z3+HuP401i5R
	 DyI5F2URR5k3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99AE9E77184
	for <ddprobe@lists.linux.dev>; Thu, 19 Dec 2024 23:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173465135361.8158.15628527415452571094.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9ca359c339142adcb8df7fdb56820dd3a5a5b9a3505973918b3a8728c9c5ce8
Date: Thu, 19 Dec 2024 23:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734651353
