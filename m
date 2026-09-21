Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 637E4435EEA
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 08:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789978234; cv=none; b=aZ4+ccT9rs/M/qPj5aCfnoXs/Jl0EwHnlitbCHeH9Qn1zZL2mXMCTaEf1kjpK+cD7JSFZ0vRBR+jkf1sjO01F42O12vwFB84sLIY5ze26ycj5NQrh1MRV8rtEXoMmWdGnEGvW8WE8AGlrLWqvIhzaH/TGSQfXt3d7FtCFEVnTtw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789978234; c=relaxed/simple;
	bh=a2WR/pe9uOZU/dPlTOMGtfQBEtKux3GbAnVD/gXZM/M=;
	h=To:Subject:From:Message-Id:Date; b=By5tlULXxC1q/pP4uzXr7P1ln0c3IPPMnJGN3oazrftMTrOsdfTqAVpOvgfIXrOir+G9xgCZTMMt99VykaHmPuf3avM9rVETO1PQ28yRfdgk9TT2UwneKyR3qJonF7wSTJpbkdTIScIhFFI8r1nMoDWKxf11MUU4LuIAC52a0Cw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=odhv1+lt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="odhv1+lt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D79B8C2BCF6
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 08:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789978233;
	bh=a2WR/pe9uOZU/dPlTOMGtfQBEtKux3GbAnVD/gXZM/M=;
	h=To:Subject:From:Date:From;
	b=odhv1+ltNGrLah0y4hXxD4YQMTyiu7fumQdgg6k2kt9xptSfc36IMTCUQQ0fKmckD
	 mWZlbJRUQ6jCkf3s27rE18qc1c8Nhucl/a72a96A8bzcApHQk69IXMqxhSkNG0myRx
	 OiX9enNI4H2YBoCuMpc6T/2ggsaBZhuHybP6dXOxOi7pYMytxCf+Lno7HTSjGH9FPz
	 4j9DMdkxNfEr8asZhcalT4S0nnPmtI0qbKymqzB4LxL8JRbhQhrhLxpOzuZgNZT0wC
	 Gr290fo1Q0m73OU/dDstCh7RQrmmXZJTUGeCWFJSEi+NERPOBooeQAxvkQ5E3gYBtY
	 SVmcpLbI22JLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2A24C982E1
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 08:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178997823372.29228.17835573212161032661.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 57af4baf6cc83d2eb950bbda50b9ad1afd2a5831f68fbe21a995bbd8c09ff4ec
Date: Mon, 21 Sep 2026 08:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789978233
