Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 220D443E493
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 14:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768919034; cv=none; b=EeTmaDkhpa9L/OSoF/CBr+e8OaRieAk+h4CBfZVvoPVjqHjqixwJkOCUfgjTH+7nxe9iDRnrbpGEAw4R8x+njTou05b0Bkg06AaXISuEZ3eWoHzYfbOrfwDdItVuUmJZRCBYgrTQFuqwPBaJiJ2h+WhEXM/0IJx/6jSmc7tUsWU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768919034; c=relaxed/simple;
	bh=jThwj+lNGd9l7ebnwdgEgisGLG20o3Zus4HnNpPXTRs=;
	h=To:Subject:From:Message-Id:Date; b=mQV70YLORHXI0g4bqynTsM9AtJLQ2A6v7H8XSrnWZrWgkzu39djH83VpFaozoP4nRfUAtEVhQZfZKCFcl6gzK6L9JXqEBMdhdjhdT8njNRmxGjS1od4L0cLjcaAPQQuM4Dl+opDfBLIX2NQU1LACiRs+KWuF5lovUTTK70Oa0w0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EnIvvICR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EnIvvICR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3414C16AAE
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 14:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768919033;
	bh=jThwj+lNGd9l7ebnwdgEgisGLG20o3Zus4HnNpPXTRs=;
	h=To:Subject:From:Date:From;
	b=EnIvvICRlHboO1okEp3ZNMq1/Cge5LmXLBTq3JX7T6qOOiDyaacwokkqTJl20r9jX
	 k57cVO7SE/J6WPCTLBqbCgTpy2VNlcG2pYbxS+WJO9ZdmdDqOBBR2GORoXb0nNBIp0
	 cjX1lH4TsI0PBlvWoAxcbMb6BgPUMX4qqoJ7VRaax4dYWItrPiq4IWKLMiAWbynp37
	 C7RlZXavrIh2ncMVq9YyLcy0ubZTf6X84ZnChB9pqcSnyY7etmEEyn9WogZWgK9dO/
	 SSv4N1nXuUUZeD0E1JpV4RTyzb7quGUwvdth49wxR9x4u5+Wg3EoshtVRovR0ZJH6v
	 ysEO+NK2O9s2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 905B1D2ECF7
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 14:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176891903358.3142.12062169465996490780.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f76e46af405d315f20f73be413d9731a5cfc3b9038298a6949c2eae1f9ad8821
Date: Tue, 20 Jan 2026 14:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768919033
