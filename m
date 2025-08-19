Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C254353368
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 22:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755643794; cv=none; b=dEuyjy4nn/jqubCXrIsQeBj78RNuzdEVJrfRAjwz08iLCf+wqZlGi/lMjPv5bTZUwFxN4+yr2j5bYo6VrN2YK+D/ebrCCfnPPVpgwvNzkHLYEXWm42nhQNnlqofSvIIbp6HEKvIU8MlVUghpL2MK2PWUPG5gg6PfS0cD4YGyz5A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755643794; c=relaxed/simple;
	bh=UPeR494/SM1yarM5t9UIEwOglrFauJld/EbL2ntpu4E=;
	h=To:Subject:From:Message-Id:Date; b=SbX16GXdZ9TjfY+4VZAEl6bXJAfiWLq3aoXYwhx6fvvRtPKegVzfptQy4Uu96wNZ5gu2bhEehWKoMAqkfgsmZpl2HFCi1PjmDyPYu8riSTXBDgjbsTkSycv+XYtBRtwr64W1kmgq+iPa4R8qftTtGrf0a6lY53eIVnrYHNzwIjY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CW8Dtxfv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CW8Dtxfv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A428BC4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 22:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755643793;
	bh=UPeR494/SM1yarM5t9UIEwOglrFauJld/EbL2ntpu4E=;
	h=To:Subject:From:Date:From;
	b=CW8DtxfviG3kNgRt9eLY99j2TNFoBiJlLaUSxY5JcTuzn9I8qMZ3UKWbJI6I0hbsm
	 PG5rIwMCWq60ZUDfAw56aT6WtCtH+0K2kg1hq/0N1ws4NmuoDBrB7TBDfIzekkRW/I
	 uBbNWyyoSY/iqikIE8PZdGp/HpxZSxvUY+cDOlhRCs4ro/Yvm1diTbtuinTbyRZvYu
	 sfvZYhGXGukIJbXXd240vdq+hnYk3PyYBoTwDbDNDokfGkVEKqEJim6o6sHcsbVVCG
	 as6SpNCEFb2ZOsTI/ZoP1ePDn56a8FRNMvtBcKciVb1tcKzjVrVos4kFuyWM4KYzs/
	 oD3cnvoYGz6Nw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94190CA0EEB
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 22:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175564379359.30758.6422646850460598393.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af618fcee41dba64a1b89193b9d6b1cd44f6bc088aea380728881d9710dc24bd
Date: Tue, 19 Aug 2025 22:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755643793
