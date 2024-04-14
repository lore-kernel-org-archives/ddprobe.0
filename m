Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A8F4224CC
	for <ddprobe@lists.linux.dev>; Sun, 14 Apr 2024 14:59:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713106763; cv=none; b=YnqpecwgLI6ISUkPsrKmOYnqpKDAJAs5g+372576gLdRTXI5z63QjPzzJaXf+kg1ys8JwPHJCVGAYgDFNgoyzQqZz02R8cNJ7m1tDGP0ZD2Fjgq+5+vLB4FIuCCj/7RqjE8bvPhm5UMN0bUiBt8q4cBQV7FDh2jF7LFWBZOvbkU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713106763; c=relaxed/simple;
	bh=yTIkuGofxw10SZM+Uc3IoRRZsCUfeQ7JfUlNKJx6DB8=;
	h=To:Subject:From:Message-Id:Date; b=FUetsi+BxQLqasHtpjUykXL0Ra4W97lr6bxzA467+1aj3bYXgpeUak3gTiQlHPlUeml2q7qrEXehcYKJ/KDqckILpa1R3AsYIkhHkbVJgHY53BbJHBq73oMcPyIOR/mRmUrCP8lP3M4B9lVgJsByBZd0L73DPh2FDmOiiRYwQXc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bDC534tN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bDC534tN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D30AAC072AA
	for <ddprobe@lists.linux.dev>; Sun, 14 Apr 2024 14:59:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713106762;
	bh=yTIkuGofxw10SZM+Uc3IoRRZsCUfeQ7JfUlNKJx6DB8=;
	h=To:Subject:From:Date:From;
	b=bDC534tNsBsDaEnVrbB3SO6I+EFlTBq/fp7025MWgVE3S4MF9hJe0ZnjO3e7f0EQi
	 /nHPG5Tyq41mjvR+ichzhcZk1j9kgWQx3jqbY+8/2QVW/boiQ84aO/znszWqVhzkjB
	 nrTfqxcn0xch8HTSnT1V9Dxwio342baR/cgcXKPgeoq/0AOwDP9IvlBxXF1ns/RFS/
	 wRqouo9T9jHgVNRpdpLPWlVW9I3QMKnY10BuxMGxP7At2PSfFJiGKoJq/2e2Ndzt7G
	 aj85vva7SteHIN4l4eShkgE9Fbufm/tZ5rCT1K0LIg8my+AdWdJvS8tsu3h3+Jie++
	 bzCfNoNwDjGIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B936FC4345F
	for <ddprobe@lists.linux.dev>; Sun, 14 Apr 2024 14:59:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171310676275.21364.14783348342192402229.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: decbdc674fd01abc9fb9b8ce375f180854aa294785e6feae4d595b8063b5a848
Date: Sun, 14 Apr 2024 14:59:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713106762
