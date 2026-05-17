Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D7121E7C23
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 07:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779002434; cv=none; b=ZYWU9VuM0JrJlyv5WxvPcLWyfTssJYD7HnuP9y9r1i+pTJX9ztcceKYHzOzPt2ZJ1KiPyS5sZr9SbB4qVugVfznpqvW0kd91yr2x069qvZQY7yKvPBJwGWXskwwsmonLBtLsEbndqBtBeSdsaE2dP+93Kb4hY9M7wUrpedyyCNo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779002434; c=relaxed/simple;
	bh=/VRqjeVaVQh28qrO+3AbsOm71yLtGfDz/qTjgGQAOJU=;
	h=To:Subject:From:Message-Id:Date; b=oJba0kW9xgMBDSChvmtZvrhe7gct+lX9tM8BmQhDKzOf/h2zTzhKurVY/mShcRxbHsXAwHLCyFysXK5re+pZWcNs/LF2ElujlyALG+sb/Mk2dH3OIZwPVRgz1b2whJwxJOazlxEV4mbPH66ARWtzqYSl/r/AAmvf//M4WP3kXUE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X1QDMGpG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X1QDMGpG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C549DC2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 07:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779002433;
	bh=/VRqjeVaVQh28qrO+3AbsOm71yLtGfDz/qTjgGQAOJU=;
	h=To:Subject:From:Date:From;
	b=X1QDMGpG/dPVXBUtfdj5UTYDUV1x6c2R+jAOG+DkG/bye4fCnfjd2fQYSN7A2zSB3
	 6P+RuGbtQ1T/onHhwjCCd/Qc3XJSTNECmOGXQm6GT2+XbPW6RhsPRtzhBWrnaUeRw+
	 ytD1mr/qwpj/QI8pA6krZNvXsikRw/nXAyRJWMac6RWT8Lp6/w9GogJDH8CeZygSdP
	 P9UvOM9+XByPgoP+INoFzVVeZNkAC4+w7MWADCOWx4QaOWfgcX52Ymfb5XvkXXMKiq
	 XBNY3JQY32QwPH6rqJQx7iiT/R+c1wcTpeOu7Ba3+WryxIxCPgUNW+1/cs1XG9Kv6K
	 JnNS/qys7YNsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADCFFCD4F25
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 07:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177900243369.12782.9249390033865732332.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f6791a5c58a7961c318dc38826d4386bea9c40c36100791eda3f69d99c8ccc9b
Date: Sun, 17 May 2026 07:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779002433
