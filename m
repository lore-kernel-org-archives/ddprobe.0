Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A4A2C2FF
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 10:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772618694; cv=none; b=o/ArK/mXUYcPKWMDISsY4o6hYoqguwKJZaAOyIVSWRRK6ANsynL0M9ZSKdKXUAI/1Wij+Cq+34mMCGyxvG3Ydn5+L/TSINYUrH1oYOz7idJYrlQRJyq4JBN4DUhdNPF+5VGP7YT6zIzKEF/wbpaFN4qcAfUXE2cdAL8AwoPRkvU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772618694; c=relaxed/simple;
	bh=tAyb4AIBNHiUEHqYReZ5zGHKUIJl7g1tqIeNRODkLpw=;
	h=To:Subject:From:Message-Id:Date; b=m7AkgXSRQ3u+PeyweE3NnktRXXQP2x+GCTeApW+l+Q8I61CS33i9I+ZUaVlCHHgPCBQ4++zPoSXBIa+SziKUQj6R4Qr7qvVFh8fzklzdwW8NIxl9CdqP9Rj6fSfa9i9A9oRV2Wh2Ppcxbpd5fh0ZmCI0WUQsn82WpXO2G5liHkA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cEnxI05B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cEnxI05B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACA2BC19423
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 10:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772618693;
	bh=tAyb4AIBNHiUEHqYReZ5zGHKUIJl7g1tqIeNRODkLpw=;
	h=To:Subject:From:Date:From;
	b=cEnxI05BvhtU3Fwz6xOx81odfFdrMS3g1CmLLuN7ZT36kx9ZO0B7ZbpFCxxmzkOQy
	 +6oEM0u+tMwjoOHL2LUZjDNXR+AspyMzNIcFSXeQTqI8ruHjIQPi+8C8paFgKe30Yl
	 Zez8lzemwJa0KSPOeIRh9YkFuam5pNNaHe4M56U0sQVDLjf0gDt8amSlmp6LYjt/rn
	 3+UC2k9BT84iYR4TJjNzNKfrkg405N5wEDmQs/PZu1Dj+GzXIumqvbyGd/OUFNitLV
	 yEqLEGR0tSPhnETQGiedSb6yz94O3Gts91adZSTXjbvPA+VtORhiK1+0gWebwWnA58
	 h98HWkyOaWJ4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B94CEB7EAC
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 10:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177261869362.20508.8982902073236321201.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 07cbc79d5c736cc4de8044c878db0015d906687a994b1a5f33c532b1dfb14b3e
Date: Wed, 04 Mar 2026 10:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772618693
