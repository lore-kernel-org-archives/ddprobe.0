Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45D7E3D81
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 17:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744135194; cv=none; b=iDS4sO2i7rP503cPGaAFhnDy27AxDgykdLFnUsuqZ2yXI03ZJKUASf9zvA/2IaTrp5nld7zjHFd3F1KpjHhNvFbFDMDcbSwPZ8uQbRAPb5lYRbdNvY/zxNnSr27xiagMh+eTdX5JhMHoLoha7O380SqIvYRVPXZ2KQNRUddWHzI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744135194; c=relaxed/simple;
	bh=gQVlUQBHlcJhfRNkriKj3E3W+iBICvLLTOelLont9S0=;
	h=To:Subject:From:Message-Id:Date; b=rjBt67J2r9DH4GDOQbDTdHpCWHrx7z6b1JlwRdVa+9YP/dQdVeIukBRL9dCWQ44ewtYztAnhkHiNb4gjJJzFwuno+tkHYhAopIjxupKFWSSIM6nIOaIo7a7dfJe+YuubWldVeQOAA8uFeL59El5qiexivROJFS/YzcP70ZZChsU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gIK1M6Lk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gIK1M6Lk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B40F8C4CEE5
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 17:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744135193;
	bh=gQVlUQBHlcJhfRNkriKj3E3W+iBICvLLTOelLont9S0=;
	h=To:Subject:From:Date:From;
	b=gIK1M6LkSziskq9SoXGKxQou+3QA7xVqfHoO/gIQlejmVrl0A+jXh33uIXDt7k3zH
	 QRI2SX3W3gbIr/+T1HHWI84xK3lTbIhm+ptHY6XPUStsf3TJxCGKNRIE+TDJhO8Izj
	 l7LkZHF/9M55q/0r2/EAxEHpdHiJnVWhY/XUSUmev29vupTWvC2Oxzpcog5XAIO3UG
	 FVd1H5QxPsxqCMOhgi64GdB8b8P0ihXaALH+exu+Qp9tuWcL1mtGgwOlj29rpfEWx6
	 gUizc46J9ORrE3r0ZRUetqPgYlgN161sDr0o6I2ayv2aPyBXfiaJ5qr6VOtxd9EHUs
	 1xaF0xXBgn1Lg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E5BAC369A2
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 17:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174413519363.19681.9657767436141900513.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2dfc3f2dd118d07d6f1310ab18b82dde6de745222cf76ae2c3677dcb1f093206
Date: Tue, 08 Apr 2025 17:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744135193
