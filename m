Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23FA621423C
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 14:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772288094; cv=none; b=ZGJvfeLaPmI8CQKcjcruC0GnpeftmTGkumZEVY+jMW/PDrE7UNFMujKWpq1ZsTTZwHn0GEI9wo15aWTEZd4gHBpsX2o3xI0cMl45KOi5amA1cX5izoSVZDfmLG9kGtxObUUzolPgwzxJI6oRho4L1c6SeVAnhn9nj9U2fujZWSY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772288094; c=relaxed/simple;
	bh=FFe8H+D469afQOEbdjPrVI1OruGkDxRvMnl3snFAlnQ=;
	h=To:Subject:From:Message-Id:Date; b=P82EsG+MY9slod1ZCFBcfoFx9GaEolRNibsNcgpwGLpNcR2bjJ+BmFI6gs/lzXkTxcUaeN7qslfzF15Og8IOL89PFMVZfUxf0PHE9nKkl5lYQPtQ98OwP4QyPj9PqkM7orrWTQfMmM7+jM7M+BZDNygthGYLxwPMXVMH2pVG60w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gjYEI26n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gjYEI26n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4443C116D0
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 14:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772288093;
	bh=FFe8H+D469afQOEbdjPrVI1OruGkDxRvMnl3snFAlnQ=;
	h=To:Subject:From:Date:From;
	b=gjYEI26nTBb9+3TlS/Ft+Q8G+GNfxfATfrl+VkTbnkG/20jzf2c2TcKIqenTjb5+j
	 Hh8fJzR/86vnVnq+UiGQcWgckWHGHDbZu8rS76nk4YLWSHr8Skyvgu7rbvTowYv+4S
	 GfTsznCGLDwsMRnjJ+Mi58gqYY1JZVMrCnX2PjguzZjJxdAOtNcIi7vqkYlP0maefo
	 c/taOidf/CamLLpZTu9D6ljeFmO21XFiXyyN/8xC6kMuIEvalFQ/QzgCmDlOe5AV0a
	 7mPcwRwOM7EWoqHf0umcq13GW1rdGGurUBW65HPDo310s565istDaTzNyLs+D1dwsj
	 NFrQJfTNj1RiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90679FEE4ED
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 14:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177228809358.11196.1081306755993519864.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9efa8fb599ab66e1e5f9990c0b5db7686fc1a01a928f0637ffa0d43dff9606aa
Date: Sat, 28 Feb 2026 14:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772288093
