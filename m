Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 216F313A86C
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 16:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767631434; cv=none; b=np/T7oF7QSQimKT/jkEt5zuP+aTmmxTm6f01rLd49YELweJDul5cn85NhSTQagdDwBchKPmuL/h14O6ew7T7WuBdtUQM6l3nj0A9HoX8BK6vbvBvuEWPFaYC8js6DMjEUWoXpZs4LOcS2tp3MuaMXh/cHSycHk6rY58ezOuDMX0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767631434; c=relaxed/simple;
	bh=7LEClkghqh+3D54pqeL1qnYZ06/xwAmtHPgMbFRZUAE=;
	h=To:Subject:From:Message-Id:Date; b=RkUYj4BUHAgr+I6t8Emkc5r4/3zUa70Mk9N1Lu+tcSTg1RJwXsBaXyiFvGQ1cRfIhmlSY02yVFIkEPZPhrohuMB6pgaQK9Hgf1ZJX8A9/KAY5OJ+wIx9gtcm+un4TBhbUUbJyE+h93I7Wyn/IpROxCCh+PXE2PeVjkXg6qTe8nw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JnsZ7UvM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JnsZ7UvM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F1F7C116D0
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 16:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767631433;
	bh=7LEClkghqh+3D54pqeL1qnYZ06/xwAmtHPgMbFRZUAE=;
	h=To:Subject:From:Date:From;
	b=JnsZ7UvMylEzdAD7WTJPb/AJSP78/pC41jp/bKyQGC5/0DUNiL14fpp8uu0Rv9bjW
	 vQROl+9gdIIMEKV80fqKWgAkXuoTX9Yo86RVoZlOt368xXLBdT5MkorxHMHMhSNNgz
	 46p7yLwxNbuvl6Hm+ji1V5MG6kRKScfAycxUNR7FHGR7Lg+l3D2Wv2DxxNvzgVnxI3
	 3o4+Q/1tbDcyFd3TfPV3CiA7iYlNI3YBnmxdDjUuGMirLvJWZHU0MkAjoaxIHmBCsw
	 DXfCHbGHNo6KRXMjwGxOj/dCfXFYLooM+fgiTxCD3UW7msgYWb1A4PGwGTpxfTrA/e
	 Gw/x8umxntH+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED10C79FA5
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 16:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176763143357.26816.11211058540434369385.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3dd1a7ac600e5de2279e3c705e29343b39a12736d3e051c48bee8ec2a5447701
Date: Mon, 05 Jan 2026 16:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767631433
