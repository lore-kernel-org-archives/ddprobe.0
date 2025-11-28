Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B42F17C203
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 08:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764316974; cv=none; b=pIYTl+7xWhi4XUnYGkPAoG+HBeuPSWHqdRXWvmUIP4WHI77Rca7eNmnVuZbBxBPyihcU2bW+5vUv3fXCeHcdFM0LM+AE3WZ1uM+F5AM6xzAO56osKGxeWtfY12lyWaio1Hd2whRR6IlWy1IKArza3nRuWkAYSL85xm2JhP66jas=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764316974; c=relaxed/simple;
	bh=Qk8MYY8ImNr9JaVZQJuaPuilSAC4tQ817VEmjxMaOPo=;
	h=To:Subject:From:Message-Id:Date; b=Yd86yvRTJMphcOtCGfBYow0YM+a1RZTVxN6WU+h/mxGK16eonnH6YtWNHhVkF2lBY6Sl54wjHGYcLCohOe4kTwTqSovgcVVIMqQ9Ofqoh+RKPY/IfL6qREFEjMlb5p2S7IYN5lSFGiJC16QOYs4RDVTfutg9DZHKiTYgsQD6vrI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X+YDeCfZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X+YDeCfZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6021C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 08:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764316973;
	bh=Qk8MYY8ImNr9JaVZQJuaPuilSAC4tQ817VEmjxMaOPo=;
	h=To:Subject:From:Date:From;
	b=X+YDeCfZ9Lws4rKVE1jSYY8fC4aS5O69oObfz6ULSsJIz9RedSzplO7PnS1jbLnvA
	 A81AkiS7wwFuxALjG5o59dvJyUYQrZSK84Tbmn4e9g4aEAoyhtkr9qNVdjl9d7pmdg
	 1D9pwWe9xLR5I/cqEU6ojKfoe/c6sp8+RwqstIbUoCzv+tD3tjdOeestGxez5XmPMP
	 JQ+Eox8bEfJ9NevzfVTYDU465hU+yL7pjU29V3xDVf8STIb9hps3dPNjWhFIAAoXjp
	 XXgvMflWEsMZoj7QHSTbwIZXl44DVwlyDVFXP8Ff0XUxCWvJitR17K40T5d7/VjLtF
	 X6OqbtJ1+jchQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92415D116F5
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 08:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176431697358.14166.16900055215573974834.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d218312db892b66d5d25538866d9fa62c78125866419283f514e92e91e8684d
Date: Fri, 28 Nov 2025 08:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764316973
