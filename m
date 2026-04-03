Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 347B4390227
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 23:25:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775258734; cv=none; b=ZXjE2FkKemAtmTX6GCgJGS2+X7GCeurDjPkuypMD1CM2GgZ21pyty2PQR5O5p3sIPyjys0ylQ2Owp6qAtvVYAYg1Y4weQRkXhGbusRhS6eDwNoFT1yYhvw1Fs6/h9g7wYT03WPWrYkdgfJ/D3yunnFn/lNr0KifeyM+7VF2YQl0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775258734; c=relaxed/simple;
	bh=xhQlQmmpdtPd6NpRrmsbtdmgp17o4yZVzC4e5Ej9OEg=;
	h=To:Subject:From:Message-Id:Date; b=b96GcFxrlqDU8zPFPsuo6qXc1P9ui5rVRyxB7Nsq0JFBp3HyDKkkMg3W/UBn4wl4af4i5jLYlW3hZVsQthVv412TC9ghcYUtyLppc/zRFAAH0JCG6mtNwehn0GG8BaRAJOzCX2pPGU+CUWGZwr6poE0/kTqjWh1VfAo6sXTLxw8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OT5L+ZxB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OT5L+ZxB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFEF7C4CEF7
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 23:25:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775258733;
	bh=xhQlQmmpdtPd6NpRrmsbtdmgp17o4yZVzC4e5Ej9OEg=;
	h=To:Subject:From:Date:From;
	b=OT5L+ZxBxoZ5aiIAnWYssTK36+7LRPqK+OdeI5HVcblZQS/ReIZs7BDjE+Aw8cRvx
	 eipjmrGvjRlHAYi2woiyUQYqjWt5eqCWGmXaAJ3UH1fTtS73y3wOyAklLYeST2hOgp
	 TCc43qAY5fWiAm20Te8lRlXdghFPb7elYLMQo/eOXUEo6cefIJU/teA4+L5eItU27r
	 /UjwfnSa4mdO5s0OmJ3O0iv9scdwvxG3e8Brt2GXKNJj0lbtjEFuuO3YiQNPKEHkf8
	 FCkrWHA0qb0S7OQxqIDBvr6fZRlogaiQ9D+9a0pnZpYAxLsh/J7ee6NP9VoddQPA5v
	 AYd0s2A26yEwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF33DE88D6E
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 23:25:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177525873368.29961.12459581463589652346.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 07ee469198757fe4295b95a18ba6ce555dd3cb5ef3f944f92f49c7cbee86e98d
Date: Fri, 03 Apr 2026 23:25:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775258733
