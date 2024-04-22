Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50DBE81E
	for <ddprobe@lists.linux.dev>; Mon, 22 Apr 2024 00:50:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713747023; cv=none; b=pzu9zHBCT22DTjIVbFhJwD1QofLBZ8j8zbv0u514I51EEN/XEMNlgyX2wHGhBAB2qkB6MY1ECB5x1RHrpq1qEbq+Z44u0D3qvDyMBmQ988nPja4YAfYU5qBI/lF8UXmfvdwuj92vsz5yZrgDVGKQRaVciNq2N4VrN1uBHfwlalM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713747023; c=relaxed/simple;
	bh=jKB9Uswq3Ghw7n5NKFyEWSMcgN4FaM5dgJSgPZzZm8w=;
	h=To:Subject:From:Message-Id:Date; b=M6H+NYme+FB5mXvoDqKwV/b1yym9bjLbY/V0ifauyKJvlZLxFCtwbmrykmAnlAz9N66yoMH9cxiVdTGWe7ZZ0TfoM5yYVLOm4DnJomDweWtwpZ1GHk7HN98zTK0V2qDOHP5KvCaDUYB17Yupe+3t757hteeGQdaPbUoUVMpfhzE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sdmDmKjn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sdmDmKjn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9B27C113CE
	for <ddprobe@lists.linux.dev>; Mon, 22 Apr 2024 00:50:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713747022;
	bh=jKB9Uswq3Ghw7n5NKFyEWSMcgN4FaM5dgJSgPZzZm8w=;
	h=To:Subject:From:Date:From;
	b=sdmDmKjnPZkGFQscupzMgdFwBWbOXI9PMl9ij43XuLKtdOlRg4+ZL7mmcpF88CB74
	 g4vb+Ti6rk/4akyqfMhxgBH6CFUh2yf16+McnudVx5bUBfOTOFvzPDeNqKpH9NmZQ0
	 SN/6HcXCcaRmYvpzeVm3O5+2LtiQu4cF2knY9f16eD7/5bOKQsFFBd7s7GzC7yrQPT
	 je9Ukd/qVMor6Inysvic4LqgZiWuRVtmfg1h2ZCLu6/W4gvtFbRa+vE5yKrAWcnQo2
	 M+lqTGK+z6iu4E/ULrqMPZ4I2CIZwJLYFSzPTPjFfIMnOeyYgfoiluDxKWIEPG6L8n
	 FTXE/IFVBd2aA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C466EC4345F
	for <ddprobe@lists.linux.dev>; Mon, 22 Apr 2024 00:50:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171374702277.5006.2137935280415481786.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bec5d31cbb3f7b8082224093b1781861e5f422bf822686437a22c367911ed04f
Date: Mon, 22 Apr 2024 00:50:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713747022
