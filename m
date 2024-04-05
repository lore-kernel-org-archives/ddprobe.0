Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E04F416C854
	for <ddprobe@lists.linux.dev>; Fri,  5 Apr 2024 16:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712335097; cv=none; b=ufjhBCB1haPgZcxJkHiJTe/WjeEriujN5alPnBBG9aRtN0kZhcAqeT+t1fpNp1vysmBjSmZlv34WykDnz3Ck1TFRII+QgjCuHG4ClHePGptxFOcbeheqwA1bzUHv5jW3hEvgIBbHeu+bgrbe7GTGlx7C6p08iKO5E+k1yOWmLko=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712335097; c=relaxed/simple;
	bh=6ru0BupNxBaQNDQSSIzH6gnh2TiGA0tJFhgkY3/iZqE=;
	h=To:Subject:From:Message-Id:Date; b=Ra4dfIJi4qiipVWmhZliSkh9O5qCcMs0a6CpcfiEXmULeAA2MOJeU/coSuuSa1nbm4DzZ/jfhA8eLBVFe6mWZJ6fvoJmYwtRnhoLD5nkAPB4bpCWl8SxNt1KtCUXGhC3U6yyDDAYFFTzRK1QieCLil/XOBBFQngOmHlarspspMs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tARig/MY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tARig/MY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8084BC43394
	for <ddprobe@lists.linux.dev>; Fri,  5 Apr 2024 16:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712335096;
	bh=6ru0BupNxBaQNDQSSIzH6gnh2TiGA0tJFhgkY3/iZqE=;
	h=To:Subject:From:Date:From;
	b=tARig/MYnpSKu4Z1LO4L06Uc0tT+Np7aVzR41xP1qNRZWU1SBg6iSQn28nrCBm82h
	 iig2WvYb98ZgJr5Vq14u6BEsluJpu4qag3320OrfHZuiRHz7fQ+67HrxkALtjJjbcN
	 uDe1ZNy3Z6jgv3RasYsfS9rzE2m2Pj6BDRtLHacf0+tt0yYUzSiUp2PkNEOKBe79Dh
	 8GEODIX8GA64nj90ZBWPfIuFgEQ0WwgVEa74TSgQ6eV/c1xgfQ0OigJ5nfgFKai9lY
	 9IweRgntuXvUD8Y8BZC5hXJfQOJTJFueGM3yfX2FjkkVVgCa6v+flI/0bNwqiC/DaY
	 SQTrtoVT9YOTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 72572C67861
	for <ddprobe@lists.linux.dev>; Fri,  5 Apr 2024 16:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171233509645.3975.18230793190678890986.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc648aeb3827ea6926dbeedb09d4c01dd772d7516737c0ed601cde35487d7dac
Date: Fri, 05 Apr 2024 16:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712335096
