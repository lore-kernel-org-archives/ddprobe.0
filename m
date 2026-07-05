Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F90737DEB7
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 14:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783261114; cv=none; b=NsXfKTRpY7xAAlV9WkU35RY6r2gQpP+d55Ik3KGMshac63o8/bY2w4u8bGbe5gQ9fSKLTz3r2hGFR5hlT4CoqTfQlVgYUPs2KuNIalINI1JFOGs+ctVuDBUVXQEruBsvugwb5/M/4B9nF6GwrBcCaZkimAjspaP01YIs05UvcX4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783261114; c=relaxed/simple;
	bh=Fe9uGicweVAW+8Iacn73rdqzfRxHtN5qEg0pH5y9Zqs=;
	h=To:Subject:From:Message-Id:Date; b=BFwD8NwktWPbbaK4gRGtnjSsPXnLYyT4xg2BB2smEV0cohXixvTPsAjaL7tZdJJwK2b674h0bpLCq0dUlSE26nJz4UftsGAI+SZinA66wJRlx4DhYZFm7evUrcJspkdrlcTY2FmMJhfk/L5bFtFGqNeWhetJnghJlpS2vINuaVQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mllHp/F0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mllHp/F0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0D8AC2BCB8
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 14:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783261113;
	bh=Fe9uGicweVAW+8Iacn73rdqzfRxHtN5qEg0pH5y9Zqs=;
	h=To:Subject:From:Date:From;
	b=mllHp/F0rzHOAhPpzR/uLMp+W7QVPxeCcIjs054vjQPzNwIiMvgcgWc0aV0DsuRrB
	 p21zAUsk2UhFftabo6MmI+1GNQAOFbgSSrLHLRzHkHBmDO0K2rCCeineZnH/ypVw8n
	 sSuxwBrJbaCZJ+I5tJH5WA1JkUsfl57rZXi+rwg0RtVHy3J3snA6ngkL+n6vKRHBge
	 Of9/qOaJZ/1oqV7+OrD/QoN89I+jb0XDn6FkEKDgRWJGbgteUfazmmZAHAlGoLN85B
	 VSSu03p/lY+qLDKak6kb64sgNRcyxzlPWpgCsdRO7pjz5F3hjs8ssWAtkakbRXWME9
	 2eFry8r3k0yVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE900C43458
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 14:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178326111368.4596.16128841481066527621.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6b30922fe2cc3469b64341c7c57380edf41174c8747e573edfe9595d2a4feb5
Date: Sun, 05 Jul 2026 14:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783261113
