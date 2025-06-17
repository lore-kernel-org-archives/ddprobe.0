Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CB5E28A700
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 07:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750146594; cv=none; b=ZTOS2WerQCAc8nfs5gnSc+GbwD/LrWvbcbn1O1i38Yb2seU4GMUVDPzj54yglugTDG9W9SkJ5KCXHajonAWuXr34oAyOhwO2ZLvk2yS+TPB6f/y0bnXDuchvZSl5iIbuwFl7EqafC0tABDAtpiATpLqglmOYRfT/wIkM7sFU4Sk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750146594; c=relaxed/simple;
	bh=kDZqcYxx+tCUfPkr//OGzAaBjtmFWYxENaPbxMwXoGg=;
	h=To:Subject:From:Message-Id:Date; b=D0G8V30QksFTX5wPzD0JmlmYK/B65MQB8c5oUMutMS5+tevPU7M1cXsfj8mPdSGobBvznL82AKKX/bv+zHTcUruM2aefEMZYJyYF2X8Hz0mQ7yIjqA7klId00YZhNtgLMgJEM0oneeWIL4BE17x83LX+cEzFPXS9PSIfzrXQ3iw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XsXdWyIK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XsXdWyIK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A24BAC4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 07:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750146593;
	bh=kDZqcYxx+tCUfPkr//OGzAaBjtmFWYxENaPbxMwXoGg=;
	h=To:Subject:From:Date:From;
	b=XsXdWyIKSwOj3yL4p9NzAi+tr2S6ef5Gh3WJ9i667qSLxhlvBCFR9cg5i+xHMo5vG
	 Rjb5MHgSw5DS3cAs04u9zpz3gfBp4yEauX/X8myeOpLcCNaclrZZPCQT3Y4b8NT0yh
	 eK1UdFILiAW3CCnPsY2fdBPY5ZbBItvbY24JppDiZYVaXPvB5fW6dDrmjSErG6uIHL
	 tusHCZ/BMtsQmNLBcRUjwhJQ0UNidOnJy66+94rXeW69dD1h4CeNYp51xfii9m70lL
	 IEZuXn+aQuHSDwd/eFC6gX9ffjfJfQtuLL7RR/FpjQw2AtDvwvOYWKOcU5RHMyMjr5
	 O+zX5ximHTimQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 919A1C71136
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 07:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175014659358.26078.17587308380388816110.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6711a5163f3ade97037d641cb172b6e89a15823a4173db68ca7bbe7e7fe022db
Date: Tue, 17 Jun 2025 07:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750146593
