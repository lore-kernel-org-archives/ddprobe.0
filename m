Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5013F12DD90
	for <ddprobe@lists.linux.dev>; Thu,  9 May 2024 23:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715295743; cv=none; b=gCvsK8ve8npJpjEmElzNa2/uf5ZLSaw+AFywwu5xUBxTH/i8JGBJcDuCE0IGrYM+gzSe+/ddha5jZFpbyYMOTe41OLn7y3SC52wO+34ciVcHXx4jMbQohGg6c4BQBo1/p/TPU8rpQGs2rbwbrO6fGXWHi1O6h9lmJZk7e5GUkgQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715295743; c=relaxed/simple;
	bh=cxwxyQzqnzoOzXf3e7X+q8z/PjPJ8P2t2CGoUAEx1uE=;
	h=To:Subject:From:Message-Id:Date; b=WNug1JNc5Jr4vx9XWP87bb+CEHt4CjNyEYMoplixCI914vEs6MUSHc0XdBO5hbPT783GGNK0m72oTPSbhgziVtz4jwHcNmPZhi6fDr4wX+sT9hAGJQL3eGGyObIiLDkBq2aXbsjNZIhUj9oH8dDeWz9zg3WNaJiqC61e/QqLU3U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lFkrw+S6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lFkrw+S6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D92E3C3277B
	for <ddprobe@lists.linux.dev>; Thu,  9 May 2024 23:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715295742;
	bh=cxwxyQzqnzoOzXf3e7X+q8z/PjPJ8P2t2CGoUAEx1uE=;
	h=To:Subject:From:Date:From;
	b=lFkrw+S6D0uMpJNYobonubaYQ8yvmR7E5QQIVRgjbZIH/NN2YLj41Oz5jrU4bFCkh
	 sxgwzatSGkfZ+ZRX+Ay9hVA9OP2tu/m9hw5lUTZemOG45WASPZUc+aqSbVOkcJ3h8o
	 yZ4dHLPVb/aPltl8ahpeyYL1rpkB5r8+bsPDp7ICDDS4mngm/hg/keDrOSod4HCSKQ
	 BgGgRuRZENFiTq1h2vj10+xx+GQ5iIFwpb9EL/JVZvUuzZ6QpiziGcE+Djw5xKbfn1
	 83SsEtQ3QGW2Nbtb9utxD1Na4RmhSxIUQDVsPwlQl07ZPehTdxL5ypR5MiHfSfFO3M
	 ZALdejIZj0H8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2331C10F1A
	for <ddprobe@lists.linux.dev>; Thu,  9 May 2024 23:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171529574276.17380.5687571427881334346.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4deb8b796362310487fa8223140fbf2d20e73e8071f66b4926edf6c9b1011727
Date: Thu, 09 May 2024 23:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715295742
