Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C8AB361644
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 15:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773587694; cv=none; b=cQColXnQC28oQnwiLdQPWbBXqwmNd+XqtK3eyoCFZASaiQA2kPTAIG2Aqp6THlRdqKLh/I4XU5LL03MIzPlsgohI8H3h9MVgYOqbW1m2zEb6p2B/331LVUfgJeVGDRoK9jNEOvDwDytyXkbxt+WaxxIBMyV4fmQCd58bztlcJE0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773587694; c=relaxed/simple;
	bh=UlVmiOQwLH/ZtJPA3KaA+ZZ5h2XVqVOvBnugNx55e7s=;
	h=To:Subject:From:Message-Id:Date; b=MjYn8P3x08Tdqnso5wGd+F/vOvK0KeKHA5H5mHYuaRefZNDwxC0E9FFvzlvXxGJl08CI5sUMfaFoXq44k9Jq7TvEcYr/83P23bwnaiMGXPpsjDvcjqT2dTKinZaWj9PoVe6b5yj0Oa2cdELBsDAvQWkLgr4XnHVnZXcbVjtqzNc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pHmlMVR/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pHmlMVR/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3FE1C19424
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 15:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773587693;
	bh=UlVmiOQwLH/ZtJPA3KaA+ZZ5h2XVqVOvBnugNx55e7s=;
	h=To:Subject:From:Date:From;
	b=pHmlMVR/RarOnqXExbvZwuXRANebPE6nRx+zPlsgxV4oh95QrzkjZO2xisr9VzGfc
	 TVqg8yNjV3kmYFMxkfIqmCPSh98Gg2Y5sCHGVIm5/q/f/KwFzvPRdoyE6DzhJGl7qS
	 wI4mnX6CT4BxZ7yk0g9sBzwPwHotkNjY/W0vRn65irdB0HsGIb6jDRrM39Ex59+fKi
	 LdssFslG36tV4MT80zQG5Dz44R3iZH2peCnNTbvrHntzJXpjJAuDLEXhm2umuVk13F
	 HkUvxQ+0NHGbMIiMlUnUscDm7hrh77HIRWvQ/T00HQbdNyF8WpeGczyNxsUFruiiKZ
	 DBMWPUkAOFDUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91E08F3026D
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 15:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177358769357.24952.12041313298637896470.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98157a53008147d0a7cb7e70dbb5200039a028515b5cfc0dd7e606db0d81e5d4
Date: Sun, 15 Mar 2026 15:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773587693
