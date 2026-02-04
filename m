Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF72B1C84D0
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 15:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770218633; cv=none; b=AWib5jHD4x6Aciu4FFh3W578qRM+Bm9j61EfiZWsNUMhDypqTvl2sV9SVVdsrSSR6Oibs86Bi/0vEPP+J0V6vxlsA13khD712o/J7d1TkZ7H07u6ukvJEM/oRJjyelArzUN1firWnDSLMF5jqXUcaKMtT2nAmj3FZQIy8vvtUsI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770218633; c=relaxed/simple;
	bh=TtYmurYqa/P1/stN026y37M5uqYcgMSpZGxJ9KAdWdg=;
	h=To:Subject:From:Message-Id:Date; b=F0Usy05Bnd86G3NJB2Bl6l3EHctaBSbUIm/hhAbwQKNYgJWhduQGdVXd4R5KiWNblTXh+Mwqr8Ey0LxwES1I1sU5/lLF5Y65Tqt7POHFSCbANUWqiutG/VOhrt5KyL5i9DVMJWzBuLdH58upwWt0TLEDcN4Az+1zc5QbYy9RAGg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HlIR5xV7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HlIR5xV7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0EF6C116C6
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 15:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770218633;
	bh=TtYmurYqa/P1/stN026y37M5uqYcgMSpZGxJ9KAdWdg=;
	h=To:Subject:From:Date:From;
	b=HlIR5xV7otBJuRZS1z3sdhLnBiIDDNk+L/EwkYg+PWukmRqR7cmjhN+Xe2Dsjnehi
	 K+DkHVFReucIxqMIcNx76lGPV1i6CSZapLAxQLrwkdZ0f9lK2QQzNIuTgiopRma9Bq
	 We7dSmZosWav4qxFmtOcNCzMJV7o79oigxVWx8eIrZTJl9bq8qkW0CQm/8bD4k6/6t
	 9LjaRRsDnWJiOkm60wk7f2OamfE5l9BDSLXJtnGbkP8gcRsOoqrpv1HFE1oFYGPomp
	 mc+hRNLctjneMHzt03v7sECZOau+fAqj1IEo1FNR3z9BKx5g3qfqMUqKj37FbuBogK
	 LIUiPxVDwkcog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95A0FE9D3FF
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 15:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177021863359.12294.1250899235678219244.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ecb35c6fac5612e32f9459f271ff248a34eb4575d5ae9bcefa9bb1e49ac75056
Date: Wed, 04 Feb 2026 15:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770218633
