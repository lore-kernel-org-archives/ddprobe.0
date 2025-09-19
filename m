Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24026246BB2
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 05:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758259794; cv=none; b=ZnN1cfZR/PVKh6hLji9fWz0fkt97fzmgH214yPHb6FA/UBYrEHUAGR0nhTZG5gprIV8oAy+lKr/qrAy3eH4WtBxErQ3xH7cRV428/yH+/Zwz2xc7erZppAm7wbYeR4l7CCVvNDkPIs9i6aGd5SuUcZBl/BISTTlzho93BVmO2ZQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758259794; c=relaxed/simple;
	bh=f3WyyAs+yb5jRqKraoQpCutGyt91LB+ZlibXy8VsMPQ=;
	h=To:Subject:From:Message-Id:Date; b=Ar30V7JI+o08kvI1LRLd9SB09khMXXLSvjLfNKyjn+Fuyda315OMEm/nqgMw17h+F6NZDf5Ct+IO9QcICeJRIPy/hpWjN8iU8VvVlc+JaeDjFoG7AFnNLj5spBdiFK1ux9VF7gg0/zAu6CVM8oRBTDygXi6frD7elGRALmoeYrY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tkoYZTU2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tkoYZTU2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAE02C4CEF0
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 05:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758259793;
	bh=f3WyyAs+yb5jRqKraoQpCutGyt91LB+ZlibXy8VsMPQ=;
	h=To:Subject:From:Date:From;
	b=tkoYZTU28wMFHD25i31Q5VQQ24ONt+KIJXRq1cYiHH0AXkQLoE2LSYnuHvzJvPFoc
	 EvtCjEzOlW1rfQ3V9ncBWqJQViP0RYKREDil/6IrQy7c9GxMlxKQqHp2Vq+KgUm6we
	 dYTWrbgxUN4UwCP3z7EnDRe85x1SMR0tJfYmGslm2+toG4OIWZFm8HFXPBnre8exQM
	 zxd8es/p/8RUtQJABi3/0590xnyqvV1pVFIrOFvr5bn1vQU/gpwR777/lPC8117bZ5
	 PmaJ2de2q4aTHYCGzmFDd3f8kNF31SiU48n4s3wZtp7Psvp7nH/6p8fRLYW3SdSuOg
	 YJtigw1d5ZNcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95961CA1013
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 05:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175825979359.11945.925602379712042731.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f17839426891455f32e5fbe0d1e43e4dd0c48d7d5e710634f19556b87b1b526
Date: Fri, 19 Sep 2025 05:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758259793
