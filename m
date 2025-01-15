Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 164BC241A12
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 13:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736947554; cv=none; b=G5/sEH7GtCYc2cKtY4dP54x1+FRDSca5dqVpEXMffp+US280hs/UlqAyUIRwWOFUNh3fF2bYQatCseAoiKwIp9td7EnT7pzQ3BagGKE5Qw0QuH5SDygBtyExyH8yyvTiI3RgmSfcBhoMDmtMnp0ln90jBDkhoYt+4qD+yKx+Byw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736947554; c=relaxed/simple;
	bh=oCCz6GwnJhm39x4EHO8Z6ccGtNiPg9kaIkSli2sWFvQ=;
	h=To:Subject:From:Message-Id:Date; b=RAFn/cpA7f9Cf05l/WYgNYyAzHr+naul2W/tW5l/DritU47xPywEJ4j24j/uHkZ/J67E91ifw8Q8+cC79pduW0lZEHd2PjRPQp/6TqIXNE3spVxrVMsXJwXBXkLTQLr2/7TPBl/75vF2VO31QJjJit+mulbxi/HMcVvsyXhefEI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lsPLjdwN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lsPLjdwN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A603EC4CEDF
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 13:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736947553;
	bh=oCCz6GwnJhm39x4EHO8Z6ccGtNiPg9kaIkSli2sWFvQ=;
	h=To:Subject:From:Date:From;
	b=lsPLjdwNXYkETtvU7i8B+zeSylQX0veWMQOKKUIUk4Q/MJGhgGx6145+Fe0q3gzb6
	 crJJy7Sc7gfeU1N0L7Ajy8+swLhP2JDdaFhTITNCN9j6Dnwr9baRLMuamtiOhfb9XV
	 pQjsDFo+3cJ/wkm55znkssoM6nLygZ2hPOHGBvaQXZRxjBc4vzzZyVcs/nsURaCaUG
	 /cXK5g2/h/1ioQM1UxRAezqa6phQtzvD2WiaPkWfxnNOq83gK47gDZZKza4DehkJ6X
	 FpNQugq9IXk7z/c/rmgrvH/NFxsluvJx/iuGIgyC6ShNaUOVFIGEFZM/80Ttv7coFD
	 +DucCd7eY7pvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9058BC02180
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 13:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173694755358.14923.11324957925890858615.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d7ff1524e60f020f823708e3586441c8c7607367067f794ec0bd66a350906f8
Date: Wed, 15 Jan 2025 13:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736947553
