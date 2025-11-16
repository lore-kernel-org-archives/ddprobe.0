Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09DCB21A421
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 13:00:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763298054; cv=none; b=b9TGcvEx5SQ+4jaL9dBIpswtnHl46ri77USG6zgO6J9LnehFxUxI3OgYFiDMLsATDPBWjp+qkAOBBTLpE2ny977iigwKRb1qyNLQuAFYHvTlMM/y04v/IGZzBTaGEK60LTWHWMcMZwbzwSTo9ujT8Gy/qFXa36lK5rNtTyD4bxc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763298054; c=relaxed/simple;
	bh=IH+jx40CBRS1HfFikkzLfBAirtQXw2nDngyKyJYdBsE=;
	h=To:Subject:From:Message-Id:Date; b=DQHUDY1/k52B9kM+E8rRpcO5XC+VCYximUmsEGL/LHl2vGawRI02do8Zl2GDHrU/zQ+wr6EvDAh7Xj7Z9SzKvGaYwxOMqyrw6GDRNLvgEdAv8oSePOBfRCecQiYLRQc57Oi8Tf2jI8O4eNFuw93yswMaENtHTIA19agBlQPjqEI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OHPbGd6F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OHPbGd6F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9BE76C4CEF5
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 13:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763298053;
	bh=IH+jx40CBRS1HfFikkzLfBAirtQXw2nDngyKyJYdBsE=;
	h=To:Subject:From:Date:From;
	b=OHPbGd6FXWKH6LeqBrejuOsbblkJwK4JgN8DBowX6WGQn2HAWj0ahrBqENDMZvb20
	 4Q6J8PzNhc/EEYycIL2If/inrqaxRpooVtyU5z3bxa/0XKQ8wVIbQBVFzUWwsZ3/g2
	 sD7HejrYeuI7/zVHU3J2C1X8xt54ahhtu/xf5o5+IRV/WxZWCNx6rthL5rY/sqeP2j
	 Fn4O8oRnjB/CpoTp/VONNJ5aNBRTYN2W4gVkQKcPiOnmwRHqGXCzuwhurGOWTuGe3m
	 pmi44aiMEb3lgEog/7O4PYQO9t808STgzyB8w0wMexF5nCWGXx5vZd14uNqFxcq1uZ
	 eWVpo3cJtVcmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F5AFCEACEF
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 13:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176329805358.26213.912674733042344790.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 95d86e5559ca368723276bbea168dede44e15db4e16b6fcce94925fcf6de3081
Date: Sun, 16 Nov 2025 13:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763298053
