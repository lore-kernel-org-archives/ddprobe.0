Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34A2F17BCE
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 03:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751686794; cv=none; b=ZDm7rF0YR3aBn3raXFPDwnHvnkcyWBEavR83j9vWqwmhcv7m3rB8xLOuG/ErUhmLCCAWYLJ4KzAGmdA+vbzAXmtptaDMbwakyxWksmq7lkm3MQQ6ry+9nb4oe+f4PMZavLRIPbtpek+QG6nFVh4Rv9VaAuak9GvETsx5iMYzIF0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751686794; c=relaxed/simple;
	bh=Ov2I061zdkoWD2nzn/O8AS6lofJoUSrGrw/se7XO1HY=;
	h=To:Subject:From:Message-Id:Date; b=d5wGfVhRiVgQKleiCu1cVYV5ydIUCeWARb9wMxHPBgYI62Tn3OTj1Y7x4ASM+H2RYsTqxI5+zyu3CbKPUNHg/TA5031QnWOO1K9Ap+ckY9GqVs2CIb1+aOiiHaVaoXWhV9cm4Xy3JsOsM5qJ3hkbJOXxWki3XYuaTHDOaVju1zM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q/G/ba65; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q/G/ba65"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A44CEC4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 03:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751686793;
	bh=Ov2I061zdkoWD2nzn/O8AS6lofJoUSrGrw/se7XO1HY=;
	h=To:Subject:From:Date:From;
	b=q/G/ba65NKEA8Yq22oMALeR7S6RuZm0H66u8qaMR9HbARfg65qVfNYg2OHgP32feL
	 zuZXEJ40In2DjAoZPnRZ2EB+Nok2JX1qTWdo/G0D/zQ805opjH6OcdFuVfHxDCgw6X
	 cgFD4/dr/ul07p+nbqCxPHL97LViO+h1LbvBw4TDKtPVahzESApaOD0jp1rkjCDvEv
	 VfeFaVMUoYp4iKdDgDa+YI0aV9Ha51GyWxyRmBS/XEWoTJ+Tqjlfi0rl/K3KgNwkYM
	 jW2UX9T/08Bbhb5E0UFRVEHdG7UkJ7a01P0vSie07dzCvjq15ljms/7gQV4iJxTxvA
	 Y/KG/c62zVLCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91421C8303D
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 03:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175168679357.13909.10133334628997306537.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c1fa9dc2f9fd081f21e5885a68c2fe235fc063f9ca532c083db2ecfe942dc91d
Date: Sat, 05 Jul 2025 03:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751686793
