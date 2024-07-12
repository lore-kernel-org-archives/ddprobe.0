Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6182A4A33
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 01:27:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720747643; cv=none; b=TQFE1+JmsjEuK2zIjx3nA34vZ6gcoHoRwcZ4JHJ+YNhQA5KrqlJFwX4xx1yujlEIHvaWz0T9tvcSTuvQNTjLXwuIx737cy56ltDyGPSBtrLioygVkvvb4teOb606kIqasNFr79GUAxxl2OZhjHOgG8BhzX+kJEt9PqhXUoZ2hr8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720747643; c=relaxed/simple;
	bh=OUQ8uloDwYAIuBTq305bMayZrKN+mM5qubGp/npgRCI=;
	h=To:Subject:From:Message-Id:Date; b=B7Q3qXV2LL1cbrqHQSpmdRXUOl/anqmCK13JyA652TgRvFkjoFiLqZuXlij9YNAQ3zjTVW5yLomEQr3GQTOd4SOR/KngkZTlLmg6MoF+AnvW76DLFuyGmaXIOCr6nDh1KnO2yA5qaYvt2GVqebb4ykk+M6vcs9CbYnecscHULWA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jPFhgno+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jPFhgno+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E6266C4AF0B
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 01:27:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720747642;
	bh=OUQ8uloDwYAIuBTq305bMayZrKN+mM5qubGp/npgRCI=;
	h=To:Subject:From:Date:From;
	b=jPFhgno+kPsAzjWnzzVbyrI3oKH0R4XKuJHLMY+wIG9DV42sPJSq7Zf+a6IL1COND
	 IjVjlgUywAdvZ6aiGwhGmU4tpWqrqxDeqkGctPfvqW5JoCJu2diRZXT3jL5mDniquG
	 m/FAt1Jk3yKcIjdLvI8MX5Mm2TPODz4kgZ9YLFe1q3RoVA0xwxrtQSw5m5PwJOsxBm
	 dddU5rkk+ViCbDu26aCyHuND1feO+2+yr9HvOBChSKlPALh+VLRnOQCVn4+LVsN0DV
	 BldJWlrgsZJCRicKz4cs2oxPrp4crub1GRn1aPVaAqHDpk4hPZ3tDx/x+HluzYsn7Z
	 Aqr4ELkq6MOtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C29DFC3DA45
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 01:27:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172074764277.29471.17058609265160798898.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ccc51911bbaa5250e96e08f57a23e82195f1f2a7eb4950bbe90041404f543294
Date: Fri, 12 Jul 2024 01:27:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720747642
