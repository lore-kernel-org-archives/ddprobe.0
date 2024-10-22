Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1528913E41A
	for <ddprobe@lists.linux.dev>; Tue, 22 Oct 2024 20:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729628754; cv=none; b=hrajn7XHz3IE229uS2OKKTJLythGZBsTz9RGYX265RnF6k0bh05AkKiMV/uSubbaWL9bonbF5gEkG6z2z1dTOQ1am30zmduPsWJezCeO1LPtSWqLu6bL5fKU2yJnS76V9e7i0Jn/wd/Ue2rt4wuq2eKnYP5IaqjQUZsRvqqzmE4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729628754; c=relaxed/simple;
	bh=evKjc/lSWBq9SO2jNru8w3jno509w6ET0jc4mlXqPbU=;
	h=To:Subject:From:Message-Id:Date; b=A/lyYHt+Ch2aC/geIdccv7kk0xFfb8WFnPdP1jZkUD3R9n7nFgULgixEUiV8Nj7BMsN6WIrkiZhpoEWwXk5/bgbdSsgATZjc7ywAEpcKELJabLiPiVSV4FitMdzJa6MeQLYzliUFfXMo5dPJ1OsdOQ+5gzA0EfL7yDCtyQd5guQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a9hUBFuu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a9hUBFuu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F6E3C4CEC3
	for <ddprobe@lists.linux.dev>; Tue, 22 Oct 2024 20:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729628753;
	bh=evKjc/lSWBq9SO2jNru8w3jno509w6ET0jc4mlXqPbU=;
	h=To:Subject:From:Date:From;
	b=a9hUBFuuCioq1zBderJ+jvBmCvjACB7fVjIJDlkKie+cYg6m0ybYCFqEI5lJ1cT3y
	 9OBs4WuX5RvZLHJTpPO9xVqxZ0S1SnmKU7T0WuhfawTunbvQmoijDsYpx5U4bJZhKi
	 ad8wOjZVwMC7YDLCxI+lLTjFAQUnmfbgdi+8T05f3rbTraltsXpD5zENiQqVrpbyuB
	 NTkT/mdE8ufoxf9ROcgCMY3A4ySiluzBT55gztsHxABu740C7GwKBvgjv6B5L2Haun
	 zurueSxxLfZ4WhImPA7/AHi+PDb7T89Q0ts34EHDwOcXGt0ygT5249S4YV5ZKhMHep
	 zdmIAq7ZaDMsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F792CDD0E8
	for <ddprobe@lists.linux.dev>; Tue, 22 Oct 2024 20:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172962875358.25411.1018427502806044003.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6caff2f338ba7d04e4558f19c05fb6470fb8948758c8d544ff1e5f7a3a200bd3
Date: Tue, 22 Oct 2024 20:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729628753
