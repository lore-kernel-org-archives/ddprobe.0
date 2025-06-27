Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 419692356BD
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 20:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751055594; cv=none; b=LSzJUl0WKdz0tCApzqwElWaeyDULGL5/ECsIQntZzfsNRC+wy+0/3k6eZBxdGnKa1dFtZhuuoI82InqL88X2sFBB+m+S6pG0K5mjndchxbtGMgevK2809WxJ36JSHM7EgUIOfsW6X2Da9UB3kXtDCkaPjxOGpjy1ma+EXi4KGp8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751055594; c=relaxed/simple;
	bh=3+2nlgQrL9IzGrgAqSSvry0mtRfD2n4yi4iJHk4Rpig=;
	h=To:Subject:From:Message-Id:Date; b=BdIgEnvvLCwgit2YoHLwhvUpDBsq+S50+LYGpTw14U2iPnPOpMOuhSwnN8j/KQ8kDlapp7VHxaWrf4+CBrZpEcBKNrFOLdyaaUyKpJduy0Af5U51LAobjsyYvq4GJD1rOZJ2d3cUpNEiETFmG4CEGbrx0lp8dQD38LuYi60Lp4c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m3NtJ12f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m3NtJ12f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B91E0C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 20:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751055593;
	bh=3+2nlgQrL9IzGrgAqSSvry0mtRfD2n4yi4iJHk4Rpig=;
	h=To:Subject:From:Date:From;
	b=m3NtJ12fXfzpeirpZKEA2BSCXWS90rJAj9guhBLWVom7GGgmj9O89MShgycinwlr0
	 RnOawHt8e+p4menoOtsqkoBWYCp2ZsQjO8SzEBbDcQpGhQG5upAKTWMow8ODFK8slC
	 DGykXa4Sil6iDQT1I4wWeAkyNmjvXRsCZHJ2i1VxgIEFCsEFRGyEHBcGK3yzSQH1d0
	 9qO18Ef8YXiRrSclX3KAXd97KXX7M7sa56aVYHyX8/Q9589M3XZdENtFv2iIuY88VE
	 oZbeW5/89+rgc25VtHkcdjDG/jBr0JheNoW07GxcOYjZ0ctasEkxPRCeVpAt3bEU8X
	 zvS5invpYfyzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DB1EC7EE2A
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 20:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175105559363.25448.17061389579313703677.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5574137dd6d56fb2b34d4fb0613c0579e4bae9de400ec90d11cdb21e103d7218
Date: Fri, 27 Jun 2025 20:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751055593
