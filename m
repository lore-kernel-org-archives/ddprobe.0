Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DA934D8CE
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 18:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761505194; cv=none; b=WT8OE9llhU3NUUys70QmA3u3pqYYYRNfbsOOQEeXWPyJoOh89Vvymx0hCg0puZiaUmtCRs1VZ+a1fN1bL04O0sWJzhN2/iQzZdAPRvGtVPb/jEKpVLc3KlJAx7UWPLeoyEGl45gXFeOE9ajSWDTL4DzyK4YptnpnxTOpJrTCWiI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761505194; c=relaxed/simple;
	bh=FP5lo7PCc5WM/wVTB1hyM+C9ZKVHd+W5qmUHG7ldTyc=;
	h=To:Subject:From:Message-Id:Date; b=SrxGRYxwXb8IwKRF89zHF68l4bl6+trdrGngGFNAR9ZkdIPYcSLgCZ+rJzmKAMCGkFCn1LFDBJw4G05GE0WkwfsM28JIy6DmDKGyCuXklerVrma4upP7fnNis5MOLRthP93pFSDe3Q0pRm0eSMFczwSeY211Vmh6viaI6ncKKdI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EN9VnepK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EN9VnepK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2A14C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 18:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761505193;
	bh=FP5lo7PCc5WM/wVTB1hyM+C9ZKVHd+W5qmUHG7ldTyc=;
	h=To:Subject:From:Date:From;
	b=EN9VnepK7FSpuoDInSmmW+Ih25yVYpvgGFbPWo9gJ4bcdrpENbJeQSUVN6mF+nI4T
	 jaMVCoowNoF/y6iFlA08HV6lhnKUJLcBJFO3+QaHUfuPoUB55Kn4+I1USuor7at0wk
	 DQgca60TyEEm0R/Akk48V4myFqqD8Jz9SLRbamfQizyjkNeV80f4uy/VyYj0ZnTBhC
	 tYIPxi5zksz2x0T72JOkNMza9JPMDV8n+Qygov1757vPo/SwEVuoy2TNo/c7S0/6Qo
	 q7NBNXeGoLjejGI/KXqAcLlDJB56nQoOzuvr4qMXggLDoT4lBc2PM1fZbA2wg0LrRU
	 +ftWmK8+AsMow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F937CCF9E9
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 18:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176150519357.28754.4961343194081404034.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 88fb26f4da45c28be5feeb5cd5e6b37254eb51fd65a1c7aa068f23a6bc72d00e
Date: Sun, 26 Oct 2025 18:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761505193
