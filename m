Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2595634A79B
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 19:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766517834; cv=none; b=EwnGHJAdQeHvzehZCjjMODkoT99LS2Wj1X3yaBd+H704MWMQlckhyEE3lqa4y8LtOosa27K128rveHtffCqaNQlJybxMaa515lkrX0Vn4GEbOhurMjItTNi8Btz8SBkurTlq1KQiyOy3Mny3W9z2I4OxvZhyAod3rb24uP5TCVg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766517834; c=relaxed/simple;
	bh=XfLCY/pxSq9WqwhucOr6h3WzLvPwJf1Yjhok8oDC7YE=;
	h=To:Subject:From:Message-Id:Date; b=o8rkIpq85r5weCME1fXWMcLq1TiFfJBP1HYjM5oy9mAbLY2Io/WvZw0F6xUaOs1HwkfNyrLVOdM5jS2Tbc1RG+xol6l5X5s0EXxkXRxwSqq1vTWYaRgo8LxylXVgG0VOkYXsIkpiho6SE5fQWkcS/49baG/HWQLSEWz/ln/PUy8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=in6WjRCt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="in6WjRCt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8034C116B1
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 19:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766517833;
	bh=XfLCY/pxSq9WqwhucOr6h3WzLvPwJf1Yjhok8oDC7YE=;
	h=To:Subject:From:Date:From;
	b=in6WjRCtBu/7HGMwNGTJVYnAgryX/O/AiiZWrcEspCcU9SaauGU6plu5upbwJxsrZ
	 fM5Q+ojhn3DIE95bdWD8k6Vv1JBY8aCT+EDX0NovR+mcee2qqz3ieUT435lCF5J5qg
	 Et2rglIVAq3xRRDAzTse5khYj8k+sIFiEKrF4iFFSWUPmVN6y0sLOHNi/qEWmT5TVl
	 Djp/HgVELFAroX47ffDPwPPTrsO0+YgoBpSgeblEV0PfrEneY4x3S0CxyN/vz06/52
	 lClQbJgJjYyjnVY7WhYSVb9QjZo2tZxdTvV4lyHcyHbS9T71hJO+5phPQIrj/Pi89C
	 jfPO1o+Hfiq/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96867E6FE24
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 19:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176651783358.14624.5270268030274454010.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 738639cd97e888cfdc9590eff394b1efc832325947d550e137e77017377d914c
Date: Tue, 23 Dec 2025 19:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766517833
