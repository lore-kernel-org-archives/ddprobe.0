Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15561262FF8
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 20:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764275574; cv=none; b=rK3N5qHLlKZpWoPHbBBJG5g2dMAsO6WlRslahaN+nw3+Q4KlTQByRG+74NPiBFiS7shaZK047SMdQ1lPStyMSP4I/HlwZNtUKqab6Gh7ak1frgMn72EzFS98iULWrDGMuKShT4RY127wTC8DHPlY4casilzHtqpUBNt8TUzmgiU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764275574; c=relaxed/simple;
	bh=MULoWgdgQ3f5fHo+5xcO2P2Rh6p3EpNqr7bkMXeIpTE=;
	h=To:Subject:From:Message-Id:Date; b=nwxxaFG+yPQxUf8T74Te5tNAUhzbhZO7EA4gaJQGFh3OcgQLhlh3RuJS5DgN8vLRfqJUJRFiAycWmsWtTMuRVgllXYMM1Rk9HdVxsaNOEbvPkGBxAZc5m2963/lAC0wBGM8zqgxT2EfLciUruEOZkmb8Pxx/3UtyLIiNsme9pcM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TDRoz8VU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TDRoz8VU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF47CC4CEF8
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 20:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764275573;
	bh=MULoWgdgQ3f5fHo+5xcO2P2Rh6p3EpNqr7bkMXeIpTE=;
	h=To:Subject:From:Date:From;
	b=TDRoz8VUPGWYuoQ9lfREnnQN11A70aUUrNrCynUsRH0XOC7uw4zdIIWw9Sp2BqrhP
	 qGIGERvouB3J9qq9B5CNbwUC8gXBZsLpvgj86lpGzLOQBfAijY4wzZ5PXLfs0OGL7m
	 dB22Z3oGSijpma/LccsnKyzpocK/U8lICVlu8UmnkX2xaNhDhLV9xCh7732RVK2Nh/
	 99LtTPQB8UnHqQxcY6sYeNVkMUMu8/IImUAqv3X0z5239YEvM4W6BTuoQfZqXFRe4V
	 d7xanAftigrwko5h/+tX39ZBveMFx6f1Dn/BjLfALoSMat9YFvH8nq/NVBPRDkT5kW
	 xJPD6pDGyU0SA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BD37CFD2F6
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 20:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176427557359.12357.5993329419137107278.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d92eaa7f5b6c5a39f1434310a5c96c0ad7cf9db2c61d743386c20b976835a2d
Date: Thu, 27 Nov 2025 20:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764275573
