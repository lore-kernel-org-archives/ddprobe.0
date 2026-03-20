Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 508853750A6
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 21:24:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774041894; cv=none; b=datO2oTFvertUMVlOiu5CCcKCPc4HLzlZbo/3wPQwE0u3h/bPI53LLV0+HZpbFW2eW51hDc0ERoN7WnVtc0o1OCPl+IzcD9aIgwvnM2nnimMf5fXThDplFtP4DSLGuanrcGz7z1VTZ9MBk7pR+c7bXXWVhsBYFtp0ML0TZ7lOv0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774041894; c=relaxed/simple;
	bh=K49xU2FAd2g/8x9MiWmgHsfRwi4LxNFJ579l1Sias4M=;
	h=To:Subject:From:Message-Id:Date; b=OQfMMLT3auwFlkLUmba49VF3RzSXj8XLirRWhkD/1J163FO5sc3r+Wp5wVlFH/DhtrpfyeUP10NTurKP1w7Ih2Z/iPSGfpSInOJCJCi7pX5Rk+Hi2+nbdYcpocTMSII2FbOZlB58ZY8S8IY4pouW+bItEkY7/krCkqOe8jmNg5M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cn+oDepF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cn+oDepF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3B4DC4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 21:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774041893;
	bh=K49xU2FAd2g/8x9MiWmgHsfRwi4LxNFJ579l1Sias4M=;
	h=To:Subject:From:Date:From;
	b=cn+oDepFODNeP1kSft93LA8wpwMDMGnD2CsYIBnpjn6wUqhZA+HK2qEg7/WfKXVSU
	 IG9Zs0+rpaWcR3+GKUCnKGNwayNTH8OAXpaVeptPc38eXmwQkF3xt3zk9tdfyKWVav
	 Pv7mBigMHQaq2YhryyghJaeraLrnJ+Wzls6IsAWQ1jwyX7PjvCupVU8WY6uU6VJCLR
	 tB3TsmZj2+0tGbJvpQbf2nfTg+dN+ziEsHLVoRcUtEu0g4x3IXcyag0l4uP62gT9Gt
	 zZDYImWW/yzRQhxOeIPyRWn8gcba1/ZRzGFGZPh0Lm/6VclNOgrVS2Q5tacv+S4vKv
	 jGpu2cq1XOKUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 911FF1099B40
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 21:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177404189358.20774.14907035511022958703.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 830aaa01d9484f7bd3b97f6e33d6f7e4baf15437b3427042d69046732ae13d81
Date: Fri, 20 Mar 2026 21:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774041893
