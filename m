Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 437012DA756
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 19:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787079634; cv=none; b=pAgbFV5ykj3zWkjp41Th9TWg7gHNWaeh7Do0z3OZ5Oa6OQM2JBDZO8+eE4Emv/Cz5mQvVin3io/qGKM03gZaejgh6piRTJPHSAT+S2u1j2rziK/av0dG7D4kZBywnSHJylIesDBriHyG1rJnppbbhX26/V/CZBCUPbf0MLHm/OA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787079634; c=relaxed/simple;
	bh=f741oisPKmFwIE4W+cf5n0YfNyVAuPt/ux2GT61IApU=;
	h=To:Subject:From:Message-Id:Date; b=ulcwg9igWMMfarkoFUEMyWrCgyUqYdXvkkQln8xXCcu+FwsKCqwLq7mHakKV6qvlrDzvJQ6C6AZN3JLUPTwX71iQx9LqOl9tPrTCTFhtSq7az94YZqxMq3or9rcSJNAX/hiXcJK7rqkjjQbhlFqtTeeahc1Wxw3j6SV9WK5ErpI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DUQVwUc8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DUQVwUc8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D20EDC19425
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 19:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787079633;
	bh=f741oisPKmFwIE4W+cf5n0YfNyVAuPt/ux2GT61IApU=;
	h=To:Subject:From:Date:From;
	b=DUQVwUc8vPo7LSpa65cdTYeRflmQms9KkBMVYWOxr/d1tqzwjI8YIE0+e+mvBZkWD
	 Iw6ROO6yX+IKAt68kEuWWYWvM7Op3FEHJezg+AJQMvaFHJnH0tb2UZUheYTiwjIo21
	 gPftcnFRK/GmALslZbpS11IdoEdSBvlBIOAGtFpndqWn70f8vQVnUv3k1BwFmfFMfo
	 d0MGLDvkFlDrhuZZrC90sz3GGXvorpUZDpwHTZuhgf0FZmrt4S4NoP+9CD/KBX6qBC
	 VMc3GZT4FjplRnGGnr9NvYZDY5Y+/bj7mt/mUNAH4x21OXYooRGXmYNzKGiHGWq/3y
	 a3FYtiir2Al2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD899C5DF7D
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 19:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178707963368.16171.256302046583256724.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d7c763e3e4bfeee19fa17d1f2aef9844251c78a27a14f1a9ff11c1aa3dc05b4
Date: Tue, 18 Aug 2026 19:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787079633
