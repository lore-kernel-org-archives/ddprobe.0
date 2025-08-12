Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 049522FE583
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 19:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755027595; cv=none; b=OPAN4gtTKkkCGWV075CVPkmWMMRe1Rat860ju6/X8GqpJdWIv6RN50H16FNsb4lZ2VMYOtuP05oRzgWgxHb5XMdliCzZRzDWkGMiOsmvL6N8ZHzg6FBfer2c6ZHDp5POiZK/x8q6bWuWgBkvzB0rtoQdVpeyhBRCOZ938knmeW4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755027595; c=relaxed/simple;
	bh=/q8WYCxDPJVpRrKxXtzsg8VMKCQa105pAGhfp2noBEI=;
	h=To:Subject:From:Message-Id:Date; b=RcJrHNrqA5lkeqXSvaCSZvTQNYn0jylTiSbDCO/5KgKyUrQGPxS0GWTZGttaEUclyazsBkOqg8V7m31JcKNf5LX6gUsQF2+kSz+v4ny/Hpm0KzbBGXYxnqLYy496qKpczYVNq6lLBe4lyTe8bEZ5K/SIuqXknqgEIq+tyEoMwS8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mFYRDCpj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mFYRDCpj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2059C4CEF0
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 19:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755027593;
	bh=/q8WYCxDPJVpRrKxXtzsg8VMKCQa105pAGhfp2noBEI=;
	h=To:Subject:From:Date:From;
	b=mFYRDCpjTz+Ap2JJnwWscWCUc2KGot5MmjfPdzFMPTe37fq5d31goJVzH4VA/dQpb
	 vXEdtmEwUz+t8xWQsHVnEFTM1vRd33EgCyj442ocrmf/RyvV5jYACE3+1wsnIMsur+
	 B+JmfcsMGyeRbaT1qzrs5yqQac8LTrt7rpFvQkP+gkTKoGo4Ob9wt2Tb56EEtRV00Y
	 0b5/QcuHnvQvLc2z/+4KjThQgnLk4ytnDuhdMeMJJF48Wjykk71H+Hg3oxSrk2/+JZ
	 ap8hjFRY57qEsQG58lVOXoCohIeoWw+GCJYFnEWnvjfsPE7OiOOHsJEpxlpuXytHb2
	 tOntX4q4GKKlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92862CA0EDB
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 19:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175502759359.12758.5467044787653361739.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 65028cd9ceff62167f5edc84cffa0bf584457552908cf09aba3224c2399c6b30
Date: Tue, 12 Aug 2025 19:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755027593
