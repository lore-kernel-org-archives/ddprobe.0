Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 410AB357CED
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 06:28:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783060114; cv=none; b=WNdIbQueLl9MxYHODZ/9RJca3oGZqhR5ojjAI1KZU1MB39wlnDfyg/RaM3cqQ/BPx6iqvl7ioY6OUdjV0tlvTGH4kb7oQqDv6gmE4k+WjgpIEliMG2uBhK1QuxgwiQ3MflXHjJrvqGzMX3B29e95bwE/Zq0j7jllQjTUDKASd8o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783060114; c=relaxed/simple;
	bh=/h0vNc5moN4KVNrYz2UnFOafVGeUtdm1iTA9yWpnunA=;
	h=To:Subject:From:Message-Id:Date; b=oSlED6CPiNh6EXopJatH9si9eqz4iCmkjCRF7IQAvxijvpytI6dsRt7gJqRuNymTpPzcUK1aCa2K86KjFPOfjTmnaIIb7rrI9uTs42g4ooermrxNcbdAk/MCsY5eHI/ry3OrI3YTyyGXTplHJ6tXYF3mBLbOpq3W5FGFSXmpJWs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FIz7oWYu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FIz7oWYu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC930C2BCB8
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 06:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783060113;
	bh=/h0vNc5moN4KVNrYz2UnFOafVGeUtdm1iTA9yWpnunA=;
	h=To:Subject:From:Date:From;
	b=FIz7oWYu1nNZqrDBIm5/WCGEt1g+mTkfTesfi8tOPhdzGgRnSbs+WJMxW4vXRNnlL
	 ZnSLFcxJwJ6Ru92UT+16H2YZawKlu3tbpRa/DTy3IoYIDHNfGRmzVVWtxykS5SY8eh
	 L5TLIVMT78spV1dZhwMAM66l9eX0GgdsqqNWFnSpPxwGt7pcWdUcf+B6s/u2+mu0Rz
	 AubMKS6iPc48YhAFZwPipcZxmBmB6qn5h2D2vbChykRCSPHbLRZRwLR8rv9A07TfbN
	 32nl76FVWQe4KLmvajzHB9HAqMwkHVTD6HJFHl4wfJs7uLwRJpe9xur6zQ7guTfYxb
	 zhrvKuXjsGZVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9F2EC43458
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 06:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178306011368.10335.10962443078318228536.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d317af6c628ec783b04d4ca18deee59186733cede833d2ee699cd746c430f358
Date: Fri, 03 Jul 2026 06:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783060113
