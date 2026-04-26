Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2667523EAB2
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 17:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777223254; cv=none; b=d4n4NYkepklIkqoWpY1kO2yu0oV0sV5XuYNRj4gtZ6DTRwmr9hD1ouIpca5URepw0zQTWCYOC6HVmsYRzUzESv8YNvDRwMMUAxOIDzUfcmh6VD+5eFHPeR+GCZtZmGc6nXpiXjB0mIwrCmaRZTzxgQ+4wvHyRfs8yjKJq/PfwEI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777223254; c=relaxed/simple;
	bh=O/NQgwi0xLqE9ruxnLABo8OZerMR2NNLSmX9Tpe1mpo=;
	h=To:Subject:From:Message-Id:Date; b=qvoAOBMhXWFOBRe5m1Fm+yQPXwWL9c4tlJbNQwh3Dq192DtCkMIsFho593RSI65dupiYROS9JUxp9eCRpZz9A1xliQbq43oGiklBdxH4ZIGoQK+GbEfLYh32lhnLIycYU9UoJpbDolzBVSePzFHPfJ+vTbqV9BghN+ndXdw+NWM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B7ug8gzr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B7ug8gzr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBBF5C2BCAF
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 17:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777223253;
	bh=O/NQgwi0xLqE9ruxnLABo8OZerMR2NNLSmX9Tpe1mpo=;
	h=To:Subject:From:Date:From;
	b=B7ug8gzrwDNmu5jJ32loL9hRAL2cmnj2XTb+V+QWYY4XoVQBqaioy3t2JSX+exkEH
	 lDqixCw2SlgKcjmeQpmolItSWRH7kN7T/2NI+wIXcYwh9EKFCLR8GAhNVDIRFt4O87
	 TwzMzKXrDAWpmp+9/U9kEFHRKZFxoSn9EnSQqkVO//btabAfxHb80EhetjaJj8Qf80
	 GpNCCOuse1NOikItCzMGaOVzM640r8aXE4vwNVwID0QgJ7qJBTpNMNuJc+5TZ9BqSK
	 XuLk2LzoljiIHbxcKgBGup45cFBwCb08OKiv1LTetqV17Au9xnK+15dL4HMWlrlZDf
	 8o09iUaE1IYTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A930DFF885E
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 17:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177722325368.9829.11830018137559049331.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dcc7fc277e12a308bc2c314f7407ba2b020b5f5246a74cb717bcf13635713872
Date: Sun, 26 Apr 2026 17:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777223253
