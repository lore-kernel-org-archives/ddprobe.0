Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D8EE2E6CAB
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 21:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764883374; cv=none; b=IHxIj6omQCfwANCt4kcIz3wc0fxFVW98WNDX/KWHyW5JOi+PPOX77IHdEQVgRUYgX9bZHT7PxysxRWj/8c0O/8TdPh7EOIoclg6jh5q0fke5LjJr9N57/n8ODqu7gw2AOsHLsfLpLk/V3IFtqPx7laEQVlXv63DyqPvy3dmIYfE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764883374; c=relaxed/simple;
	bh=hOU5BETlgfbTOCHT64Sv9h491LJTP0E00OP/35LLn/w=;
	h=To:Subject:From:Message-Id:Date; b=lCTlusqTIxWwcW5YXkpCwsY5G9VvrVUmEA3W51SFSuuYiRY0S20Vbz2Tfp/MsSU3hqDHFYzB+FBznskBnbqXELD+uiKzFwbpPG4mJ1Q6x0+qnmWmVAgIhwoaONtqUAJRylozY3z+bmSTKHflKEcK/AxYIEBcR1IPGIfKdxfY7qM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BSrKFShT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BSrKFShT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A65F0C4CEFB
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 21:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764883373;
	bh=hOU5BETlgfbTOCHT64Sv9h491LJTP0E00OP/35LLn/w=;
	h=To:Subject:From:Date:From;
	b=BSrKFShT28yw3L02EJKO55mR9Yv97WFm6QMh973+bIiG45BR44B1j1L4+ektO/FlG
	 3c68d4kTbjd3olWbtq53D2zYE5NgW0bMNPCPR3oWnP2CIb5Jw9GTY4DWPaL9NKWe7O
	 p9oZS7zMPMr8jrZtRDz7uVDsheNvr8CjBZgcie9o6YwVVZ2Vm08h0YeawBa3aJrApm
	 Yy24u98mboiS2RugdouDDxSejlFKUq0ZHB3/yajq0Mj8q4sMtl1FiqHI3IEfc68y92
	 V45T0qJD7WsQmi9MYnmRJc/fGapiMaqKEMXavnJBnyf0aKgr6mQUHArCRRaN2iXV3b
	 j8w1hy7BfVIVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94F2ED2A532
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 21:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176488337358.4178.16251035623119917338.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4740851ef7a9412e0177dcc0e28aefb5c7dd07429220c72ce3a7d5018853a7d3
Date: Thu, 04 Dec 2025 21:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764883373
