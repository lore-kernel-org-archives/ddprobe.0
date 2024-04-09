Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF3077FBD3
	for <ddprobe@lists.linux.dev>; Tue,  9 Apr 2024 13:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712670497; cv=none; b=I1hWJKjO4EErKpR6EqCPYTOfwhAYGcpYxCRk45/uRIZ74jvaBJuDM76hqD5ces9Em1y/VAe1YmOyd8AP7fwj1jb1RFDEU1TJYk62++eWcUBkvf3miR/fGoj+E/heAxnqTgVQIS3kNKyEehSwWPvBNA6cKQkUHreZ2SPS7PL6ZOE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712670497; c=relaxed/simple;
	bh=Sqtp2nX7qqX6QB64WjPyCFm/ImkgzHAkLFD5rGrnQPA=;
	h=To:Subject:From:Message-Id:Date; b=lFwBwv05s+tyPABKipnn1xYIZYH/8U3Bu3+j1e2h5lDqHnSZtoMRZd/N9pEafXbr9fLaYyeTn2Ydffi+9qW1OAw1tyQUuFdiLLU2tpt9Lf6nTzemf+kbBtNH1VXj/u57+3eqVbk9O6+m18Mligqku2ylFbp67JHVbC8GFF9i1NU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Mp0GKw1R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Mp0GKw1R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7FBF8C433F1
	for <ddprobe@lists.linux.dev>; Tue,  9 Apr 2024 13:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712670496;
	bh=Sqtp2nX7qqX6QB64WjPyCFm/ImkgzHAkLFD5rGrnQPA=;
	h=To:Subject:From:Date:From;
	b=Mp0GKw1R37GYybsZnVBrjoBSBXwlRkT2a4Pg4Gx1KYnOgppD/FL35HaEOZr2uJSvn
	 7xQiebWuW9kEg0yBk15KC723IvFsDT6URtbXvaEhTvc7WrReOIkiiSof9nCCFAxBhM
	 iLcMMToIqUoX8O1R3oRqkObhOza6M2jw9JWiJ5kWvwaSMSUl2LUuLnAz1V1k+Eefcu
	 s475aS92Z9020dYudCDMOOE8GRlaudR3VePJwerTuY8AgJyaaS/9kogPPywgU/aisv
	 CTy/ratOg6BNm43qOlUT7vX0EmilO3nidejGPabUcoR0yMcqlW84ElfZJwPUliP2fx
	 NAveBTLk3yPOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 709DFCD1284
	for <ddprobe@lists.linux.dev>; Tue,  9 Apr 2024 13:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171267049645.18626.7509947694761274794.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d5785b69882d3976931f83ecc00530621d3a12ad23513f55ce331d157daa3b71
Date: Tue, 09 Apr 2024 13:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712670496
