Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 314681F874C
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 02:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761099594; cv=none; b=O23DN728A+y6hLYZcw0YcukLQACfMdAtWiQm+HZuuK6DiQSXDrG2zGN1YocAOdyaJu35EsT7d32JibGvHduF5KQwSUUDXcV3JHxg/ImK7dpcaluG7ltVpxLDe5eF1wOtq8V4J02eAgJQd9lCnp8bNwi03WS/4WgGF/zNnpz7r1M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761099594; c=relaxed/simple;
	bh=OzqMYPWKza8X/VE0EnpA7X5jTm9GstpmEus3AA6OOX8=;
	h=To:Subject:From:Message-Id:Date; b=S37tbYWcOEaPNc+bxne5si3wxcdkOv/Y/koFXDYvGXSsptxZoXvF3AuKD8+uUm561BacHSeFrzHIBxogwpqw6SsSuX/skrMA62tnc9Qwey2VJmuxj6YgouV0qjukD/orLqiJaitCqQoLKq/KjJeS/wnpr2Q3TUVSRHbA9dOTgL4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FuQNNQZb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FuQNNQZb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F5BDC4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 02:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761099593;
	bh=OzqMYPWKza8X/VE0EnpA7X5jTm9GstpmEus3AA6OOX8=;
	h=To:Subject:From:Date:From;
	b=FuQNNQZbp5w/sxW099ECHFh8wDRkWB9I8a8ZtZjtTqkKFtuM5FELHzcdCkAHCacTz
	 vJ6ItNLPmSX37OuFlg8Xb3K+2cpJoV9K+LDd65EomXNjBoC+5+CTdC9tZJJ6vU6Ywq
	 sq0/5u3qlmitLyb1GLsglRjxBjGWHuv5m6YbVbgQsPTaK0FMhiunmT1f1u7LJy686c
	 /7HCk54ud6EHo88lP/iOCMb3vc2UJM1wxP7uiDP+gGNPffJLpMDoeSexlfK015LvSP
	 aeoOyiuluxxwP3pY6RktJgF+FE5sktYdeL+jVZlbEKgV4Q+7ebCDKwfifHGZvw0Ofb
	 CHfmJPjke7CoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F370CCD1AB
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 02:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176109959357.9561.1898820141070470206.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cffa127f5342e3a157b8a84069ac32e117b08c54bab312c411d6b5dd266bb365
Date: Wed, 22 Oct 2025 02:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761099593
