Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03B8F2010EE
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 03:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783826314; cv=none; b=sDZUaHNimj9TThK9UhXXKyniq//5zgwMjNuqrBil32PCAPQHpre9iouYORgalKNwh2MKl1lgYqK2GgQ89EFaPNwfX/lAB+7llBlTwKGhja+dd3iMPxYaESCTvOinOyWknKvIsqJGHJ1+BQ3Ib3t3PvvMp2wTVxrljVwApWYKXbE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783826314; c=relaxed/simple;
	bh=6s1w0xOZSNp+XGFvVK0iy08NTntA16bvy3tWqbpNNQk=;
	h=To:Subject:From:Message-Id:Date; b=ieUKZJCVTxIlbhHGxB9/y+EsokoQSLEmGUhHp6+rUdSKwogC8kDuyCq73/YR8tUxpIsYCwHX6Mqrv8Ji2l+njK14b5oerEFwXvZsqEDMF/oPXoRhxq4eMuIU729pLibLChNcsIPXyD3BNkjDlzE8LvVhjNveEaQcIOIcC3QcUxo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HamBx8oY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HamBx8oY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D147DC2BCC9
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 03:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783826313;
	bh=6s1w0xOZSNp+XGFvVK0iy08NTntA16bvy3tWqbpNNQk=;
	h=To:Subject:From:Date:From;
	b=HamBx8oY8D94tOMMG6l3xSd3btZMFXLh8FrAZGVA9STJu805grjHAAr02V7t+mYb1
	 4E0zqymIVyMjRZbFuJi+zqeZbpNZnb2cgzM1xzYykfaYvvDtaBZU71sF8YaNh7UtB7
	 yPjDe3VzOqfOtcJqv94UWtFHgzPpauU9AF+kHjxdeb8pNicsBWrEKquXUX3KiGEJB6
	 cGPUGiWF9pIlBvvYYNS6pourVbbR1Vt6qNAH+Z3JJowqg14QQW+O0aEExzmAy2y8AE
	 7NklO1IaMYchnHg3ZLboOP1epCWLXHMOH9YWxPWIQvm4Z6V7muHM6ooAWQtJWhE6VH
	 E4xKN1dWO+32g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD201C43458
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 03:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178382631368.2490.1235918166573774268.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f8e1dfc5cb295e2e2e2873bf7a8e2a8197bf7c321ffadfb062efa24d945a23a
Date: Sun, 12 Jul 2026 03:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783826313
