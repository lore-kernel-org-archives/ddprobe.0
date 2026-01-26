Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D6332BEFF8
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 08:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769414634; cv=none; b=rlNXVWykLQpMxtGDwzO9ZvnVvz7govUFq236l2KFEHGU1zQ4BoSrDqjsvfWBJA/2HH7BLZXU2JetCwG9SdHrNmWZFTYzv6rEAxBd48Bcr4z6lFJjGLlcTSvMMbGH2K33nQOOVdbbVs5FFr+rd2762J7c0a3Om/Vl97jbpIdxRBA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769414634; c=relaxed/simple;
	bh=62C8YU1O8ijmR5ilbbs3xJWdPHnrFM+Lg8Mc98pOb9Y=;
	h=To:Subject:From:Message-Id:Date; b=AD2UZBQo+r9h0T9NjtfYN/3saByjPwy5tQw75VqFlmllm1EU6RY8jNxhdCjJ79pG65/mrfJE684d4bGwH8Cr9HFR4gcmQFQ7Sokvj6kzKzEMzl5jCqyfBkc56NvFuoa+sye79MavOngzgm9Q22mDgfSGFEpwFqynU2C0WNWo440=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ivhn+Koq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ivhn+Koq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9BFEBC116C6
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 08:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769414633;
	bh=62C8YU1O8ijmR5ilbbs3xJWdPHnrFM+Lg8Mc98pOb9Y=;
	h=To:Subject:From:Date:From;
	b=ivhn+Koq2qK11VHXEiiLcrdhsA2kxCCtNKOY9arpjIVK2dEr2vQ99apLaSK7o5TGn
	 BCXPAFTz2eF9f+CRUw1fcRfkkLWD7D/Hmm+BK/XVwtBnw8jsFdnEgXNuOfVU7CcFZ6
	 bFwiKVx8GtVEP/XycSm4WSipb8TjIIbApXnJreu8Lz2jK3hyBvApF2i441hEKXgBeL
	 E4oVd3s1XbOrraDZKad8YdyJf9q6YwOZDRfjFnfGuM/B6n03+v7C5dpCZ7QGfarz0Y
	 Gpl1muayN0ffwNcYTyl0aSuZXYawzr5K5Z1IHKNZaTpoHCF1kjCgrOqfDnA6yfm35I
	 gi+gov9Utr+Rw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F3B0C88E6B
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 08:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176941463357.30484.1701212768003958182.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0032d05a8f6a7eba01461e51840a543864dd0431a39c4bd47862320d1699e38c
Date: Mon, 26 Jan 2026 08:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769414633
