Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63F4735E1C5
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 09:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785489634; cv=none; b=Knxp+sff4/F8zo4e8gjHeE4eHMQl0TlMYGC4JPg3+qvq6QBqrMJ7uBcwPTRLLGIGC3R2rCbJ9rlv2zKJYXc2ccpj2GpfDkHBFCgTVy/75Ak/yRZ0zhLVwmd4B4buXQweo+RL/mDvfKPo4HJwPR5U7anMINvm3S2Wo/yPfUFGk1E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785489634; c=relaxed/simple;
	bh=d9KiOlVXqCa/fBgmBdF4AoSjSdQmIydpAyVtcOTbW48=;
	h=To:Subject:From:Message-Id:Date; b=fSUZ/W3pXqd6FS5Ee1sxDaYvbvTGoXoNYqYX0sFis1Y3pepK9ULowHkIOavkWqPxwKrwpNzQmphWn5EYpt8anFDkx7UVFbroPin0Gaq0a4MEcjk6c7K1vSAvK3OR/OjNa5bIndSR0z9joWDibWT0aalrfCRUjFtLv6fmBbdXQ/o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CfR3I3vJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CfR3I3vJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF62FC2BCB9
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 09:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785489633;
	bh=d9KiOlVXqCa/fBgmBdF4AoSjSdQmIydpAyVtcOTbW48=;
	h=To:Subject:From:Date:From;
	b=CfR3I3vJvPoAVOOwnmzrsh9pr+h5R5cmeg+7c/FPWX/OveZ3H6rQ6dTxTwvf/0BA2
	 Scz2hrm0hXGnkP9lM4AsGodV1XK1kl+fwsNVAAOgcXa7AhqjMYbnD6OqZhkycevUSk
	 zuA+mEZmlruiamAFRqpeFb/MUnHvlZQtrO8ul3Ex8dT1JVQVNoFIAe2hj9gLLJTz+7
	 o7konWl4T1/qx0Gw01oK4Rr9YcNm6H6cgk+s22wbUcFv+y+uKesni8ku0keAAp72jB
	 Gg8ICl8frNedPtw2rpdeMMUc+92Dw0ezYDRNV4QlxyGgfvS3GA6z3QBez474gg+0Xw
	 JbUpSTBCyN4MA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC556C55167
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 09:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178548963369.22850.5202239414125781465.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36eafe247713ff761f64c48b7fb6bac0237b35acf7642ed8a5212b5076ce2cae
Date: Fri, 31 Jul 2026 09:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785489633
