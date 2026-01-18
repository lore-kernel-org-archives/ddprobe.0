Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1804D32C923
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 13:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768744434; cv=none; b=ZM9U67gB3WQnjVqpXbsSvs9FhfJzQTrU9+i80IX8UsYDeZkt5p+V4goH68+f4ESmaNmxSo/D9S8y6Q1hWBTAkovCh7DP72G0vHxSAR0Zvydxb4lLK2+SI8NDT7GEl1h256IdxcYy+z7HXNsql4Ey3QMbXLZnhFk5bVLKzacgf2A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768744434; c=relaxed/simple;
	bh=ttpYOmdRQm61T0VvZ+0+Qp0TRdTTRs53GsCP9f7GxDw=;
	h=To:Subject:From:Message-Id:Date; b=HD/sZW8SjEbnP3wsYCXxGtZeBD1Mx4avll+ekXbQZaqc7IpAZnPTVbg98xDB1rp6Ed+ZjG5PbxiVpsvJRSlhizbxhHtQGl8uQG9CYCQkGa0TZlRrv6K5F+r2EpECiQUMgC06PCPz2TIvyhgib1aCScIKzLlP5gbiQdVSjlCHPnc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qJOZuIDY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qJOZuIDY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A536AC116D0
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 13:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768744433;
	bh=ttpYOmdRQm61T0VvZ+0+Qp0TRdTTRs53GsCP9f7GxDw=;
	h=To:Subject:From:Date:From;
	b=qJOZuIDYpQ18M1e5RCkUvd1nGmxznJ40IAegVAOQ+Rduh9v9hyvEoqzpP5bzuhcmz
	 N9v6CDaE6jVskUivPARCnDXqjv5PCWFn62Fq3LVP7/BzJz7s6YrhTy87xyGT0ss2U0
	 uzOdr+fR9yPzd7ap/CZNi0tN+YTLH8BiOJLhAtRCeQNq43a8mlncrmPicy0P1PIm0c
	 K3CPs7z15pPHX9JETSZaJ2TyWYrPXQp1vaRMhpj3rA7hJ0Msi0odiSXB4VIfYvexQE
	 ZgvKXT3l75hWFrxT1mpWk/yAS7E33YSuLIVyDkcmPeRlGJhu04syy57rFLDju5DaYC
	 A29jOmbAI5WbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 937E4C9832F
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 13:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176874443358.21119.11245047727283330103.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a0633513795366b44a4f6e4d2647ee8348481c186734de76043dc6e094a0006
Date: Sun, 18 Jan 2026 13:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768744433
