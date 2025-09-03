Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 126D91922FB
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 00:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756861194; cv=none; b=h4rWYs7bAx2vHFKs/XFoVQ0YwX08jEJVZeTx6YUo20w1vzHLguTnAWTG8/cRQubP5Q728UwNhhhcKgP0z1NfZ7ezZU1rVKfudIJfICdNObM03ds/AL93Dr+gVOHjGvmvdzoL5nVBmpIGe1ALXiSbdSM7n03PpNwK8LtMa215Tl4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756861194; c=relaxed/simple;
	bh=St8BPC/fD9BWkq3t7sVDcOlDiq6RCNrgyKTZw5fZPm4=;
	h=To:Subject:From:Message-Id:Date; b=XQ2S+uS7OQjhMQdH0vM9FuH3eo6SKf5jyP9jC3kehyXcnTSqA5WNQ8t83acCBURhuYkRt0/m+nvesu7U3/e7nMHlhgNKt7+wsy4b9XbgLN3/uKXfwgOLbrdgmGTxo8GAb/YgVRDp9HkglBjCNwWpv2hNbgmgoveZiCk+Z98IWMc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oBMIb8e5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oBMIb8e5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3D39C4CEED
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 00:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756861193;
	bh=St8BPC/fD9BWkq3t7sVDcOlDiq6RCNrgyKTZw5fZPm4=;
	h=To:Subject:From:Date:From;
	b=oBMIb8e5GED5hp0yYsrcAgjaREN9o6mbKdke1MwyB43kGegE6Tkgc9nDc7F3ZkUFQ
	 mozVVaGINPqfYq1Npc9NgwaDq2XvXHuAmmkM743gfohPmoe9dyfc2CduwfkB1+hsUr
	 9jXN2VO7RTwEw8WQWoaFBk6uY7cCnHxfCr7QlmpWF6WQyAMSUN6QQ4EqgAOk2rgtsC
	 ve1PlZRRhgEeZJJ9LNgw5OsxhL2QDacDZwA9bFLXGjEiXmbOUEcRaltuHY7zgOR8/2
	 vrJrZH9Gz7NUJqoFuy90+l9yae2xqLjjSAcPV3tvHk75amOmqQJoiBnXP2qrNZHy67
	 fHaf9T+vdUqPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E979CA1007
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 00:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175686119357.18092.17929556460473098037.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 179bd758ce095144f3624b09d4d8760b318668654165a0adee21564e282f9d57
Date: Wed, 03 Sep 2025 00:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756861193
