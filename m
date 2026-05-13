Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4385534DCE3
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 04:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778645434; cv=none; b=tyH1wbxxInP2PkqPLJcEhJPREkNU27f3SD0ln0Z/zXzMNjizGQNnJr742h6ParQEOeFpSdw9zyjlLnya1iPCVa06W6+D/9Cf3iAwVEKAc9WlJkvWBD3uNiz+a63QbI+pFpA97gQ76nyvpx4iI3fS9LUy21EIfhxYfJ+LMkGJl0A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778645434; c=relaxed/simple;
	bh=s/qkb/P+SPSSDpRjNdxU0VJ3BAcSu8v0F7E0rW2175w=;
	h=To:Subject:From:Message-Id:Date; b=kw19yg9H6e7cOvgjGECEDlTDPTnp0LyY6mvth5aq+SzpILCAPuUNjCxOifmBOCOzzCP648u6o8SXkAUy9WOeFFZEYzXmHpJG5GqEtVG24LW7Cf6M1OIWcg9Sd2bRi43f4K+EAr114ThJlHjVraE2qT0xuIP7HDcxpnnyS2vuYjc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rq9dlyJC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rq9dlyJC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6D5EC2BCC7
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 04:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778645433;
	bh=s/qkb/P+SPSSDpRjNdxU0VJ3BAcSu8v0F7E0rW2175w=;
	h=To:Subject:From:Date:From;
	b=rq9dlyJCwYIoweNMLQvlLk1sSOiSY2LfX9tetxXI9pVd2oml4BTNU9OlLi8eMGuXb
	 JwpxRUQYlYLpIjsesxaUEC/tb4CObEDsYGz2wyRDF+/Q0vKnbSFrsih1Lvc3ZJZuWH
	 o1fGHHBazBzGc5D+vOs+G2px3HI3r5X4HdStDDZkJHSFxLasdaqw+K6YqxvCtccmUB
	 KjykEdguJxN0sFz6ifbOpRW2QHku3eU+ThnAD6R6yUTTKQtNfVHjrAfH6l8gmrOpiN
	 gRQF2SGau3XN+nrkBPH7gNu7QxGz4mSdoKUqbm0CziQNNFg8rzHnz1Qa9Kl76l1i5E
	 TpGaNOsL+Ac4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B239DCD37AC
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 04:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177864543371.3624.3821546438925270486.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 75b67578f07889ddd870c421f37cec9b040cf616bb0f467e5258720e312d6ce6
Date: Wed, 13 May 2026 04:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778645433
