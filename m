Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30E692153E7
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 03:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756697394; cv=none; b=o2/Iej5dVk/0m8fsEBk3ydlMWnGdgO1vwT0DbkzZNCMvm707cogVDJN3SP4vWlV+ce+fUZTLTs+ITbKRU9va3fzejJK+kEAi4VRwSUDWFBLYbLwSkyZsBu7tGWE7vjGOrIWE1leYk2uWNEpFmYsAg67jgk+qSw4WvZMwahhhD3A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756697394; c=relaxed/simple;
	bh=AZtuYS49dsedVvABSmkE/yGppcxruOQmKbo2d5W/fNw=;
	h=To:Subject:From:Message-Id:Date; b=fxxqV7OCHYwpOAtnwF9nMgOXFisFZ+YipNr9+cjZyKRHWIbF1G0x+kmJkdM+jzEp2vDYUIJ3kefruVl3Lid3xumGLc9GHs6h13/lv9wKnqoDisy+VJ+YflogDahRcgLt4I6hmenxXobIP6KwKXtoThQeW64mil4j5+MSjF35H2Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HsuM0ZYl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HsuM0ZYl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A20D5C4CEF0
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 03:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756697393;
	bh=AZtuYS49dsedVvABSmkE/yGppcxruOQmKbo2d5W/fNw=;
	h=To:Subject:From:Date:From;
	b=HsuM0ZYlYjQByQlqIfgGRb229Zn27aG/nZrXY5MiRm5E9LvCUqBz/yHbbOxvcoyKM
	 9vsEfbTrRfAHsMf+ij1QQ6TPFCs/q023fAZqisIxbas5a5ZdSxwbYOFVjIC+ribIvb
	 XN2wLvMtyoNa9w64isU+zVPeyUfsTlFZqhAXQ4ucS0j4+sUi0sHKCYHnJ+TElViIGL
	 xLly8vct1x+AtBxmVF2TZcb8mUEeXrl7Q1F5s29gOAmbZucMOzoOvXjdbAWrNG8vSZ
	 WG8Tq67zX/Ycsm5DmcXLfIqXYznzIxEwC9CKItcqJFEcxffXAuEKw2a7Zs3Um7h1sE
	 8tLcD5/P+Ypeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E3BACA0FFD
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 03:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175669739357.13695.7068142574463910423.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 305704dcea69743f80db70ef00fcb848f20f9bcd28947d1eb599477e959507f2
Date: Mon, 01 Sep 2025 03:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756697393
