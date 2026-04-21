Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F20328980F
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 19:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776798454; cv=none; b=Z0AhU9dN1DSUko4m7kw0EvZ1UpTrFlloTHZ+0AyYoMDrOf/2DcDPAIhPhKPLzzEkfZUh4Bzj0V5M6sumq78vQKiTfC/pF7Vzcr3CFUDzZDQFpGNieRUz/ARAvDfYP9hXs+XKnOKKwEgtPQpZcQSf+eAkFrKg9CHBmEfvxZvXGo0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776798454; c=relaxed/simple;
	bh=g5JbkcDX/e1wrFnRuhO9q/L10TOOTiNUS1r1xNQfDiQ=;
	h=To:Subject:From:Message-Id:Date; b=BrV/2j3gGtuNs6UGkukoQWef1Q9P/Dl340QbvkD+4ETOoPKGSPYH9rU5hKgD3d3gqRvnpootXGAB623vBdG9ibhOmiSzPUCmBCrq8kFIXckl2HLT5Lb1D9nMNkOZYL3+xLrCpHnOsEFwQpUldtXxBn7PSDpFxsG9KtYACJiTu4w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qteMd65Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qteMd65Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD12FC2BCB0
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 19:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776798453;
	bh=g5JbkcDX/e1wrFnRuhO9q/L10TOOTiNUS1r1xNQfDiQ=;
	h=To:Subject:From:Date:From;
	b=qteMd65ZIpvMWP9oLjrh6uOD7U4PFyrokc7+v7DdTo9Qo5jZM3+s8Is63I+YAr1V0
	 FShkkoirvjHx1GMdvSuPKwq7FzX81rInpdK/yINsvpAqezvesJQWcRQw9LLsq15SFV
	 EmCu+ILdV6LYSzjBPNNFUr4Q0AJA1wfP2olRyQXIC7JMvzXwUJ/BoiqQI6qdKxS1YK
	 I4OZAdITHsSNDekFpbD9Ncmd6F8ERUZtE9grG3YL2ds7sezkJ8tQ8WRaTejN0E2aTp
	 oLJxo5Vbsuusz/a2SsK1R6uwmNRjQRPLZpQ4yk1FJTq4+V6AVV6P7BXhkOUgOSH8jB
	 Xtt9ynd/n8qoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9A7EF94CA0
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 19:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177679845368.17977.16770194411230941758.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d4838b39c4d7263a9eacea8d73f6f3ec55d24f1c2390090ea20652e60f803f0
Date: Tue, 21 Apr 2026 19:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776798453
