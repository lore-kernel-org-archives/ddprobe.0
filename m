Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FFDC213254
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 14:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787925634; cv=none; b=NBUDcDsKH3TEgDZCMa6KDHbuH8slKalzHIKE5t6+WgPZXFqrnxOvhVC/ixOa6cCPrY7/MhOo1EMq6vTWsFElms9Uhl8R3QEMOpBdl/9NQ6krmGK9CsdW5puBt/XS4cRQMQZH9DGJlN83L6+Xkbfyjv3Du3MOdJ2WBFvEYnhRorc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787925634; c=relaxed/simple;
	bh=2PkcTxivl7gjrguVGfmHEkzVsEPNwHN7BY8+tsEfLw8=;
	h=To:Subject:From:Message-Id:Date; b=dxMJCOrbvr/53B2kQgk9gioGYyAFnciTCBK6QH3yhlKIeGuZK8vw7QgmRuEOidxv47pIComhTxOX31lF9YOdpazJMSJfUHgEphkYS2POs5UAbhYoyg37yHcujkTeirU/F1Sf5UbHvq7gUYzN1PEimXKRUH0GF9zF1mOjLsRa7es=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qUcbD5l6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qUcbD5l6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D54FBC19425
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 14:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787925633;
	bh=2PkcTxivl7gjrguVGfmHEkzVsEPNwHN7BY8+tsEfLw8=;
	h=To:Subject:From:Date:From;
	b=qUcbD5l69S55aOgx9s8ZsfF72MDRn1kckZFCN0l1TvpCStd+KN7fR2DB8G7cG2y9r
	 fdpn2inab2TaRc9n+vP+fVkRUhIiEmmwtQnw3keY5mJSdA3ZSpndpuVTD/kLYVdJ/s
	 gUzXWbfBMHOUI9Xpl1CcifoJKcYhEMOQALr7PePx3opYEtYfB3bqjB4tpoaiD2lI4p
	 6bF9FvHkc9tM88cIC8wAXC7VY2LA1gWWng2LLKQbvogecE0P4pGH4mDPylr5JQ/ctQ
	 csgxVoL2WxmfLPk5gxVy5CgnmSn/HIUqxIMwsV/nWcY3fzueri56SsRRe4pSxQ63S+
	 Wp+SnY5tr1U4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADE9AC61DCB
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 14:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178792563370.13965.10626216315642346202.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d1eaf5ad3948625f605bcc30fb189d133fede274d1750884e63851f99572af17
Date: Fri, 28 Aug 2026 14:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787925633
