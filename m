Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D4D214A4CC
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 15:39:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760283594; cv=none; b=O/JRuMeWOJC/hVwsDY4sc2ZDvFiW8tusgksKB0oXMH2Up3dqedkhBRdbpzCYhA5DqSNNSwlPH+Cwzbnl8y7O/kBJY0CxqgkAUMDXF7fwSP1clWonEBVRxZHBccGtxxOz2EDeNk5b6T7zzbAhOXmRPuL2bF0yEYLBZfyLFRu7Vts=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760283594; c=relaxed/simple;
	bh=+sfEJR7r41B6KBUhQzzWnBwONeN6RvC08NiSgVQ7epA=;
	h=To:Subject:From:Message-Id:Date; b=Oiduw9gmSwFs9yT0Ui0+BGlVE0pc76VHqy7JEUaOHJxpFqkTvzcOxs56+jjReZBbwlzxTv7PD1QMdtULqnpjHZxCq0hC1zvN02PY+FBQbN9+V8ykyqLsGIeidc4mM0Yztzupy8Jmp6qbQCFAJdTauKaCLntoy2xL1jhFZESYxu0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LmCDcgq+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LmCDcgq+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B45DFC4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 15:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760283593;
	bh=+sfEJR7r41B6KBUhQzzWnBwONeN6RvC08NiSgVQ7epA=;
	h=To:Subject:From:Date:From;
	b=LmCDcgq+xRm4Rj+RUByhP77RDOoB/TsdIdi/1h+xVkjTlEMp6lf5/nCq3Qme1zJXR
	 T9Q9iSNoClyqq9ehvUQWeSOE0/TjuDQl0DKfjUnwxcxPlR1gkw3y0hWf2stkFYp6aj
	 LlilS6U0cROdBowUoHUoLpo4PB2DTUBHLtlCF81lyt3IxrtV/XL0S/hA6KXI1W9npD
	 ixLMZvHRvCbwzIWvArccB2iUtU0qRrUbvWzZIahXBqHLTnAwST5UhxEBKUaMq2UQ8Y
	 OpOVB4oWvg898LXu2eaeNgN0BT79Utt/I4p5mxGV4q8B4Iy0eqArK9IHn3QyON4uxw
	 FOF59lQscgjnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F17BCCD184
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 15:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176028359358.19912.10141486754740576604.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b4a842222df8e6c53fcae1dc1399fde975e2486deb65e7934f25d66e9e44262
Date: Sun, 12 Oct 2025 15:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760283593
