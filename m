Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5115938B
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 03:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736652954; cv=none; b=ZUF2f6KDVNZlTGa73n62cKwA0hT+kHQ5BhiV/QiYyRiKkmg3GtSaaWFm4q1JQaG7dJpGroJ8+x+23fRo8fzQpA87OoFJoeyINQkD7etJh+pg3p6wa5GsOPK2XDjt3qU8A+2Dg+oZBm0AoHQz8sB3yWAGKcfnWQHK7w+T/C0sALU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736652954; c=relaxed/simple;
	bh=vZa2nM6bALkehrMiL10vylS2lbDH07BLiM86o07ocRE=;
	h=To:Subject:From:Message-Id:Date; b=iwAlgP1zUiTBGE1OUMcQiuPVS8dqI+HJ/y27MFo1bHeLtLsRgAkKz2g6mGVMleZCO8tQQO93SnnpBdJb1aLnelCHgHsy5nfjqLeZZ3AvArVfGfT73mHa4hoFX6wrMNo7Tcd0mUMFITVeQhLj1H4aUAButkBrumIQHP6/ECfT1Bs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c7PcfOXM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c7PcfOXM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B39C5C4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 03:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736652953;
	bh=vZa2nM6bALkehrMiL10vylS2lbDH07BLiM86o07ocRE=;
	h=To:Subject:From:Date:From;
	b=c7PcfOXMoTXCowGiC8my3y+PZ9wWV3pTP8lZn/WbsXAd5Wr86HugZU3pjVYRvIdNU
	 /Um2paS1NhCWrddfnlPWyTvyW0f/zxXPKAzG3R0e5ATxmmwBN9JGDGD27dS6clTYzL
	 bBQPmaxiriGMpOIYbYI/Oz0CDHBcXzMDAhYlPYVAE0mc4yIA/K13I4H685HEh7aiWr
	 Ev9isMhwgAxWxW6G+qy/K4WJoMblwus5DsTFsnT4HM83Mym7KU40gCbOoAGjZkRTc3
	 Rg/QFL+4E9OZm9ukYBOFT3MzcPMTtq53lGQQkDlXo1ZLPh/XtF4SwiIi1dQAYla5Nq
	 9evroUeDI11lQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 983ADE77188
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 03:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173665295360.12749.17528349006162245204.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 427c8cb52672c92b88474209c0fd821c7a3f836a288d24aba044e1b4dcc247b7
Date: Sun, 12 Jan 2025 03:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736652953
