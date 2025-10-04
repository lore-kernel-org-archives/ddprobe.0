Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19041217648
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 23:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759622394; cv=none; b=aI1TZJ+HUAwMykaFi6VTzOq69cTL1tVpR0ssGM8aLEUqh+6+pFioWDpb77Ar+ON8mwgLBavxMyls7RG0IVlnV82ad/ogR2coEzE3kZglDqanaFS8w3XWr4bHCbKdyCUxa4KY4YpEZcDhxNgUDsyD3bQJSYj1nWsS6Lul+sSFMoM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759622394; c=relaxed/simple;
	bh=XMpSkNRhryyI+/rMwL9pvVZHIK0TDMUt0blkyQsbhFo=;
	h=To:Subject:From:Message-Id:Date; b=kCRjrCzi7EZAdCdD3dmcQVN9T1pbWNxvR4vd2GKDnBdPOXRfphS+AeRWueFn9pmRBsrQ0jumyQXjN1w8EMRpeHZxv91pfXUd/eEIP9tWt3LMm2Mm/JMWHKx6sYLjD9sK9CROT4JRrC1dlPPvMS5nXw6+UlA5lXmugHY8u5GMa+c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PNLBFB+R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PNLBFB+R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3B10C4CEF1
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 23:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759622393;
	bh=XMpSkNRhryyI+/rMwL9pvVZHIK0TDMUt0blkyQsbhFo=;
	h=To:Subject:From:Date:From;
	b=PNLBFB+R3m63gG3rMIrIw2L/1zLZMTy+7AaJNsERjgnklnGv5FGnmJL9dsEcN+rYb
	 u0WCOl22gWNB3BG1MmTGHWH1u3SW5cHGhqokpetnAQNlUM5OSG+j8R/iT+lRmLZPJ5
	 vFMjBtSoGXyNIs5pnAUMjbsQAsvnrjv2vZcc3nGZe8tr3af4O2lhYjhnI5kCq//WjX
	 KjzrzuykIG9ejn4v3JtP1refv7YM2FeNhRiojiyA32I/plV/93Vrr7MwctmkA5lzdx
	 ewOGcObmhko9Gtv1be+Uf7N5UQ7yDgg4cYpm43KRcDhWVK1ZxpCIYHCcVPt0gPzqCn
	 Z8QAZG5ANj2EQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91429CAC5BB
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 23:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175962239357.8422.6486297187539344284.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1e40d13119e9e02a3b0677258f9bfee77abe10723d235d5df3209a08323a5aa
Date: Sat, 04 Oct 2025 23:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759622393
