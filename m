Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00E1E2F547F
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 15:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773675894; cv=none; b=lRZlgsAB4+L8wWZQFlqwEQJwfOQLWCNWapd6c14mhiMZ/xXBZqI120EzXhLc/bb8eKwCDcUWPhYd+yBJb/yovHBhT+OrcZVo0Dtb+Bq90y0BJG1lCzImjYKuc8XAetL939rPdjRfpsxa93eqSbOL8eFQbLzEhPVbdMSs0LOD3MI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773675894; c=relaxed/simple;
	bh=toTsxZi5xq17DTu5mj+bY9/xhCkEJCSoUo6axVD3wKw=;
	h=To:Subject:From:Message-Id:Date; b=bB9vpnPwZZ86ZoGPLTYK4hLUeJCC6N+9kDilA4Oqv8eGJ8CJELNFXs3zz8oQSVwi9kf5QkzX9s5AtyEWjT/tmkBZ5AbrYMetBssxG2gj97CWSEPcsHHQW2ixrYZFvz+26Hk56VcV9cMYXUD/xV/YX+7hAkBfCTspo6i3gBfYnqw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ecgsla31; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ecgsla31"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FAE4C19421
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 15:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773675893;
	bh=toTsxZi5xq17DTu5mj+bY9/xhCkEJCSoUo6axVD3wKw=;
	h=To:Subject:From:Date:From;
	b=Ecgsla31qKQpsalF/AEaaGWl6yZeK8dAoJq3dB5vcWHBLzMCQHMrYlwkBr90lGPcB
	 gHJcgpWFQQAgPHxfUMe/d2eJrYf6GXrABlkT5Vx+cxBirwjXq9c8c5MLnUC2WdMXLy
	 mH7lmCfwkVk03RVGeHwP0FY2Dwsw84W3ftSH3Cv+AanpaI2ckB0JhgtqT9DVmTeTUT
	 ztrmXoQ7uh9/tXcZXmQ88RRCj03Uws4qsY6PGlgVyTUDG+OFPuy1GY8cCJZrg50bw/
	 y4vwF5Xeew980BXocStQEgPbHXMJJh17SASClQku9ZltUKx5dArafzUqEANh7zUBGz
	 95/N7z9bC0gQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF81F53D69
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 15:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177367589357.27468.10980944912981961561.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4da6cce4fc5e9e025f484b500ab34f5ba99aa94bcef3a1a7ce33c556eca05644
Date: Mon, 16 Mar 2026 15:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773675893
