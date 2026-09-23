Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 76D3851AFC4
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 12:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790167234; cv=none; b=peGnLkj3NMp4wu1bj6lRXUle+YUaOKuk0d1je1S3fzhXKKA+dekiEfJxcCXfHYuYRfaMEgRHo2JKb8fMaZjmWAq2wV7btMohtM9Wq1T+hlEvgNjXB/WBzqop2HMoHlfEbq1wLyKTiCqImGomsz0R/Nn2TuoT+lgIdvIviOgfkK8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790167234; c=relaxed/simple;
	bh=QuFGRnz1mmq2xFNO2hv9CJNFEIMCUg6to8Wk9I7o77Q=;
	h=To:Subject:From:Message-Id:Date; b=ffnHMPEwKoskxS+Nihf590whwdAlkqtYxBPTidw0pWXAEfHpYzGDSW4M2Z6f0ANLeaFWPceTekkxISfGq7OjbJiLtbhw3tfUIREJnkXvBpg4qsQYzQNnlQeEw4IJ8Q26Nq536DdSYSx083JikLhT5u4jwxMBJhEPy0iMSrWiFy4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OyYzcMSi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OyYzcMSi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4C02C2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 12:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790167233;
	bh=QuFGRnz1mmq2xFNO2hv9CJNFEIMCUg6to8Wk9I7o77Q=;
	h=To:Subject:From:Date:From;
	b=OyYzcMSix2dGI85T40CqF8ukRhHr0/DLoBcFkhtM2ee0FuOBaZErijYRYRAr+js9j
	 3WnTpTm/fxCTrjBZlrNYEPeEAf8lbHqa1L5vMbVzL/GSf+TxO7mXcnvgtuB4HXPt/2
	 l7WtRwk6UOQsTbNXVAG40pYrTqdVaw/nULISsuwaBpUjPYpRLsIPvK2UhLxaJ1NhWd
	 whgMSmu6lR70eSvazWf2UhFr3vkzlCazUspnXyYdgV0brj1v9CGJgk2atTdI2bgLLS
	 EKjuIaRJn8GS3Sllr7s8YhzyXn4DU7P3zO2/Gz2VIF2WgGG0nN31uVZ8vvjKCd2cYl
	 e0L9inuQ+ptyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B03C8C9830B
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 12:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179016723370.26992.1970110919298192004.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e1284d0f2d1bb3cd4a16881514c480f086963fe3ee7d6abbd8a06e78054c4515
Date: Wed, 23 Sep 2026 12:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790167233
