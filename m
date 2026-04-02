Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CA3137C0FD
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 06:15:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775110534; cv=none; b=As/6+1qgXqNHH9L0smeRJODofsiF2pFWfglVbo2dagPwFa7sKCt25zifmpncMRY/SkNvBqyIFgnsQak1J1lb6+9tKOdrJmqXWyPYP2tppAXAKyp0G5wIQzrYMPGQ0d6GBeSkExnl3UtiBGWImTcsbe++Rnj7CGvivf4wyiQaEiM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775110534; c=relaxed/simple;
	bh=k7Bif4RDBK+9KdvTtZDfkHoiLZrJQstFqhfL8FNUSXI=;
	h=To:Subject:From:Message-Id:Date; b=mlBufA6Vj//YTzVyK1H2IEteH8oHv2DTTTx1nME2sevBsN+nSwcsgk3UiAUybJA3lMvrvh8kgED5pQatQMgikBA4bk5qxZovjOdOSMDrT4z9fhXYOOyTkD2Cre1aZ8LYIZoEuHX0CRMGaRn6kGir+ihIVWl+0PEBEW0KHs0T0d4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IHl6fC4N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IHl6fC4N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9AD1C2BC9E
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 06:15:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775110533;
	bh=k7Bif4RDBK+9KdvTtZDfkHoiLZrJQstFqhfL8FNUSXI=;
	h=To:Subject:From:Date:From;
	b=IHl6fC4NXzakC2DZRZr3q//zKm4CI4ZlhOFBtQA2oXayCHOsgglfoEyg00UmdMnKY
	 r8BuecNKuclhKTIvnXhK3/VIPIEtWrJUd9/tdgzTYuYhul/IPd4ov/fOXbhl9M6+H7
	 SVfC+9jPLAqdbVevzMuTattHFCYpTzd5Cg3kdIrJOdW2Dse9m/6kMLYJO3B8DCh1Z2
	 hpCo2NEBm2iznUoroN9rHm1Ac3qwoU+GUnbpooAo3JbpwqbS+2HxScu/1wxoF0J67B
	 5yIGCc4aHXSYwz7alkFsL8BgTVLi0hmFrOzjJ+Tr7MvNJXA8wX8UeSWtL562K4FxI6
	 s0G8lK7wWhddg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6333CC6B00
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 06:15:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177511053373.23621.12890005415120495432.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42a9747407af2471a72c5af6cd2d3e095e12e193414f6cf2f1a2b66d0e82ae85
Date: Thu, 02 Apr 2026 06:15:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775110533
