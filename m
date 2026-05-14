Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29BB32EB0F
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 05:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778734834; cv=none; b=P+aEL+DCs9zoxfd73pW8DDFZ/UzvhVpj6HlJdeBD47wzk6Z8CNzIOaZrau3qYQ1obiuyr09BE9R6vm0m4nGqhJK4YiiRxtJSl8DGUilTpY6nbj+Q6BZMMLO7fD4zZkMyhGvdbnE1cPqGNXCG57nngp0cpMtofqtl+vs1sNyTlf0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778734834; c=relaxed/simple;
	bh=c0ZKffAYfvgz8/8YGjNH7LFiN39xTmJbn1P74Mw0ZB0=;
	h=To:Subject:From:Message-Id:Date; b=SsBrcwcWHdvKXyYZERTtG3OKEBvEzsxJJeEA99r/TpZ9FSd7zKAtL8OVyeWT46BB/+Eo+522KTV9WH3/PzO1d5KjxMKQxUFMiDNU+VT/6rMNq9o6UsAIAiF3xNXCficAC9yf6ZMP2S1cZ2+wvPSymLfrdX7qFvtdVLwoRP00hS8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bxPkpQOT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bxPkpQOT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B95B7C2BCC6
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 05:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778734833;
	bh=c0ZKffAYfvgz8/8YGjNH7LFiN39xTmJbn1P74Mw0ZB0=;
	h=To:Subject:From:Date:From;
	b=bxPkpQOTzcDJ/O85RyPV6ZRcc65qhz7J4TlDUX52bApXvhPKN9TNCavWhqmBkRbUx
	 ujnfWZf3lfO0PD0z7gnF0jBfuGwYBTmnI61odZE2AWzXrB6QJcN+2Ppfs9OxevovKp
	 k7jNFxoHsAzetSVYR0/q43LUI4TxIXt2ZsWZ4sdhg8buD/g021cPJO06i8+3mUR4Js
	 ldFlUs13f0G+B9DE+mHttkLWzWwi5Ep7KDk0tpE3/tbmugDDB8hwUdMXIqr3vlL85z
	 lASiDq4GVhik0GG0iPMIWaScPlGmRVhVfVqwDVbjxJRtQnMFKLHfUWSC1W5detv28X
	 kFhFH0jzreq6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAADDCD4851
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 05:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177873483369.8515.1518787399769524540.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d1bd1f4986c2532e3aed0baf9e9be9aa19d4b036eadf2b836cfa3f04c0b28ff
Date: Thu, 14 May 2026 05:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778734833
