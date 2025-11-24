Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 724FA326957
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 19:42:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764013374; cv=none; b=M9R8MBI4faZAOscNUUdaewh+M5CsiARPVyasrnnAqjBpd8Wehl1hoP2kSji+nLstYWmeTo3vV4KEZsC51OEynKZPdKV70kiYmUInlbHXDHiOO8QRIBeZGL0o5tNsqoi2eyryjmWH7vLGChbR5UJ9ui+cmmHZkOV4BZkurTR48Vs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764013374; c=relaxed/simple;
	bh=1cedSI2cU+7qQGWferfp2JSeCerNDTYGJ3b+/Ko2B9I=;
	h=To:Subject:From:Message-Id:Date; b=k4QtWHPzncYZai6kqI5q+jNamBOQKZ3gBxhbyiid/s+RostMcQ1X/kR3o92Av9Lw+9XLRM/JPOuu9uBWyOkHwBat+Mzs4kKbbZBBOTjztTFgI5Bm2s12wZQ16c/htOmOTFxWA35uqcTI2/BMpY13Nzjt6r3Tbxk7k8ySOPu7pdg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uVNmgsAc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uVNmgsAc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3DEDC4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 19:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764013373;
	bh=1cedSI2cU+7qQGWferfp2JSeCerNDTYGJ3b+/Ko2B9I=;
	h=To:Subject:From:Date:From;
	b=uVNmgsAc/XcB1idgZBBJzd9bbQuCrUdYgDG24D8VwHhCt5b/1fuJO44/VIOBZJscI
	 CrO/E5+PKLq8n1q7nq8ZQp23s981CIlgzJ2mWxF1kzwicwyC0rP83tvje3qgWtcb4B
	 4JRmgnJ/CkPkLZGhmf+5FGxquWBRrD3DeuXOzd1O1wqA9zWfCwuDNR9pLceczS4tVR
	 By/QKtRG3uJNYAxmAu5g0xFIkaEl6S1pfPMs8Kwh9l2pVZsiF1q3cq4EJcpolkoWqi
	 b1ZWInNAAA3hW3Z/mrQYyvkbTktmEArKtxDXeWW0zN4oE+FjymT2/RXu+CdD2PQwFs
	 fdKq4Pthlg0qg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91245CFD354
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 19:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176401337358.19039.4797861002041530801.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 63c130ac9d2b2e4ace9f9ab85480812531c46a6f4d52c2b8e4e1f8c21c143880
Date: Mon, 24 Nov 2025 19:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764013373
