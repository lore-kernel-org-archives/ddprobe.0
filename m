Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26E4C203710
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 07:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757835594; cv=none; b=ShN4QjAtuczPshiTwo/1Rxtgw+zVVOYz6u+XPSxfEB7+d8gR4mCH3MpfFpkOO6aasldnA1RLNJI6oM36uahl8VBUwkqSBsHN/vwLtqmFvU6yLIbYTgdK3sy3t+5S86bIGt5TPyNt2he+ZbDE8p3L78eawLcsEUla+HOEbWQOxcU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757835594; c=relaxed/simple;
	bh=G90Vw5TR3B2puxsbMI6rhVqzeSpaTHhE847oIlBfO+k=;
	h=To:Subject:From:Message-Id:Date; b=XOtxSs2OmogN7GGs01/hoEZDLPArx/nc6QRn8pCpstMPooBtt+bQQF6RoPW49Vo3UwV+/W+8DyTzbGnwvH1bLMASD7FkDJE4Mnn1bblB4rMyOoLl+ZE43v3Oun+AMydArQBpy5osqwS2rIlrSuQFh9TpMBV/Obr7v6ZiQsrbYKw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cwc258Jn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cwc258Jn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A79F6C4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 07:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757835593;
	bh=G90Vw5TR3B2puxsbMI6rhVqzeSpaTHhE847oIlBfO+k=;
	h=To:Subject:From:Date:From;
	b=cwc258JntNjfv0QedgdmhYZJXWu9H0vNWeQPTXZJDTV0MlCLPn4Uk4gmY3FkWqpA2
	 GMqCWaK9oJTS/9prBNS1dRLvC5+NwyJL/KtO2rptZLmz+cMNS6RiA98Fpf0UjTdzUA
	 iH/lW6aD9W+5tg2AHEWx9v/atOjcpRN0rwCndVmEZQfI0KHvlwnGorqnnkmcGKP5UG
	 YcmBvZCju3WucvaAhmByAT+cYKe5cqTtGnJWZ3JRuaMl6Y+IyJajic0UVncMdPQlMu
	 iIYUjgXD1PXFV2AFPVT1Dm9igEQtIyRGy1HxiJbZJ+RUFPiIUfXWLAbX4KJyOM1npp
	 /co/DHLF3l+OA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92631CAC582
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 07:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175783559357.28442.8214898711570473792.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 419fb2e2078c58904ebee944d7359c62946aea24222ea6ffc08de74d3060b947
Date: Sun, 14 Sep 2025 07:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757835593
