Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CAE234BA5A
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 00:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758156595; cv=none; b=sLi446BXrMlt7d56G6ZPOvxefIJQLUEA4ft0xlbpS7CEofvy+OQrHRAh5TGsEcSumkUlQ8yumk3gYrkdZ0Is1W7q+F8/jjYEeCuGqaUosW7Z+70DuElBQQPnvMTcOikfxvZplsGGLymHhL/JVhdRM2GKvNwrgOrDs1C9Hm4juKU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758156595; c=relaxed/simple;
	bh=ni1V1u06tEfO493w8UeOrInztWi+lnh4+chTmXyd6GA=;
	h=To:Subject:From:Message-Id:Date; b=ZsWivy5XwWQIxcd54sQhMx3SmKezjUR+asd5g14O/VX8ObLRTYMoavPNPfySEeSZHWhjBn8b1co2hYRKGkfYzZer+quBQQ0yJbAi4F9JchObmM9NW9cf6HLEKOfHKA5oDYiXFvV807PjAJRfoOwCz3kzdKXq91spJi7ubzdE1BY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EXM2z/5Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EXM2z/5Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E8DFC4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 00:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758156593;
	bh=ni1V1u06tEfO493w8UeOrInztWi+lnh4+chTmXyd6GA=;
	h=To:Subject:From:Date:From;
	b=EXM2z/5YaPBelXn0d7EzNK/wuled3PIV5g6JKXXLMxK0mGcftyh0eCGBZW3XyvZ4y
	 A2RqJAaLdmakFYqGRWf0uIFFs3ksrYL6JlcxoIVqJvWtzCffSzSGNgfwBczvM3mBbc
	 9PXAJQIa0QWhjHkCt2rmcKC4jLyFxxvzHnRE8LiumSQ2ONjLSv8xSovQhpn/SR+gAK
	 Z00RKbVm6ZO8EJt9FnivRtGeCzIh763PR4OzrzSi7NNKX+Uj0DmjEvDPmJuyVybnpo
	 pLp6OO8owlpIVNztEDTg6PBRJ8YHZZZfflnwvGpfeogZhpFjElXlef7RQP9GftUScs
	 uCd5lKpbQn54g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F3A2CAC59F
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 00:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175815659357.10703.5188862134077258572.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e0c41d3fccc27f828a8f357d697a4136ffde5b590c09e5eb4b1389a6c77a12c
Date: Thu, 18 Sep 2025 00:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758156593
