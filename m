Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23FC21E22E9
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 05:45:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775713534; cv=none; b=bpa4hLKEYH/YueXdszX7sEXP+4RInMT8iVfQDRewnC1AcqrHcXK6jhiDEZTcigQHomToebckEkDnWVnnssxXSRtkz0HsJpv9XffrFqsEJm2FH+zLgLEUFHzEnTWAuUpAuKd9BSshTEC2BbeBDUJokn5KWveOPseZX7g05PWvXBI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775713534; c=relaxed/simple;
	bh=NZfqJVN5R6GRb/1Do2sGNgL2QhIqsZuftCrN7hDNxeg=;
	h=To:Subject:From:Message-Id:Date; b=XompIzRq7tVs7y0j6XAS57Zso5F6ei14SVoD0JBRuTF6EPtvs5Cnzwmvr0QchLsJGTi3GtRV6rHl+l6Yb5pjb5eD0KCqsG5tMeLRaUyCDvwkCUO6q7aRAncGGN9E1pgKOtV/6GcYBlCDznY3FO1V0CEl2SjCvfrvLV95Q9Ss+qo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IKtRxnhp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IKtRxnhp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9FBAC4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 05:45:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775713533;
	bh=NZfqJVN5R6GRb/1Do2sGNgL2QhIqsZuftCrN7hDNxeg=;
	h=To:Subject:From:Date:From;
	b=IKtRxnhpzI5bZ+eVImAC11gknrEiRQ46iATk+AxQ/YBLwo55QGHy92/IkhCjbMBOw
	 7WlebYNQ7W8/u2FBbJyBdYs9E+qxEjvcbTJATjmYUSp/l/7WGaOo0ogaggJNdJ0uqu
	 yi5FsshmiT/Ls0tc0CwJmLkB2PHxTWBFDPKhMcmrzILigSnOgJg64Letp18oGtD2UL
	 yF2u8cftcc6xgkH80jeXiMvGSuYbIAg+qRxbpxo34NYx18YBQrwLJt5g5C2oD2+Gmr
	 cxPfBlNFxxN1XAuYuvyiR1lXzWNNd/9jQBQal/GL7SbfgWaYzDWuj2Afldg5Io+WXN
	 /tpDSDOYVu8xg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9525E98FB0
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 05:45:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177571353368.23868.8655474752687725803.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b11024af69134a5b063e74e9a7506976ed3259a7856ed8b72c1b1a67cd8b256a
Date: Thu, 09 Apr 2026 05:45:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775713533
