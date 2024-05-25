Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6FCF9208CA
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 11:24:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716636263; cv=none; b=OTcwa8qMYtcUvkMrig/zp0s/zq5kS9XUBmg4lqGsha7qwIBNyYIv604UvXEWLxFykWz3KfC+rYbxSKEWuGkBn8zGccp95BdzPtt7e7LUM0htDqVwDnqp3wWc5R2zuRqTgLjXyeSrvgim6FgyW6hsdSx5Key2Ygn/3z8QlKTLSDY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716636263; c=relaxed/simple;
	bh=PGgrWHiyPUaIOfxy/WpkRGRlFBZx0B10jQ3T3IHuGFg=;
	h=To:Subject:From:Message-Id:Date; b=jWbwlQuw5lW/s/vGv2MIT+LoP8DQq2saV7puOHXFzZdmcYairQCtvkmzzXKSECMXVIbk762+EP4EGnaRcAaJj2Glp3+OkGBUOZYAcZrocPt8eG5lvlz5ApNG6IKyCHgHr1RDiIRewXhmhEkqnftBOxhgTE/5bS1jXShezAGNq1Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ieTNWDI1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ieTNWDI1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF80AC2BD11
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 11:24:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716636262;
	bh=PGgrWHiyPUaIOfxy/WpkRGRlFBZx0B10jQ3T3IHuGFg=;
	h=To:Subject:From:Date:From;
	b=ieTNWDI1zuTCM2gvD1yiO5U/v9Gtf4JSlahkgwfJ97Y7p3fwtq5FBY3gDGOuTgU4a
	 ol7FXz4hjIqa2GSoSIoonngbLIDen2oASaeN66iIrlHLBKOF3oh7pfk9qbRS9XwUwE
	 VOUtSv5JBNW3EaIspYM6CUjFjNL+CdhDvLOpI2CuyPe/1odnfAglNuz4Tfxhl+HP6H
	 Tw7vUprst6xnHDKdVVlTCVavuqbxss6EnmLkWhosXF0cJxY+qXv67W155Sflpu+4X1
	 1OkRA41T4CUJI2aGUsROwyyFuZh/WcBUu+9IN8s9axsxefw7de7bXztITYDwQvPyz4
	 34XE273HUcwQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC02DC25B78
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 11:24:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171663626276.30048.5377484778038978748.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 64775ece7ce4a816e1073219fdd5ee29b59027c0d5ad42ad0b82cffe3a49c061
Date: Sat, 25 May 2024 11:24:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716636262
