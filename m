Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46641481B6
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 02:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753669194; cv=none; b=os+PW/ApOGYxAFZzrkFDPZ7bZ8pk1AnU3byKISaRcv+0hyBHf4XrfWaCTaK/bq1RiIU/hmnRJjnL/EvQDxOeJm1b4wJ728cm/wKZ7YFpZpcXPdASSnfOdzMaQS+ZHlsY4ZBOOQ5Tf9RVx1NXmWHWH3c3nJaakEJ6bswCtueJ/co=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753669194; c=relaxed/simple;
	bh=hwHl9cigqFX6E/GhXaEctIwSEX8I6EDIiMvAG6eng+k=;
	h=To:Subject:From:Message-Id:Date; b=YHl20su8IH1s7Xbygxfxs5EtTs+w7zqjLPX4mOlmmXaiz33KxiGkeYezc9kmNmZ+UB4sG0mXjoAt4zBCryfCBCw/ZtEmGPwPPd1Rr3MZVL/f6rWrHlkdrEQUP6qOiYSRAs18Cs/O07Mk7fwasBn+xsYNsvoX7SRrXqTVL9lcvtE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cId/mOJN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cId/mOJN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A19A7C4CEEB
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 02:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753669193;
	bh=hwHl9cigqFX6E/GhXaEctIwSEX8I6EDIiMvAG6eng+k=;
	h=To:Subject:From:Date:From;
	b=cId/mOJNUKf0Lw2I8UBoxO2NHfc8WfCQ2tm0noJaW2Sx4vA+hSbyW6nnVJQU40Ec+
	 Bx3sZXqEzU1lYkqCyN1SGhT8wRZRG4ipg2GOeHCam3jOLFDGZfZzktAO0fSojdHNFj
	 whNW+bywcu6QMjEuDaPZjK3cJy+uC+fQOFHcF+fJUM3qeQwu/TRkvBdJBgnf3Ap/0I
	 zEtA3/zK/I8CPyNPfYZE68/HA9ocgevS2E6fNbwQdv0XFM+IU7XV30yADd0MJbIpKl
	 bznMKeq8H2g7LuiBf8oBixw2FxMnr1Ti8jTa8OQ0yhiEW1MfaOCA1pjj567oPn/MQ2
	 YTHMoKJJTcVmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE13C87FCE
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 02:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175366919357.4977.13464140004334445303.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae24a68a962627c27ffd1e30986ef2b49d14844d4341f5faf29a17b5bb905928
Date: Mon, 28 Jul 2025 02:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753669193
