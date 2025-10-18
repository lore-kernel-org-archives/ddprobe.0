Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 275EA137750
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 12:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760790594; cv=none; b=sj3+z/AHYj81CDtrJIVKb8F3tbfAt0na9Mp/WxynvA3WEf8pIdprlhNknkgZVhWCL2RrTzAcorHpPvqTKqXyTYv9QJEH5vgUHdyR1s9gwe1KyLTQhR6/sGqbvj52FTV2cF5sCQyIMxc/Tj14shlHbtRentPETlup8KKFjxrJon8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760790594; c=relaxed/simple;
	bh=W/C5tPMwFXWO9Fzp7JWBNAo4l0QHUossdPRFC6h/dnI=;
	h=To:Subject:From:Message-Id:Date; b=gtFUzKivk2ulN1vfxz3SIzpJHjU0NpWNAcDJzH3GCclbrGqul4cExFBlVuHtH4vqM4jSFfvHMYikmOmYHiiUIrFxKk+bpnYEs3LZ4swiXJLxToQOLCt3ZTpYhG5jKfkuWLzY8q+KxNfHdJcoca0B8yM5FdzkatAzGmq7ymZfxo4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D0vWhX9n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D0vWhX9n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8E96C4CEF8
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 12:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760790593;
	bh=W/C5tPMwFXWO9Fzp7JWBNAo4l0QHUossdPRFC6h/dnI=;
	h=To:Subject:From:Date:From;
	b=D0vWhX9n4LraGGwpaGPQFGSyHtUAdpgm9IioCMLgDPWq1OZlexDQfpfBK0BVmNZNf
	 RWYb1janjrYjTN1IXyozDfqqcSYwTQnJIA5yviu9Rlztb6iJ90zzR6bMAlmpgDq+ER
	 dak0pj1MP122p0c5O0lbBD54dtqeF5ZYWZRuHxyE+2kqcNMk5YTt/qT+m9MqXtZscP
	 dG6a66ZtZkxSSwgqQ4G7lQR2VLynKRMez9p4LoHJAuIRyz1Cwo9QFXvj2n2PxNigac
	 oCb5z6SJX2koZCa7nz7c5elxWhSGpCSiL1Hrtgt76Hi8B9axBj+9xUJrWUX3XrWALZ
	 fzKqzjgfwsLTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95F1BCCD184
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 12:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176079059358.5722.2307461650767425267.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad7a5dcaa6760fcfa4b859d37ffaaa29d3ed99076e59ac94b2fc0f7dc050b55c
Date: Sat, 18 Oct 2025 12:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760790593
