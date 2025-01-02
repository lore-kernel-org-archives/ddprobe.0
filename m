Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34A368F58
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 03:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735787754; cv=none; b=QZ2HrmG1z4GvZxlw/f4FZjXpTUIgqTc6RL0qEBDixc2LJFqZCYimUBp1YvWUAKFTRaVkvmgL71nizuHbgEwyiLIeKdj/0Wj4X0AEI0S2aepi4HBilZvS2l2K413D9mFVyKcWYkFO6q3z1t4CJLejjUyyTPxku2vXqYApldrZH5M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735787754; c=relaxed/simple;
	bh=EhinIQlVpYwGkqDKlVZkx45GzeG70CVtzzweLY5IXsA=;
	h=To:Subject:From:Message-Id:Date; b=kEtYWeXUhiBY7aee5EIW5CPrqa1DntDKdV9/aDJQL7Cd4gQjNHYKWiLvdFDW8Sdz3I8nPbNiZTz1JvPKhYKgEK3n7OfA6IplfYwWfG7D5wKXup7C2pPOxvsjsIjfnqTCbX0k/hXWSDZ4XgxrQwiMy0EVI93qQXYucUjwyhB+GFY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OrqI3Xby; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OrqI3Xby"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5977C4CED7
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 03:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735787753;
	bh=EhinIQlVpYwGkqDKlVZkx45GzeG70CVtzzweLY5IXsA=;
	h=To:Subject:From:Date:From;
	b=OrqI3Xbyrb+OQDpqZVD+V68uxCFC0+i5fapoqNyZ6aFgkaaJ9aQxOOAV121x2bXkt
	 zGlDChw0SCbYx04rp+KfSuaJsX7x63KR5nfKUGyZma+crIjXSjOKjRpioCpAC9WDb8
	 FlY38xZKSDxUnFiE6uReuSsDkXS0WSjBEgmg46U+z4XrEpP+WQpUYdnWyFIf8+HAJj
	 aEznq+YSaM2BKhXhILSGFs3M35mCQCXZD9HuZIKsich2d8frgkR0pZ+wIm/w8rHVR4
	 FVPqVvtj8i64AuvVWlNSE0Hm0ZMSxwBsbjwaN2pIQ/qinytI/BoFFkhqKZQ6mv22G5
	 A5s/YAeH5ae+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C6C9E77188
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 03:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173578775359.1278.3344587776351718475.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d9b9b9336504e2507d169c0b7a79dbe737d7ba6ad4d21556e11d9e2f72f09bf5
Date: Thu, 02 Jan 2025 03:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735787753
