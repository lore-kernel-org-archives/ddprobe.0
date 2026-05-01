Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F3DE3594A
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 01:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777597654; cv=none; b=QrabfM8hO/UV0cAlNCNI3Aqc1KeyLrwbhUzh2LE1o8IYRGyntRvFy4L3H4nAW8vhUo62VApJmFf/bFBIt/tMbs2WKXFmqbQmIz4ZgBFazGonR6maQYR0H/kqe1+Z5B+ganXW5G53ZDd8ipCfY0K86AdJAZVMWBdzK96B7bf8vkM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777597654; c=relaxed/simple;
	bh=xmMduBVj6abzASK2OnVswYHXq56rPyGHgru5MimSMgs=;
	h=To:Subject:From:Message-Id:Date; b=iChYqVVF0xh7Pxub2LlABNEkiB/rHa+jaiCiM+YvmvaOlIGvfEOqCYmetW4rLvCw9nMoUmSfm/8dZPeh3Qb81CavXKJgHqen2unU7MkN17rnmlPeiCh/b6VqzjgVyaUka/5gTvGZr8KrICSkw2yBUXrBUgh5dPQFiVhIxVdpRZY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n73yw0x9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n73yw0x9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C138AC2BCB3
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 01:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777597653;
	bh=xmMduBVj6abzASK2OnVswYHXq56rPyGHgru5MimSMgs=;
	h=To:Subject:From:Date:From;
	b=n73yw0x9dYG9PV6euH5iXPJR5K4wW3vCnquf2D7n8uON8+P2Fx3dG4QzGP47ge+ll
	 IlCi0ug1iCzAeaxY/NbSm7gw33D/3IWo+kV3bhrAWV3Ty7YWTafEhrgLwvsR8T+Wiy
	 OqrW9TzBZfWO2190DlDYfWfdIomSENLL+QtbFLQdtu4gRfELaw4HQko+dTESrOMF9w
	 uwob0IebF+iiTgmpD63L1fnJu+Qb+ODHS3WigcPsj/WJyy7sYz50tQ/89AMLAlPKdP
	 mc4QiLKBR79n6ft24fbDMuEebpqyGKMQ50AS7DQQeclZurEGkO9veFvKPZaUzNw+w/
	 Q5GlXzEgoGBGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF8A6FF886F
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 01:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177759765368.833.12549592120801819212.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 44592385055663fd75fca5ee43c5314406f5c651cf9dd1953c3f86ce29aeeab5
Date: Fri, 01 May 2026 01:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777597653
