Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6983430F526
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 16:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787503234; cv=none; b=OUL4Cq24pAci7jCQDP1scyJ4cWmmysOOpUUASWTUsMwkqieTu6VM+vQDvvcwsKpWllnfYrCJ7YJRDgYiWnrpJIDNvNZvjathhhAY034+XFR2X/5FgX/YJy10Kci7e+0fOqZfazonWWsXr2UU6iRPVnKES3Rk0ttkRMgF9SpBd7g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787503234; c=relaxed/simple;
	bh=re8rHGjct/vD5jXlaIihRRn6hJ4mJwUo1ap3qLDh4rE=;
	h=To:Subject:From:Message-Id:Date; b=IdiX1nApKgRL0pU7mZagBVvFhTGQD9H3cEPU9gXR7lD8QtuYJMnktiD5q1BF0odrOdov0nHbpeJxZlQmfEU7Is9KqbHzg1XWUzTqmMTPJjosZt5AnOL/fSJoxwXRkdoAxi4cwUni6PEGUtIaafAvwsUj2Pkq64eGogMbT8DMUmk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u+K9/DKZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u+K9/DKZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D34BFC2BCB8
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 16:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787503233;
	bh=re8rHGjct/vD5jXlaIihRRn6hJ4mJwUo1ap3qLDh4rE=;
	h=To:Subject:From:Date:From;
	b=u+K9/DKZSEPGCQmKnXes6mB95rgVvLHn/Qi+5LcHfL9ojO6WzF7PYh2kuU4oKnT+x
	 8pRW55W7Bt0vvQ2KenfmI6kEkCRoDtocle8rrAJSv5TqaPyTesiu6WtdjPAAbrt1au
	 CAPCnBpRKJP2rPkj43QmX3uRtlViTYX+iZVdvMgA9mRsNP2VgKsffO6mvFhetM9UKP
	 06DaAPLD6owdP/GHSALCQNEizo3jcrcFJyFn+UkExCM9lytc1ox+lnR1WWuxKDL941
	 rDDfJk087OKcYNVlqR+W9xuBwfVKDMjAHXOpIOaG1outjXogALKNiMq+HQY/RvgALQ
	 NiMzhZLab/FlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFD6CC5DF8C
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 16:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178750323368.12796.5752129675437799945.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47324a6685f914d71b8defd7caf552ed27999910118e6642dd72b0e5a39e43c7
Date: Sun, 23 Aug 2026 16:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787503233
