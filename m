Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C2F7626ACC
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 02:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774407293; cv=none; b=KWpDacD7svEj+britHRy6tzpPumcIChmhaCVtzNUGG465tP6L+sCO/uKwtZu7i2Mv/SbR8SqQ0f+uhC18wj+u+L6vsai++XydPYX0AoskeGOVCAoowajNPCisiYibvUnONlHPKUqwr4sk688LCUiXCWhE6NHptzySP6nKDVMbGw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774407293; c=relaxed/simple;
	bh=hVKqFC1h4GCRwj6sqJa53g110JhvHWfutSXhAe5ejXE=;
	h=To:Subject:From:Message-Id:Date; b=L4p4VuZ6bJkUgm3wR7/V+6x3k7Z2/HhOt4LXRKi8rKGHPE3kaub3p0WksyiH7dSD3drUbLqGd26pHMrRsgrN8VzyjRpWRyIK5EdTROVubK4VrDVlRTPeqEUZ7DEntn3zkd3vfv0pUA0R9Rr6fip8lvqFWetDdmKHbizWMoGOdYY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Cih4QNLb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Cih4QNLb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2FA4C19424
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 02:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774407293;
	bh=hVKqFC1h4GCRwj6sqJa53g110JhvHWfutSXhAe5ejXE=;
	h=To:Subject:From:Date:From;
	b=Cih4QNLbMD/OxCqpsSKwEo5jqZsw4qTIUqgD8G/O2qlPMfhYtYBpFyZy5eXrQ5NDr
	 61ckAP2Isv743S6FYietfD/fMRKPVQYSpQv8h+voqpH/7Fu4B/6ia/YLnmhZ4eoGi3
	 NROaZXvagqNcWMQqOT66rwHNcIt2rXllNeKWLpSuqlO7wAffilQQYSycRex+NOeB/K
	 /ek9fcD73YeJUCyjvMZXkRzNhDewuH41v7ZrmQ+HJXloQFXEXx9dpAh5bbhdyXLvte
	 0pMEnpMV7g0MCvc0nVllAfkfDvI3HL3YdzS4bMTq7dNNbvgewPliznK7B83AzLqm+X
	 uVag1uMXb2FiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 920BC103A9A0
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 02:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177440729358.11595.2203214612141159174.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 90e28328adce7d1636f478608ecc85a55a1587b14ad04b10c44a4b0a36c1a413
Date: Wed, 25 Mar 2026 02:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774407293
