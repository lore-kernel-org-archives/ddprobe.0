Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21AD31EDA2A
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 18:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750357194; cv=none; b=kUTh9NVIQX0zu2vYvUulI+BNUkt9A/axdx7aA1a0YhDH7fR4YrgC2Ypo1brr9hDuCoXWP9xzOGD+GrZx+2seUVBRg1skE/kyUiwjG25APvs+HEwRNjHnviFgHWZDF8Uejy50ZloJZ3SxGEYjE+h6UiKRLRmG1uw3WJ9J+AqfI8c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750357194; c=relaxed/simple;
	bh=h7lhWveDcE7GxsQKMobcVwnJ9XVEi0/332vcKel1JkM=;
	h=To:Subject:From:Message-Id:Date; b=SwLi8RrHGmoVOHfbqZMUh0vMnDg/2LtSOBV+vyzw0t2jTP6fxvm2zqnTquJbPq1gczwOqGnplSrneNI5Y1KdVp+otafnJYQnCxLF1fdfKnDxgIzpfTMfItf3FqpDQybbgKbgxGUduTtulhqE3rBNRkIKBcBS1d/yak14UUD6h/I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kIsqyfm5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kIsqyfm5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2C05C4CEEA
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 18:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750357193;
	bh=h7lhWveDcE7GxsQKMobcVwnJ9XVEi0/332vcKel1JkM=;
	h=To:Subject:From:Date:From;
	b=kIsqyfm5zAYeXdIniiCt8e+9FMsEkk/wvdzAJKFYz3grnh+Ui1VtJq7g7YiZXF6+Q
	 cDlB7a3oSKRS2NLrqKktb4ePC9KN+cu0Mx68YlfsmXdULC+znyNJlw8/Msy2rV2k62
	 FNPZCNTwWQE65l4Zo6o7Hq2NPRPfYKzkq8IK08PHvO30Ima2nCNcmf2eaXDIeLUCwI
	 FNoh3MNVxGI4Yra/IfmNkp7FLDHOFk5/BU7Jmcey0uZhpROhWKBoQ+tzgcgqCXrc8N
	 BAD5N3OrwmapdFl+aYsPF0XgGp0f08zrYK33yrqxQh+vOINIxEgCSgCGNwm9eiNX1M
	 WoVdt6tlI85bg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED70C7115D
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 18:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175035719357.30175.16848876566101445393.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a927353b397a10ef63aa5dca79ea9a238ab273084e795598f82550a807f1ef6
Date: Thu, 19 Jun 2025 18:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750357193
