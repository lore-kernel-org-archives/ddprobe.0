Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DEE9F41F5C1
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 20:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786999834; cv=none; b=B3GZZDTXPQD1wq5CpdlEIdGcEifzBtz2blHA7TLATYbrTYWW8gx9AtRVCawp8dOXSjSV2NW21W/5axYwvy7ttH1vYdBx521cKjdqcio+cvA/qzFH/K6MsRoJJ+i3M19CJ3bi016ASD7eluU23vQh37xpz5uCnlkheHD8fsHtl7c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786999834; c=relaxed/simple;
	bh=ogeQAtk6scs4C49oAx+8j7+JMPEx8CZH5+fvNo1aNtM=;
	h=To:Subject:From:Message-Id:Date; b=NMatl8T/wdnbccvld39L5P+1DEiqwXCgy0BSykmYOOB4eMb6RxUHWEHKn49Ft18J6JoaGl+/w0VnvtSAl1Id5/RO2wEApeOGUGnWVQLoxdsEF0ZafPiLX9u/W27Q9z8rWJ7lzNc5L0M+i5LK2d0SD+1KpjFnl9F98g+FXHWnXoA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kNRR88yE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kNRR88yE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC748C2BCF4
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 20:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786999833;
	bh=ogeQAtk6scs4C49oAx+8j7+JMPEx8CZH5+fvNo1aNtM=;
	h=To:Subject:From:Date:From;
	b=kNRR88yEIXETNYG0jYCHWz6KEyKb4vIqErGXKXQ5m2zAADNpt6QNjgVxCANXvqX+s
	 h5ZsBmNSQ0LW7VgCWiZkDhDPwepCfs0j0ccrgoF7ra7i0fR2Mi35SUGuadN+KSD+gN
	 ETUPPFrPG2FfNxLBy+d0Lxz4NISYpYmgaiPiTiZseSo12G94y841S3taArFZVIVup9
	 pogERe7/NUSPwCCAab+CJLfmr/b1RgdXMJhh2dsH/hGpeOB718n3A8EvYzgiHOwjpy
	 V4umDjO7wEM1bxVj3JXUK7VVEhSFiJEu+nEYXTtis4xxIvcPiAERUJ7RFFVkWSn1Z3
	 0ZZRcHEG5zOyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9B62C5B572
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 20:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178699983368.17127.6062056493310038412.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 520c10fb5e8685ce7fce0cab9851e48c15eae2b3760817499697bee7d3706a28
Date: Mon, 17 Aug 2026 20:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786999833
