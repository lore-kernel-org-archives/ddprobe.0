Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04CC539AD3
	for <ddprobe@lists.linux.dev>; Mon,  4 Mar 2024 11:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709550497; cv=none; b=PMhieVPNcwHu1CdM4/THbbRbThL4J428ohY95qjs3SL/BsOL4kKZmncIkp7MgDuO5M71biqBwtT8ZYkXCqILm3vEDQcQpy7PZ4sVIhlpqZOkQO2hpLNlgRk5MfNXV4goPKtMUHIQaZ5p6qa08evOZ12KBK4epxpuEVhhYJzKQUg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709550497; c=relaxed/simple;
	bh=5oe1lJEZK+SgMQSdpm0na25bvJ75QAikQeKtax6nN6c=;
	h=To:Subject:From:Message-Id:Date; b=qwdjrtJCh4ipOI93t8zBGrtOqh7Bi/wGB+GKJKj5eimcv5ysICM5AtItYHKc/J3pcTvw/sxmHYuUjwRCmy7abK4jkwg19IBWQE8lsGX0NPSxNHuw1/Dn5KORTbaQShZqo2Ir1qRFjUcAnyWoKMzNkoVUksZAKvRWQwtwKASvBu4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B7LxSRAg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B7LxSRAg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8A440C433F1
	for <ddprobe@lists.linux.dev>; Mon,  4 Mar 2024 11:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709550496;
	bh=5oe1lJEZK+SgMQSdpm0na25bvJ75QAikQeKtax6nN6c=;
	h=To:Subject:From:Date:From;
	b=B7LxSRAgB2e/EU7zgCJ1UzrkyAVJSpcNlJB+Vc5IOQ44n+zYNiQiO2Jfl9faX7mem
	 JzA0aoqFgNZEDF89sFwSBJiNSM9mGjOVaiihgUBm1yDA7Lp2kcbhS9K246UpPpk/01
	 2jXAJotLjaAP2EP+IBhLsHGV3zTXknTPBN/vJbA9/5ZFpfMv9ymvhPXFpAP5cyCc1u
	 C9VZNTVWbieOncozlcSOojmKBtj1+eEOFQpOUnoWMvh2sFK8IPEgs7mI3g5jrg9dui
	 27/XBi8CSvm9YMjvAQoOppVRKTo7xnh2mv8CtfbOyvGxSWuxfWf+h6+ofwlu+sECwP
	 CQIsvHPT2PAWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68654C48BF6
	for <ddprobe@lists.linux.dev>; Mon,  4 Mar 2024 11:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170955049641.8026.6778163232489639063.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78cc1774cd6951bdd31537d4ecd59b3739123885fd5e22e712ca1a9f18b5efcf
Date: Mon, 04 Mar 2024 11:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1709550496
