Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E36213C66A
	for <ddprobe@lists.linux.dev>; Thu, 23 May 2024 13:33:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716471203; cv=none; b=gR4U9OdzsGi43Jli99jfVSLRTVjbJ6G8ilKI3iL93pVSSa3hmm1aaH6h9SatGmUoIOq60EruoUOp+A9i9XW6j72APJzMh/luyH63+NqY5GMOfFaXiRysfR1wP5vzG4AyS6U5BCqr8lcHF6+kyxQ9MSSpxab9ed9uNJ3jkF1vr8E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716471203; c=relaxed/simple;
	bh=psrRZp/4r1atMeWghZh1JYCf0cPY9yjeFtHWKy26CK0=;
	h=To:Subject:From:Message-Id:Date; b=uFps/w0+J/2xbyz5xXaWuBVFyGwQSZXVC92mdDqgMnMyygnasO2hLPtgzVwpM0oMKfFiKAGXZavvFaBIeXUK/NpLGAaBVmanlTPja8ERHkxiT2jUbrILl7VMoy4tkSS3qku9l/S10k43JdEpOCUyTFQn09j+LPhtFtV4zA3t5L8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Aiy+ngK3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Aiy+ngK3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF1B0C2BD10
	for <ddprobe@lists.linux.dev>; Thu, 23 May 2024 13:33:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716471202;
	bh=psrRZp/4r1atMeWghZh1JYCf0cPY9yjeFtHWKy26CK0=;
	h=To:Subject:From:Date:From;
	b=Aiy+ngK34xE8luTegcOZDvfniDba1naI8KQX5cKK72570M99tEmQ2720FYUoMhh/n
	 nkzympwmjNC/VymBgzw6pd7KpKCjQjgyUSYP9lDzLTevX9SZttDfIuJH/SeXlEhqQg
	 CbHIMHy6nbiM4FkIqUdub9y9Hj5qccymVfrjdDurM4GEos4HvNn7n6N/1uExGOfQUm
	 JTS0Qan/D40lMlxM9Yoi6xSjFxgFdfdKlQAAMZeq6VCYklSltNN59gFd9CCIDNb/qL
	 3wDjvoUujinzDs0qvZe81Gap3QYWolKoqSHaJxxZxH+b+hjAhIqncABMu/Oe33JnFk
	 fNfxY1Uousfrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CAA5BC25B79
	for <ddprobe@lists.linux.dev>; Thu, 23 May 2024 13:33:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171647120281.10307.18380133232468013984.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 35b9d18e45807d9b3ae526a04cde990302569d99b71b6524a3d4ca562e971aba
Date: Thu, 23 May 2024 13:33:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716471202
