Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 543D515252D
	for <ddprobe@lists.linux.dev>; Thu,  1 Aug 2024 11:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722510354; cv=none; b=IQE7PBzRZtCRddq/p0OvmN7D7a0YN07nAdSPt/sdDV9nEPuwhyBZDZ4VPT4qcTpFItPOo44e0KAi3OGh2DkeqAu2IGUg3W0wXx0YpoRC8ZC96XE9SH/g01dNNWcgCJ3juEFJxi3s8XMco1qq0w/pXdQ1hRtJlFda8H9/t61s3UE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722510354; c=relaxed/simple;
	bh=YNNafzoGpl1/hg2tz9Fc4uEpFxOVsNltpcFL5m7N7fg=;
	h=To:Subject:From:Message-Id:Date; b=pa1l2Q+4dfqqWyTof3P3Zz1EtCB0fX7yyhuwCveF5eYmMOQNtyfFa/4eZgn2a0EnwlixgE1OMjkKDUsLdeVGfsSx0Q47RHj/BGkzOQvumlAQWG8XwsbIqJYokdR2/JU+iWvxS6cfXBoPbbsHiv/FuoVoyBM1OCJA1X8maOEG8bg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Tkx1DGGl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Tkx1DGGl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE2CFC32786
	for <ddprobe@lists.linux.dev>; Thu,  1 Aug 2024 11:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722510353;
	bh=YNNafzoGpl1/hg2tz9Fc4uEpFxOVsNltpcFL5m7N7fg=;
	h=To:Subject:From:Date:From;
	b=Tkx1DGGlo1ULLOzeFfYr2ZQSjLvarxQEP76mxyLAJQs7GRf41ZpMjIOIZg+a9uygl
	 mXk6qlsWwFACGZ4ZKWtBF/lyrKhKaVhQnHYbKKSOo+q2npsferraLGZCQHp6r4/nXt
	 I7NlCNZcWN/K1mPh4CqDg3S0BNGz3NtHe2oClv32RWN3YfKcqQsrcf6a2tVIQM01Ir
	 eWM67t5ofqA6lLlv5JbbUHa8OnGt0Bi5f8+Slzi6LmHn7pMVkjbPx6SIgV4qP0q6ff
	 VgpTxN4hTXS2Ml57Cg9dejyMM0uq6vHjO5Mkx01MwdkTpKqhNfNlx+9UXO20MS0kQ/
	 ShzNv2L2pXeRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4F40C3DA64
	for <ddprobe@lists.linux.dev>; Thu,  1 Aug 2024 11:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172251035372.13575.14307466831358999004.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd8c8d03485d1a825a958f757499c34ba0ecf1e3462fc23c09fcc4fe807af04a
Date: Thu, 01 Aug 2024 11:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722510353
