Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05A631DA24
	for <ddprobe@lists.linux.dev>; Fri, 26 Jan 2024 18:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706294897; cv=none; b=t7C9CP7pQQm9zQ/7d6D0WbpGW4D875KBJIIoyDBGGnq3QspjRzcfbwbsLwOgSyFU+e1AhweoMzsz7VtknFazcTJSQ220tctF14j1vBWIXIJPyJf/w/CO8pQf/MuCZ65j54KEbfyceKMb1R8iRgrHAIYg7udyQBy8Q9tHIlCKhWE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706294897; c=relaxed/simple;
	bh=blvbq9pDbVdmKNDnQb/e5ThOGLWIe61CqMjD2c4sO6w=;
	h=To:Subject:From:Message-Id:Date; b=SXD/gk1oVkv3ckXhQFw636Qlybd9EvzezRFQg5Q4GvqPT7IO20bgC+ZiruCryoKOrHSnlT1i9hQ26UwE1wTVfFE+7NN81EwJ9eVuCVJqsOn+0yT9YDcHR0aq5vWVdm2QGkaelvh8IAI6v2iwU5whLv+COFTnfmoML0Ri8J+TTt8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BXB7F970; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BXB7F970"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74622C433C7
	for <ddprobe@lists.linux.dev>; Fri, 26 Jan 2024 18:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706294896;
	bh=blvbq9pDbVdmKNDnQb/e5ThOGLWIe61CqMjD2c4sO6w=;
	h=To:Subject:From:Date:From;
	b=BXB7F9700OMD0FNBUyUiZrXxiarTG8cbX20IP/b6XWcMnLZhoM6h/pVEQHXQLJnin
	 /ZupOUNod/sHQRsOUQuA1D9vXkLNRqakBYnIkzYqC24VfwUal2aGE5YIVcLl819OPC
	 af6uL9d5lT22qh67dWjoKwS2dchFUGWgY7DCgbvwC6sbooz/pOvRz3JQYTKw2smdIx
	 jX803MiZrdCbsAC0GweK9GuX6LWF3Ijq7fGRwuzar319FudbYcQwWY7rn4Ll/UdqlF
	 9VtdDqgV980aZZ+cYfrlemMwE00F/jAUGu+R3GgH6VEva0CKVDpuk6B8asjGBynpJ6
	 k7tSpWuu1hmxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5BA42C47422
	for <ddprobe@lists.linux.dev>; Fri, 26 Jan 2024 18:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170629489636.15270.6015163025849390090.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 423f9a6679bf620afcacc5f7fc87825afa4482eb66085209f22106bd3ab4ff98
Date: Fri, 26 Jan 2024 18:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706294896
