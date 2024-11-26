Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 532D9196D9D
	for <ddprobe@lists.linux.dev>; Tue, 26 Nov 2024 12:15:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732623354; cv=none; b=A9iNFTdI/pYYCM6aufamXCMg2xYjrO7/kd0MUgO8TigdPDOjzEO/7flTo7yHUjbExGUAiyhRj5ICeTfuciLQPDVfB4/9zqK6OCmll3HscHj8XYJm4kXVPh24yje3VhvILv52pumr8zlJ/PGvHLPIsvWEHLF3cd1zAe8JiUN1N9A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732623354; c=relaxed/simple;
	bh=1rxJN5yAti3QxtYT90DANjAmMHyf3GqtfQ9Ydz0uSHU=;
	h=To:Subject:From:Message-Id:Date; b=MXpWoSUX7CkxJW5cfL62YBiceJrdRc08QU510mcZ5J6Dvs8pVsJYhwlBFJxrT/LmSVIncMA16p0+jNsSFGPli97OfxA1DAxxPLZhiyCB/yrXTJsxOaXWd/EUSYKCJQA4XW6Ja9fCPgMhU2krFcg9j7awlcgb3VJLYNHmtyOBFx0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uqlyLm7N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uqlyLm7N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA242C4CECF
	for <ddprobe@lists.linux.dev>; Tue, 26 Nov 2024 12:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732623353;
	bh=1rxJN5yAti3QxtYT90DANjAmMHyf3GqtfQ9Ydz0uSHU=;
	h=To:Subject:From:Date:From;
	b=uqlyLm7NULivxHvi57RKQJIguMPW6RynPxhfvxbfH5sRrGjV4v/z7XpEKo7y0i2SV
	 6+Ext93VZprsoPXAD+r2H+eHPt0eIQHFzki8WuMnO6NlyTjnP4Ue7dcGT2jygu6pbu
	 CDkQ9W9LQp8ch4FkdJeyqbff8KYBgH7REMDuT8oVwdvQupHdhbXcNNBoj4s5kdW0jS
	 XIGhc8wjIIqBB2nb99wltIyTKfs8CDdD34m79C5HUUgvHVBW6n2oiE5Kwnv5dtDI8A
	 3kkvEL2MIayKoghJMw7s6JyTEwPlsPk5CMPkpA/9GUekF2ysO5YC7CDfxFkEaSFc7H
	 uW15QFb1b+h9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC31DD3B988
	for <ddprobe@lists.linux.dev>; Tue, 26 Nov 2024 12:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173262335366.8489.14873200179303094137.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb1d776cb7e3c4acb869f39218f8f5022ee97bcdd0fb6869603e964f19d06e6c
Date: Tue, 26 Nov 2024 12:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732623353
