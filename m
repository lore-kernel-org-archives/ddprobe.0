Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61CFE8C06
	for <ddprobe@lists.linux.dev>; Sun, 25 Aug 2024 04:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724558754; cv=none; b=uPimwYvlQOLTzs3ExWySIAqijwDURvUPczn4LuIDGGnON1XmYCqHUCl/ElPANjIOAvClHvVTs3wi7fIvMmlrREQbF1iPr76r0bvrdTtu+sWQAcfwLOdeZBRTnO0Y0N5+w/e5O/AmC3qjF1CzPkhcPMNtTyGQc+FvHSIsXcHbfXA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724558754; c=relaxed/simple;
	bh=kSCTAb0VtAgX7YaDD61gQ3p35bBwx2zSKM2kldXPd4c=;
	h=To:Subject:From:Message-Id:Date; b=m527kSEsHd+nqQDIKlCPpazEBjqRnVrlR6S0JFGtFDRK3+YAX+dtHd1GcC2Bq+Z8afl7YLDYr5p2CHDNqG8I34z7wNkU2Iz0jlwVQ3y6v+Gv4lZsnJzf3w82h4IkfD7UPb8wwxECdmfuna2duzEqI0p2MLyRvOQc+G/0lnHeRWQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Scdv0rSk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Scdv0rSk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4C5DC32782
	for <ddprobe@lists.linux.dev>; Sun, 25 Aug 2024 04:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724558753;
	bh=kSCTAb0VtAgX7YaDD61gQ3p35bBwx2zSKM2kldXPd4c=;
	h=To:Subject:From:Date:From;
	b=Scdv0rSkpfbU9cSEgkcxuZN4e6bwc77xIyPu0YLKEd3BvmP+ZmS7iUasProBa+iE0
	 4Gt3DBM/RJEdTQHH3ZliDQP3ltfSFMMM/U45vx4bHpFtxZz9oXrl8VM29MboQ69AsQ
	 3SGxtfi/9hPAfAsvG95h/bYGpNGOoepWoLiQVoVZb8nH36j4S4tsV0AafSdaIVlJoL
	 zHs4kY05f8R0VIwTc3xD3HNH65IN5CUtLrBv9dsjTvM9JZK0t8FOUPkmYoc8qwU6nX
	 X9D3y0KaAByUNuFvrthBenAS8QgjzGXvEHY9eYhbkOKM8AN1/NLhzOJHycllqmfcTj
	 aJQzZu4G+U+CQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B662BC5321E
	for <ddprobe@lists.linux.dev>; Sun, 25 Aug 2024 04:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172455875366.31185.18044466041687139085.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 911e0126edf1112643e0932c7a4e7b1112c2bed2036a2fa75296f0b09c5df049
Date: Sun, 25 Aug 2024 04:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724558753
