Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D93A3D47B8
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 02:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790647234; cv=none; b=jLPAM0yjZ06o+A1N2ws44Eujzn7nZ7LAhvW8w7eBvTbFlR+G0nmYcJvRRME0pIDgCGhR2uyuPg9QxRlGF9Xe0oDHPZyBhhpp/fP7PlN0cdL/DRq37NTwPCvJxP9BIHCbtK0kejJesisYpmv9BRTkgtI9tAnyWmn9V+ez1H2RGDI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790647234; c=relaxed/simple;
	bh=62j0JNLqkJa3xGc0qIwqsujRSEiDO6Kqlzr/LhYsr9c=;
	h=To:Subject:From:Message-Id:Date; b=IUoJO6W2vcpkek/7rFX84Xo/ElwwHm0GwgkEqtG8iDzeGXVqhmKSDV0WdsOHESjIwW3/2AY5y3w+OIpOjKY/dLJYZWydqGy80eSnegfE17rGlZlqaTmZAT+s18aZIzrYunishFcFxFeK6Yd7AbRuwGt3/EdmmAJdZvcZe6SXPhs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZScFuM9k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZScFuM9k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA3ACC2BCB3
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 02:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790647233;
	bh=62j0JNLqkJa3xGc0qIwqsujRSEiDO6Kqlzr/LhYsr9c=;
	h=To:Subject:From:Date:From;
	b=ZScFuM9kRVlJClEKwIDnGuqEbqRcAVFr9rerF7DSQjRBBAf0szEASn5negaH4xkHH
	 EwX33L1yYi9a68TtOl5MqO3+Ga2ocRH46dSQnIiARPuD8QTbjR8FJ5H4pj+ZhiuIrQ
	 cyToVJDyT0rtqN+JmZxYpncY+lhaTEHfch69OSSQ5QeCjAHdMcZwASR8d9Xs42lq9j
	 JkYIA7p17vZGFM33uh6qf2plTg+sEgHaBvMObvOfVMKnLpcD2BpCRmLHUeZgUcpTlN
	 I+zcV/ZOD/mqxdVuzlxuFt6hwTybOIyXEKbqEkRefzIJ6FJAdD0viEtylpkpEZroTu
	 7tz0a55mmlbzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B561DCA5FA1
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 02:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179064723373.9941.3523413797122973623.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f97e5cfe76b304da8d4939271f23f3bc380e6651754e5c6a135497dcc23199f
Date: Tue, 29 Sep 2026 02:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790647233
