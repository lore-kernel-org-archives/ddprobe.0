Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 360604078D1
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 23:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789514434; cv=none; b=GIC70h9C/VtXkyOREF9so3D/QPbyVFnEx9uYsATeL9GG+I46n1NQsmZ9rBBVgqx2Ymr0oeXZXq/z5VhYAKTSfr1zJisxpsae81hPBxxQu2qgr62VzDffRcjAbxTDECFoWgasbtOAEwCmtdac70HpnMZabwy0TeRJFTIGqkE2KlA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789514434; c=relaxed/simple;
	bh=MFKIgSILUNI+KeJdgxSP0+YVd1nml9Ono6R415Jk7Io=;
	h=To:Subject:From:Message-Id:Date; b=W7e+3nYCWq08H3CHnyaqhBlAdnpI94O6bqLzDbABam6C+0aOEsrtIVySlGveX9BWHpecbKNZqXheX8rOaY3Dwj/3YPuxEHLxMbeBE02Iz87eY2AoTvbTDkurxwYWzsrvtWe90uOQBVcoLUiNI6f/0R2m0KtFgsxpIGh9+TTAgE4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PIs8aoap; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PIs8aoap"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD65CC2BCB9
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 23:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789514433;
	bh=MFKIgSILUNI+KeJdgxSP0+YVd1nml9Ono6R415Jk7Io=;
	h=To:Subject:From:Date:From;
	b=PIs8aoapCC2oT06iXFK9F8wmSaYqFZGiwzAZUfEXOclOtTwqbY8D40CmSEw3TVoNA
	 7olADjACIx6L8iAo8VmDcoYsBFQaS40zXc7B+vOJHRwY4/zHVRotLExOevvMFHOXpJ
	 lNe+e4E8KQzDE+rwsiZRYp3vO+GsgWi4Hwgb9c5abGSAEunu4JwW/T1F/IHgr3de60
	 sFxEa0Wqpj2uliL2Znj3EUfKS4qqSgtVgeSox/haO/N6Iyv7rG5S0l5K6/Wb6xUfh2
	 HZounJ0FIH8uTVUZcWrp9nzncl3MAQcW3ljIVQbHSpAnZyQgj4V1YveJF5fGhvre5z
	 Yz/Rx/ZESzhfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9B81C88E77
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 23:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178951443368.1583.16454709228730533971.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dcdffc3808e37f6e7ff6d23532c3543455c23ccf6e62e958947288eb42bc90ac
Date: Tue, 15 Sep 2026 23:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789514433
