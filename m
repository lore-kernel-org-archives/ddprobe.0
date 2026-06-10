Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 300BE32861F
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 11:25:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781090734; cv=none; b=o76aGBpCOU8OX4FSYZGPRUQHPvs1eV1Zrf+nzGXYNV3Ivf6bhhtelZS3o8/w8dxA5uZBqCcBPuJjjTwrEIoRQ1Th0aPf17bP09OvkP6E/OgcafrrU3mX+XvdBd80xsGfwFFoATZU0Xo98MIDhH5JPjyEgPtqKMqENG+LQMzflcw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781090734; c=relaxed/simple;
	bh=653Jkodrbx4yxH1duiERiUiKkGIx45A7HZu/MyndqOU=;
	h=To:Subject:From:Message-Id:Date; b=kF6EfNGLg1lezKRAkkLNc85P+hz1iEvja7YJD6M3DUXkMkgafAfvd81P1QRZnkxZnn2MYKd3dXwZQi3oCYfP9CqBa0U5P09g7gjKUgBJgm514K7bzE0AKJD8G71Yt49Zi3wnSjeu8OyeW56a0zGHtCz/PAjsWaJXvrx4KfGwFg4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=igm6pQS+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="igm6pQS+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1820C2BCB9
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 11:25:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781090733;
	bh=653Jkodrbx4yxH1duiERiUiKkGIx45A7HZu/MyndqOU=;
	h=To:Subject:From:Date:From;
	b=igm6pQS++e8mqlkCr2TTlSF99XSd2XiK5c3clp6x5OPs2gkLC02bhaj8PshDHsEY5
	 FUND6hZqjamkXWW/V61qZ0b/zx8Lj1IuMZcsgJuzvPof3bPCduD975c4JIL9zmVRoC
	 FT3x03GJ9XMbOoVohJ7vLfSRP75JtzD7Po7BzQuxU1bCzClNGRqX7ALAAYlXxDm3I8
	 PQ3GHuZt6DGArtCshNONRlWNO2gM6+I/4KyiAjZnHcTxtMeHgOdlbCgSY9eQa+r/89
	 SWwJRp4Slrw3Crk/MY67Qz1SjA+/zw1tXm2fpy/0brMj5VwR/zpIqAk1nMwuA7ntUX
	 20G/xMWNOm8sA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7A81CD8CB2
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 11:25:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178109073367.17173.9828898623063982936.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c7b554f5e1a5dd1bd2b7ff431f947dbfe84114fd9dc876b3781a1b7303acded
Date: Wed, 10 Jun 2026 11:25:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781090733
