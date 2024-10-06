Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15F3DD520
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 21:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728251754; cv=none; b=Rua8O1KSZ9Wd7SI1RgUjNwrMnynlUSCG45von+r4RUB6dgrZWUiVXmArH4T5g75VK5ZeYSrDD9Ru1qZc61tsiv9P2dZVhZySUViEQ1Ivs4k3VArZzHPp5r2xSs59lzuQLIKtno0d3IzYVVtnaZtj18Bhaud+Urr0vW+oC4ivTuw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728251754; c=relaxed/simple;
	bh=9X30OhXUy80LVULLr4EgqP74mr0E0hhQ7F9JCR+qaM4=;
	h=To:Subject:From:Message-Id:Date; b=Q7eMcS5tpHAugmfBZY2Ba1gtx9XERTnBnGk2fMPZla0/HS2MhedA41sG2JBLPZ4oRISaehKda2fSY1fkU8yWDWgQCt1sloy4lGysxejlm+ZsRWTKgZTfKCKDYkzwc1M+hZuUALz1ICaGGCjjmpEgfEtBKscxYv3/aW2dBnZA5mU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BePZj3Az; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BePZj3Az"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6572C4CEC5
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 21:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728251753;
	bh=9X30OhXUy80LVULLr4EgqP74mr0E0hhQ7F9JCR+qaM4=;
	h=To:Subject:From:Date:From;
	b=BePZj3AzcduNgS2by3TqdyvGI/13shzKbyAZ4d0VEks9AtoivBzkTTfee4MLyAGxT
	 fSRofLRYm4w3lvRJzXKVmh8tsrleiTrZmR+jYk+756RtjJNk7ufPnsT0dv7b35dt+4
	 fZS7k36pL31XAGKEQ8+TLJpTsHB5fqYzi0giLTr3cJ7BKqkWkNeEUiiPLaRfQCLWjY
	 UM9HCWIPkbJELWVyx1/Pu4PzR8BBfGh3ZpkUNt/Y06wVVVHSvTjLqUin/YM5qC0WCJ
	 snkFII5+/iYusS6GR1McV45sC3JlkRokc8dqtAWN90LsFsmC3vWMCp/8lGOMWpywrq
	 Sb6I8WpH/Nqmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9555FCFB43F
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 21:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172825175358.32311.1312070528752434778.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7869f761ab243d3f9a9169de1fdcc35bbc7dae0ecfbef994bbb073628adfe889
Date: Sun, 06 Oct 2024 21:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728251753
