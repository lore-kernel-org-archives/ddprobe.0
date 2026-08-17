Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FEC5448BB3
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 16:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786982434; cv=none; b=RtSo/06riuJ/2gHzEy9riM172t2GoeScyIg9L3qJSxr7QU/mzqlJP7fth2pj+858IU+lP4gFgYt4/ceSTNp/yoT+nKuB2yhS5WeuXfFFjTERqzwyVEhqpAcUQWUNJKtpopiPXBXwHUZJbS0MV+CMOpoCizyFmTVtLJ+s39z9bRY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786982434; c=relaxed/simple;
	bh=xxZp359hw3dd96ZnyUY4nxPi4tHreQ3TJ7D8GblfwKQ=;
	h=To:Subject:From:Message-Id:Date; b=JdMwgRKdA9ZE86TLAH65rxKaVgvR/6vp0sJGV33RMZ5x5w6UHyEgP+czjrh+E18nKyWew8HmF29gQrZvqLxMnYSVOY8gokiU/MLL3VYeyccoCjXQ/Mm/zaaFfjUlAuTb/YO0mpKemNTW2lK3YX9KIAvfVe1ODJypYNYIDq/snQI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JL7JO3cj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JL7JO3cj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCC02C2BCF6
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 16:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786982433;
	bh=xxZp359hw3dd96ZnyUY4nxPi4tHreQ3TJ7D8GblfwKQ=;
	h=To:Subject:From:Date:From;
	b=JL7JO3cjuP2OUMS5z6JVRj8AJiAKnfkPYnHw7e6dm6eZv6PNNO/GNQzFxJwhWxLUK
	 z8BSZI0rNhx1O4VkmYVtSes9opddK8bO8CpxmOdXtXC7YfeuFLj8+4E5OalVl0yT6q
	 4iFne6So3esPpVWqDBen6GLf+bgXD2e13WKS2ZgJPMS8kpI2S4tnAZM1sSbNvvZYFP
	 5lMwhMPOtJPCNY9BS6ZnUFuewVknAnxRPSXUJ/wHZSImxudz/x8X2ZwFIPcMnb2Xzt
	 rJN1yi+5s/Pg5zYZZhrooQjFBe5MplH1d0Tp9iBDlnTKglezmg8jqsvyg1Seu2GAyp
	 LYUiNsAyveDMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB121C5B572
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 16:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178698243369.3252.6478504767750052891.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50932db0bf5422700c642c778bf592bb3c8ff4bb0902e73bd742498eb5013f76
Date: Mon, 17 Aug 2026 16:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786982433
