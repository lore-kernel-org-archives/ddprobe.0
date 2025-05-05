Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34E82801
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 20:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746478194; cv=none; b=VQ/tQ/hur+duxpxt78sq47VqF68l4AGva54drse9rBoTSoxG8QzEFaoRi1iWxFOunlVAoZ7Pl/MG2VcKck3qiI98wzbSXfuSfC8vr9rudxfGlT2O5NX+PG8xCer4gGE1oUY6+HcgNjk1Iaarp80xutP32zoHjWBOcGEYsZnwFjU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746478194; c=relaxed/simple;
	bh=/EL9182mY3lUyjF/9c7FBYWbGdIoGZJGTqR3nCI8yHM=;
	h=To:Subject:From:Message-Id:Date; b=lFxlE3sZcfnyOZMwcWhA0UksRFdu5oz2oUwcabYZRGuWpecW3YMiiMGz657Rc7WC0mrNoLJujjK3zEZ6LMk20guz3zyBnwFmhKLthg9mfwJWGMq2HydwaKWO54nP67g+U/411QDKnLePR0PbAKiT/Op7aTCDzY6taOioaKJMnik=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O59Qqt97; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O59Qqt97"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F2D3C4CEE4
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 20:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746478193;
	bh=/EL9182mY3lUyjF/9c7FBYWbGdIoGZJGTqR3nCI8yHM=;
	h=To:Subject:From:Date:From;
	b=O59Qqt9784exWw7Z2eZE2KQaG9Se4q5uZR5RvMdgJrLMmd7N7w+dXSVqBiSalHHBc
	 BsLuQZCCTFOqkR73g7gLbSyyiNDXRVCvObkHCYw8b0pIptfqWPAwodi4rP7Z82HR8r
	 MR7pgV/LINFamKfaztgONUNeLLJcFK1DwnTo7sWq5dl6ZOpTtPK9dyv1VFIjkBD/Df
	 fkEjPJBqvaDQWr2XCbQ0c9iCQ8LunH4cG9zrXS05/5GvSHibuecJoe9nbs01Iut4sU
	 mqfTgt46cJ/nWSTKPNZBPqYVON1J+jFc9OfdNuW21W0znKX/tOlCnSc16Y3d4lzQNd
	 Cy7rRrJWaqw/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F556C3ABB6
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 20:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174647819357.20766.6147983987187400989.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8dcb107f1359061eee90fad43baa4cd604d96687406b5718ee0d05dcc8829be6
Date: Mon, 05 May 2025 20:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746478193
