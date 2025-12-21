Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BB72239E7E
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 07:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766303634; cv=none; b=I0Dacj5LKT/RKYjpklBKq3fJxLBvdclC2JyweL7JzpSP46JGGpjan3OH8Zr9FsgaAs50b558uKgWAJqOjCiehQtgAmExEUE4k6vROsrxbt5oEghRcn//7+u4a6TbRdCb4ZUiQSOdrGJwM/8jWJ/6AXcfRRU6n0y3hZTPp++C5vE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766303634; c=relaxed/simple;
	bh=68Tm4LPYRA9tXIdiW4tKT9JNW1w3J1mf+QCKt4weZWY=;
	h=To:Subject:From:Message-Id:Date; b=VsKuFLJExNoYdASVpEBhpSf9BvsYB9o6KoOHtSHyqc18wvKMgdKqAisa5pX13ClucE6Jns9r4jHML8IIqm0u6JO6pb9cWVJOw9XvPVTxiLjZJMN8iv4yeH+teLfI+rfKeHxtR4FWx4DuTciISvzQUhjHDw1wdUsBb3f5nV58neI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uDeVJ2gc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uDeVJ2gc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0AE0C4CEFB
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 07:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766303633;
	bh=68Tm4LPYRA9tXIdiW4tKT9JNW1w3J1mf+QCKt4weZWY=;
	h=To:Subject:From:Date:From;
	b=uDeVJ2gcjsnsnFmIGjrPWLLzAAk/KtQsYWb5shp0x1R54YrMVT58TiNvllbyRVhJ4
	 bOmTlcBeCh3Cmnh2F52SpS4YK8N8yh18UiXh33DjQP2eCCXRPSgTBy9MQ8nKXIiKqn
	 euijs8Lad3a3vsXloS8HpGGCWZL7U/1HXaaxWoVKsHeDPNcrBi4lIhG6ALhzXosBlU
	 6MrcDLXNo9t0L+cp7sp2dhcDsb6ltyjEMca1eKnXHl2OO2djFlMBvDeQLi6H9KXe61
	 0pIZe54K/BwfzYrTBgS7lN4qJvpKZ5CErw/ZHjFTRAxzl54ZGcuH37F80YgKjRELie
	 AChfRIaocMgBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F32FD68BD5
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 07:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176630363357.13342.1412027707925978568.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb98d968e2968df22d275577cf97f1d31cb6a223d4739d84c81095447c1ca06e
Date: Sun, 21 Dec 2025 07:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766303633
