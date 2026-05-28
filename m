Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C4A51C5799
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 04:32:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779942754; cv=none; b=nsyyVFdXU/sf7ICG7rgnFmogbUPw6WA7Mr6hpVOkhbJWOpEji7E81hj0wucmOcLw044GYbmuXrKCwHHYl+cx2QDXul459/Kj00rChpi0GXxcghSkUSD6hovNkKyUS+PJC9URGHCfVanhMyaE3dysuJdQEbVdGZ4ISJth1vWDdxg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779942754; c=relaxed/simple;
	bh=I2goydD9U8knM4jzid4ttQocX20qPbJuahBs6Gt1fQM=;
	h=To:Subject:From:Message-Id:Date; b=XJKUo4h+2nGfp/URLl4ZCMe6dTiKUV8LoKkKjx269zisqyIBClAlw5ZlEKZY+PMEDIqGi6lcvFkTNixnt2ipVKjCKp8dHPEZjcFfMt5oZWX3RTgMoXEl774WmFwAm0lX3OcdBUJV2EO7+dTtryA8ujYx4/WANpBFWR8gq2SqjIA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aeBo/n6a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aeBo/n6a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C945CC2BCB4
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 04:32:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779942753;
	bh=I2goydD9U8knM4jzid4ttQocX20qPbJuahBs6Gt1fQM=;
	h=To:Subject:From:Date:From;
	b=aeBo/n6a+b+81/lneVt86JP4vigGveXnoBg+Gq216jKcX+Cp7KBaPPvDTWK8cuESJ
	 5F6R9GN62ZnABLoqmooD7M+ZaCBOR+Ti2qVzP4AeFnhCk8qIzQEkbmaswPfdWZMy1z
	 KvLnMQe01JM9da5m6uj0pnuC3iFNIa3ZKgQXIqoOSf9ioyFniRymGrBt9oCMl/Io38
	 PxF9F4ej01PEnI/49mBJYKUsVcdhy3GSE/nhdbPCeoplZ2FE/IvuH6zj+3ncsvB2cn
	 w++XTlhq2gfMAzxrgRpy0yWMLA064BEx29MCwKYuKc/nkBGJ2qdD13ZoG95GSbyyNM
	 xued/m33Su9LQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD72ECD5BD1
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 04:32:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177994275368.7960.17744454158264746558.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6543709164270b4de3fd69dc3e5f3817f0ce097c6ec6cc7ef7e6152ca2a11a47
Date: Thu, 28 May 2026 04:32:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779942753
