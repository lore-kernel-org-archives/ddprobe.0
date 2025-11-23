Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E823622A4E5
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 08:31:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763886714; cv=none; b=VJOAkB0hpxAQP9SlwEmDgjEgi77yIuwfyjd5UgJL0P75ca0I2DT2yrUSuDOuh3/ccgRFqu9yDbbZ7n9oaahgFd66kJF3WLgYpwreozP7JiSI21M79kts708zBWXnrnOsJ+d1186Mp7faMuyBenNpAqmiKbORAIpoagxfgzl7ru0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763886714; c=relaxed/simple;
	bh=cxYMEsnLMiHzpxrURUYsrHL8Hu2To0y0hQbOTiz5MGI=;
	h=To:Subject:From:Message-Id:Date; b=cJoJTJtHrkfvhzVoeWcfiaHrTgMnCVvarYFWCl0k+ncIRcvpYt0Kk0gD7NIURmDPn+iKWDzvBe+1MERbxZdbQwIR/p7VgImoHd/OngQvTpsGOrbhGY4QDtbESdE4vSe10eG4s8g9soJqxJjnrTaqQqmrmrReVlJntjlCyNm4sdQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EAR0RQZy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EAR0RQZy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A57BFC113D0
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 08:31:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763886713;
	bh=cxYMEsnLMiHzpxrURUYsrHL8Hu2To0y0hQbOTiz5MGI=;
	h=To:Subject:From:Date:From;
	b=EAR0RQZyTcl24+UW3UU2i3BJL3liSQq4GxQhnRNdPK464+mQ/52iYBrvs0AYMWl85
	 Ua0UMQk7nNe1QHHKzkQJhHwAlxNRi0hEqGFitqZJdoNxKVUoI/J4pvakwY8FVoPSCW
	 0CWm5GzPTiCWMotnFzh+CizexNy3Totoa/84afacx971/DXMHTveKnwVrq7bC5Y8vu
	 QVpTUGh3dEk/F9e+q0eNCLKXVX1bv84gkhBM7TgnmI7HgNMhuUbl+aS12Tp0PfX7u5
	 z4DHktlOWXfDLZQK8oFLkn6+qcCZ4T86DIj5ZaHHKXTrLhovnCGv4GBKyS09ZfrQ3f
	 NjXg1htHHgiOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 974C8CFC26D
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 08:31:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176388671358.3429.16705341713167797678.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f0e4f1621b52cc60c1d7a17f2f714710b0d6b2601c32ed27a4e0d2d0941cb97
Date: Sun, 23 Nov 2025 08:31:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763886713
