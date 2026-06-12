Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 500383A75B8
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 15:56:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781279794; cv=none; b=B4gAm4dvdhZcGnkrTUDX+VWxGPEiJuwK2/J6rsEWft8jdrKbd4aZkq8FEok+h8A2DtSiW1xLfxRb5g+ncsuI0hNylwE/636JbSEJnJVjB/yInOx6lTUpLcVtmn8ZD3wXkLUnp2vtCyeh2z/MI07AV1Td6urQHhV4heAH+aUVkA8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781279794; c=relaxed/simple;
	bh=wPklzMnXY2AQQ0XvvKeaNMn1PsF4/fvFYylQwPrvvc0=;
	h=To:Subject:From:Message-Id:Date; b=W2lfmtDX5yaU3U2RWlSRI+kzP/5VOE4cPEqWZx/3eYvyskGJZ/4DVUPB2J1p3zyPyUkjto/4X75A5wa0HxWf08m1eBLSCaLIRraWE0JdGgal/0Gy8JxGHWy0a5nvE7uraY3T8SBptvi2OMbFbEltegcCVeHr7Kt48se+R44CtuE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nqwMDMbi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nqwMDMbi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6129C2BCB4
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 15:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781279793;
	bh=wPklzMnXY2AQQ0XvvKeaNMn1PsF4/fvFYylQwPrvvc0=;
	h=To:Subject:From:Date:From;
	b=nqwMDMbiRM/MsAwmP4n+D9ANgiy3cEfnK5//v3f4CIicOZ45VYwhn8Krke64QgcJt
	 1d6NwzEdkSK06KIINkPK0buB3fiuCMrJQ21xl/sxuKtMkCKIvG+Oej+ubg70sFgoEc
	 EeLjDe4YLMvv5X8us+vM6+MTOHrSJ/ciocWVmxAV3anVhv+fbU2S98zNCstMWUCcVF
	 j6wzguEqfGASIL9pmKv3D9b6dwfg8r56fKb5FbNIw98HUET9P7bKU2hF2wi8JxEZCG
	 GJ7CTjAMzNfrsTi0lPrnyFCQPhP+6ZNU/Ng8F0WItG2CKCwx4D4krIWZd/wKyp3g1Y
	 xj5EEfdD+jUJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8E9CCD98CF
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 15:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178127979368.20937.8442783188027150395.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d36a55d67aef97ffd37d722ef208e4fdc126257ffe1b312a085a5dc24cf9bc3
Date: Fri, 12 Jun 2026 15:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781279793
