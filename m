Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 324F122094
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 00:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751330394; cv=none; b=MgiS1HLqJq9iggn/6XnS1NiMafGzMxsDzbmr5Q8jBRDdxZ82a6+wgc10Y302YbQNLPx8ykZ1JPGEs09oGZfadtgyQu6CaFAdCRRxA5JcleAU1DwCG9uXXfmLIU1o23DbP05nAgdC7+HvV4zXqjRoHqsETc0c3uPBsF6/qg9F7gk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751330394; c=relaxed/simple;
	bh=svLYNZktwsZuMiRs8siZlX4ySkXXmIxYz5b22uC7E9E=;
	h=To:Subject:From:Message-Id:Date; b=V/blgOSfyjXVt7X3YGXwek+YZ8gm8xkCFAMpoW4loavYe28IzB0ep2Cjh74XnrtPieGwiGC3IwO0kMDq43VklSTDVdCoYVZPPFByyvbqFh11MKl5IP+rF7ikroqEIOUTtpf8FMFolm81+bF7cNg/9XBOOCpPXDF7S++ADmvSKxw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nWcwr4hQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nWcwr4hQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3CC3C4CEE3
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 00:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751330393;
	bh=svLYNZktwsZuMiRs8siZlX4ySkXXmIxYz5b22uC7E9E=;
	h=To:Subject:From:Date:From;
	b=nWcwr4hQieNqa7skdNPCBaPM29S03bGHXH1gRLBD+idlMT2WZqLh6lmih3pZSUtpf
	 K/45dpTp5sZMciHgcxjRPB+h+7cTOQWILPCBbCvfJhcnGwb8YK9jdXhDzE1+IYflmX
	 koQ9eN9We0O+dg76Yl/Awcqh3uFmJPAZthVX5C2UlL9AnRfjgtC/CQonpWcuGKs2NA
	 dhZjyNdlzGaTeHONIpHrVp4rQ2rUHk3kN8GPbj1IfAibppLvRZXws4gfyIWTR4TtgW
	 msgId+m9Kt5/8V85K2rarmocL+DhtQUncoS+RLTExBUEvp9VNzVtxpOMX5DL2fqb1d
	 3iIO9c3T6ddWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 919C5C8302F
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 00:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175133039357.19607.552488452989347876.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d1277270cde96d9841fc4a858d7fad1dc7b0fc9cc92351aaded4952e7c9a37c
Date: Tue, 01 Jul 2025 00:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751330393
