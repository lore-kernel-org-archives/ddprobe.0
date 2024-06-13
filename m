Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16566144D21
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 11:58:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718279903; cv=none; b=O2cEugYT9HdDVk3ulMCTbVegDHnRQMkf8c8/K0Gt7bo/Nwgs4DUc4dZvovkZDsR7knNCdndaU26ED+MmNwJXcnsDQ8QJjvrCFqhtgnjiFINXc/2OuHJ0lspWYZIhkmfURjottetndqSaxc+AxzLGESK94J8UTNSIQpeUTWFb16I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718279903; c=relaxed/simple;
	bh=aHqfB2ChlMhhoaOFay4XEWpGCuSEUApZGRwVQhiUEco=;
	h=To:Subject:From:Message-Id:Date; b=FVE84qxsAMzZdY7npXhzcX2O53G9e/RloEEZNVhf4cr1SRJgwo8vvp+tpxzTSL7vGhaxUs1YWUupB0MYkj8+UurTfPlw4KNwq9fju1SdpEb5eCUR6z+oFgu3yPQm/zxVaN3o83e45D6OUKOUUIfidWoSUwix1k5xRVhjqtmnrak=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lkMGVhcr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lkMGVhcr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF281C2BBFC
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 11:58:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718279902;
	bh=aHqfB2ChlMhhoaOFay4XEWpGCuSEUApZGRwVQhiUEco=;
	h=To:Subject:From:Date:From;
	b=lkMGVhcrPvthCnrhwpyW5CGTvvpzmDVoBkLaieMZND5EYf3nI8Mq/nt+LCGjIDXW9
	 J8q86eItuH/XWU9LOmGcLV/tZpkaodGk4FA+syAdz80a1Pn9xFW8dg5wgh3V7OFpCt
	 Jcyo8mSZdDq/3JzvhsYnCh/zGZjDWgl0RjRjmFv3OgBeLak2AD9o9SezwP3zM9Xyhv
	 J+2oi3EfX5gZXa/QTLszd6Y+pNBBlBKiNgi71GDBB87SKUj0z7osu5BTjcCgTDmnoR
	 fXbiaEqGqLwUl8euGl9Xh18eNxjBClqkf52JYtUB88VqvpIOgIQjs45rfhvKnMem96
	 MJcTaVc5G3XPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0FADC27C75
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 11:58:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171827990278.18292.12474216555047757842.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 69b2cbafa7e70768bdbeb9d62c35453d460658327f1bbc7635c9f14f821f372c
Date: Thu, 13 Jun 2024 11:58:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718279902
