Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4344E4CF470
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 09:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792228234; cv=none; b=fmprvHCkcVW5J6B1bFFZwVMrF/BjPzPGogEuEIzGsd6yVBKOLuLZZKOb15klomeSG/lxwHnnYtZf6lJbhO+lE1V0ye5uXPEZI3XNO5heloz9AbX5b6H9v3RYYYU+XHdb6FmBv2PMr3r67NTQeZgaYZshr3NIrFXE/9w3gMaj43M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792228234; c=relaxed/simple;
	bh=jiQ0xiFZoD9DDCJX1Jd9dtDIXubFKObZ89ln5EOIP4s=;
	h=To:Subject:From:Message-Id:Date; b=U/SuTosZswpWOT6CwWlJvX4FVYOYNzRJsqYfuqyyidt7XO4G8szW6jTWvSGryzlpxgaQiCqH4ojHxUbcCIgJxW/Hxm25HixARJhIZpWLEluwWYdn+Nc8zNROVTNWuNEeV8WG7PFohZEHodUVgEozoAlbQwkBRAplMVE81ahv3Xs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AFqtg/yj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AFqtg/yj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9420C2BCF5
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 09:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792228233;
	bh=jiQ0xiFZoD9DDCJX1Jd9dtDIXubFKObZ89ln5EOIP4s=;
	h=To:Subject:From:Date:From;
	b=AFqtg/yjtmAT58JZnVxsGMSkwLOLvS54ne/YkFcouDaCCydpFYe1upck31OqU5qrv
	 1tv5onwPD7Tx2P9ieYJW/2mxj7kJD+Z2eIPjIu9bu4ohOyo2CV5pWWKEtdo1lLH1cD
	 lcfsXMmnDrc1nxTAqdSO+IOf6mFGl4Y07GokhI1yBpj2P6eLKX7c7IzbRJrxAa5VuL
	 nucPTMm4WIzNC6jXw1GYZ45/lyxd5jL+qfboNM1Nz0ePbQYp3DDDZVrhwjnRR7l5DB
	 boxRjDDdKymqsfjkeV5ZcD072dpnNYWVQGRdFnfwTMwDLlGY1iGhiAk9+oLc1Oe788
	 VR4ctaW5fjnLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9323CCF2C9
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 09:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179222823368.10054.3542284828940778693.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e984e10521a6472346c9ea0300bea372d0418185161377f8882917564f7173c
Date: Sat, 17 Oct 2026 09:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792228233
