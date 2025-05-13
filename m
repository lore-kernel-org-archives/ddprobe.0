Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 309E323BF9E
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 09:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747129794; cv=none; b=eL2V9UDw3ruJbcPir1O79UhlsuCKsZxO66LmsIyDHlMnHsff0pdMwIqUseq3O6wK2g/9vMw/aFPeaGYibhSI3i8/4bqkiyHbMb5LLu8bO9LDvtr7iWW4mpzVKU/zscwj2ffS1Fpkve9GYAZP3cE7YgBhCFkEFG/4LURnmvbwe90=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747129794; c=relaxed/simple;
	bh=IdCEY9t0dizecWRUl8aVc+UIdZxa01DRiPe8Dw4mlbE=;
	h=To:Subject:From:Message-Id:Date; b=a3Jh2dJMp3vZCljIzqLolG7fUrZk5mqt7ohYcF/BnZoLzzBKhlgXatr7JS5fWZbWip5NYBt57dPsmyT4EQ0X0BcHGtX3ZS12eCZLQ0AJ96BBnu28di7FximRe17rkWL0U4+9f+MXHIrJM0IuPhzpW79qXT3h9RrYGlJUhhY+a+k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ojjjCNUJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ojjjCNUJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EFBBC4CEE4
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 09:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747129793;
	bh=IdCEY9t0dizecWRUl8aVc+UIdZxa01DRiPe8Dw4mlbE=;
	h=To:Subject:From:Date:From;
	b=ojjjCNUJbQW9JYkhRWhkDjyyXic46T8phZKvtS53rEuJsdSHZzczXHXEworXAnUW8
	 P74I7Vr/PgVSCtQYqs+7Y3wsjS1rV7x6JtkqqcpqJVL8x75yo72c0fKIxRQeuCLAOC
	 BSHKrCSoaJLypyXdpa4dUsPFdPxxdIW5PocvsPYvOEnU+Z22ow3X3LdicldqAN6Mtr
	 C+quDG6xy8pWFG6v6KfqR2Rzvg6tm5Oc8zUagUT6OfXD+mie8uA9Dv4VlCuzUDnkLp
	 7PsDf8nZzkC9gnEiNTcUATtTGkSblv/WKJhWcRV9sDOVE9NitEnV3uV2JaNBPKBeZw
	 iWkPJNVg6St1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 914E6C3ABC3
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 09:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174712979357.17145.5283215884019111317.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a7b05947c6554cb0971d8eaf3b24bb267512de34f3e5f3c9e8e18dda0b84fdf
Date: Tue, 13 May 2025 09:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747129793
