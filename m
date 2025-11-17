Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 595FA30EF80
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 08:41:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763368914; cv=none; b=syL9eUvaewEKgL7VIvGe5FFJKVruaRMfXFuXyNopfNwTcTyLdwYp9aUHXPhJjkVSSUb870JbrY7wqUjiaxNz4gBSJXqA0qnZXUGnl0OD5OjuvakTD7ajxOC4P2DwpWiNIKSGS167rXIP6zJvfq28b1SBdhugbFUxY/wGfl87SsU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763368914; c=relaxed/simple;
	bh=Gc78dlGm5aTOesZwDaVLSFvOO1Cyb9erK+gRWNT4/kc=;
	h=To:Subject:From:Message-Id:Date; b=JGTZOEPNuf6aRXDaEvJMN5rEgGZkVHEKnBZcsY0j/hIGpfDBYUIAOHUtjdv+0k5Fpy07jHA3OOqJRnPW569gB8BkShzvETg8DvMlwOi8XATazKvWFqyTzJCqa3z3+C4cEle8SotINVXwos7PkEePxyNkSl6uYqff6pLCBgIhri8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oQc+3LD9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oQc+3LD9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B96F3C19422
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 08:41:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763368913;
	bh=Gc78dlGm5aTOesZwDaVLSFvOO1Cyb9erK+gRWNT4/kc=;
	h=To:Subject:From:Date:From;
	b=oQc+3LD9KfHndScrmJr4/VW/EqmqMSE33mP0YeeyzeL4z0UakUplWFIBTZsOt9bJW
	 GMWx4rGaMAT2w17IOgUImiD6CQI6VQwvaKV7OGAl2SRAG9zq9xYEq76DIKNGOL6SnE
	 b3pv/FWgi7+mPdmNQeqeY1V/28oT2Gm/R8kIlkRaywM1Hw/6z5v5RF5UZnCoWKYK2j
	 8yMmNjq26QM46ZnHf8owg+Tms+ThPbUBPdPt1qIG4+8HPkSdvYqDzMP2F6LOBxj7t5
	 T0pkbAJCmBt4rpqNZ7s9A6rm8+vwT39a72U+Cap/BvyNw5tnQ7u5up4Ej7zRE6DM8e
	 IQ2iYLKW6wsSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0F90CEACEF
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 08:41:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176336891364.15214.16332868666833469171.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 332396e19ba6fab3164611927c53388e21b73fb4165f59b9c50698e357f65a9f
Date: Mon, 17 Nov 2025 08:41:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763368913
