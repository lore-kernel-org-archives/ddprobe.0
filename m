Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D37DF21146F
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 17:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744048793; cv=none; b=X90mp+yfZ25Lypi5zGXlkZ7wcmMKUwhtkqX2roHtaeTqT192A1lVwZMgBMEX2y5rEAVFBwPn+zwR2mvwKmXymU47q15bTrKnKqMVpFrFFF0NEi6DqTxxdH47Cf9X7U1ikASOm+EJoYzSCsIJpuRfvBEvM94OOULyxoKQKFOgbf4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744048793; c=relaxed/simple;
	bh=odPGIQPsGO5FAdGUVdhFSTOJJAXFknYBdHBZHX6mV2o=;
	h=To:Subject:From:Message-Id:Date; b=nP68/eC6lXREOodtlLLMWOyEl31jDoNyojxgwp0AXlIgqQyqwifnfp1d9a7m01Bc9RTuLgnO3npJb9ZUNxT0v5B3qbInezIkvDU7GQOv/hESl+LIPkL9or3QxCKin8KT+DUXd28td2mnd70+vg2sa0tShJEHZVj4jpH/feIHvvM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iELpJQnr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iELpJQnr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEB59C4CEDD
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 17:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744048793;
	bh=odPGIQPsGO5FAdGUVdhFSTOJJAXFknYBdHBZHX6mV2o=;
	h=To:Subject:From:Date:From;
	b=iELpJQnrCBecpqd1ORJhOAA5bLH4hVYG/RIgCuJwHgZeur3M5qqKplvMiSlke9JRA
	 nHF1xz+nFrW/uosXx4LeWRkkgcZIqwxYpfdX+9Iq/TTVkrkZgnG4dk7hy/kEwwEbjV
	 VL0dKJA7rScjTW3YvmIigXfq9MOGyORz3DRBqe5C59glFiWXhwzUm6OWHo91ZxH2/2
	 pg7qlEl25PIMKGlLIpgfWSfkTxYAuu7S1VF+vnVEUCYhWuNhBnbPRq+Eju8y0quyij
	 +miL091ltbk/jFXemG7LzNBGNLohdk+gbyrBdcdZmxUZn7LVD1Rca1c9OyJ33dq4rD
	 bh6orKD0jETOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A4D0C36010
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 17:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174404879359.4419.12029465361777521734.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b063bc4dc8b0bb4498262d67ac5cf352a5d32d510bc07f607e392734a313133
Date: Mon, 07 Apr 2025 17:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744048793
