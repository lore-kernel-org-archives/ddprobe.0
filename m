Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4277D32ABCD
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 06:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784182114; cv=none; b=Z/aI3gac8j0PYeedw0l2Msk+xcChV71rUhKSd1qU8ZYfjtp4MLggJCu+MQY/jNwUlIlAMtfMzf/WHfHcXmF1W49r7+nZpQ0Ql1G9gdsRw37PwkmHvmlTtxcYSzo/WteRGq0cjFOlmOrg7wWj0BUQ8aBG8orJhUL0ojZBbIzcLZI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784182114; c=relaxed/simple;
	bh=z72bs3fBrsecWVvnUyq0DBAVJQeNBOkJ9nb2fyefUlE=;
	h=To:Subject:From:Message-Id:Date; b=DTcVH+VZZbxsHWjWVJ1LYtRNZTftyRuxOWlsltqmbpzMUbxTx/8Fisag7aYV6b+UbpFMJ8e1RQXsCYRbWeaP2daCUvZW/3IJr0JYvUFfwr8bII1uFNRn1rJS0ixKetusbnxqAdpUjC+IkJYE12ZTU0uCyWoMmRYZVi63lCvIU0o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kt3iKS2K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kt3iKS2K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1A63C19425
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 06:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784182113;
	bh=z72bs3fBrsecWVvnUyq0DBAVJQeNBOkJ9nb2fyefUlE=;
	h=To:Subject:From:Date:From;
	b=kt3iKS2KPOt9bY1MLfck8NTXA9JWtfYscwDvvDphQRXHfnbfmfCnKoexrJuAChziD
	 1xD5uPsm13xy7ux+1ecFB/rK9THuhZd+dsdxTnccEW3lekybjeGKGpSuT9gT7SRVey
	 PPBhCMeKmDYxkZN8a5H4tGms/5Pt3e7TYdBOtWaQ+XY+kM6v+OPkiv/sJf/J2b2JGi
	 4XGbvn+dbX7TuBPboumoY0AT7URCtZ8QvY439nf6nNWBFGRV+y9sJUdIwxCJHzAagI
	 l7O0kfeSJug61u6+sQYNCWs0x9dXuYjzMC0KNZttEQxcBTr/8DhM4OBlGm0cPASfgS
	 maEp7hj3COS6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAD84C43458
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 06:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178418211369.28893.8811761098262731861.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7389681135cd4f4e83e1af77c3a74e192db0a61a0d3e13852cfc3b86a24a2eb6
Date: Thu, 16 Jul 2026 06:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784182113
