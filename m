Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2352C30DECE
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 10:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783159714; cv=none; b=s22ihbaxzz9urd7DwwiSnrj5HMBqFw6zAqmjzwpJu+f3o7ZjzePGX4W1JOMnM5WBDOAYShc1z2zvbLr9tN4sMRU57rQj7RY+R3f8baWojeG3ahmaXbhafHoIY2XK7TPqJ1A35niwkk4jCUXn0EvMaCSIlvftnnACbCYW1g/8Kbk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783159714; c=relaxed/simple;
	bh=JVemAlPA+Lc+i313H+mWg46Y7M01oGY6DBTQwucUXmk=;
	h=To:Subject:From:Message-Id:Date; b=s0kn6vUfUu5gwPBD8kkIX8HK88DV4SeU7cmg+BKN1LLifMlWMfmT/6dZbmomYTX8z6r1zhxBkWkSXWELo8trb9xPau2/EtFSHMq3wmoyCk9hEJEQmxIHAOxaqvx1NPJPkjltIdsO/RttnmP0t7djp+urhcCjHAAItdq773Np2nU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mxALLv9W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mxALLv9W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF773C19425
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 10:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783159713;
	bh=JVemAlPA+Lc+i313H+mWg46Y7M01oGY6DBTQwucUXmk=;
	h=To:Subject:From:Date:From;
	b=mxALLv9WcNAO2w404tEeNi1LM7mYTKo53v04xb5e7r9+fr31duPiRklKbI6WgI+tS
	 R81y74AwlPnIfrMDsQRTHctIxZNcwgRNm5khrBPZQ37eqbP3vDzzWsOR9+4rSrSsXd
	 Yjn/u7AEltO8Itj5qtdcArMrT1NC1xz6FZrIF7/ekuV3fMOpaOk6IDp8HONgfqBOHG
	 ybxdL68iInBZYzoiGbgqjBkmNOCC5ekmS+684WWRwvMzRuRdoSbpYlCnNhlvYSaRpa
	 XoK2P9hG5iXZTXCE/M3Wc9piFuGfItO9HdTG9NRxQF2+2gfgUb6hn2DEdHTtgrjHRe
	 UW3XMfi6TgTWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8235C43458
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 10:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178315971368.13478.15161142954378011877.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d2a2d6ad660be403ac65be9eff1d83dcffb88ff5b8f9b3ef8d37289bd37dbee5
Date: Sat, 04 Jul 2026 10:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783159713
