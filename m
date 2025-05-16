Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4ABF322DA15
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 23:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747437594; cv=none; b=drNmUeiBKr/9shHIRC2Nvc0pttTsluEK1sU6ycnMDenaJLVfgC+Aw3KIVix2jX69AciasaRvZGktIO5vj+MAyGkXN91l7iTxPypUjvR2cevBtvV2w1+Xo5DO9nwTh5cMyc7g8dCTJXwWgpQVADljHtawrVWB2A4nW/ChHjmi0Kg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747437594; c=relaxed/simple;
	bh=ySBHwQmxk9mTqk6xHOy9MBomuXAskkpJrGZumS1pAHI=;
	h=To:Subject:From:Message-Id:Date; b=j0nlACQD4/tqbUV/+Y4/OvpTPdL8L+QCK1gB77T0wNudpwIvba5aRUGoTM7TQz9cMNme+vy7WdecIpgsBG7ShueHSjmtJ0uqMD+gMw1AzR+wKisn63DGcSiQAiWUMttkrlOx7dNFDKxBeH2aK0dEJC1DlL+Uyd5ZWD9auHbeRug=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kkZKhUxz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kkZKhUxz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0B4AC4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 23:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747437593;
	bh=ySBHwQmxk9mTqk6xHOy9MBomuXAskkpJrGZumS1pAHI=;
	h=To:Subject:From:Date:From;
	b=kkZKhUxz/VPvNwlkTdBjvHqrEt+IM6ue8OKod132b3BbZTJTqMMm+168KO/ohGAAe
	 YoZmjPTgue61cFbMMICCbw+lsGlybo8sQm+rzBqBAeKtI5afJ/diQCujUCDWmNQ6Pa
	 x9EzoHSCcPadswKXe/4j9Bu3nMrjX77lt0V/rBo/6AVk6i0VY5xB4I/d/ViTncN2og
	 7+ezzlLhIPbDERfTCD8dGFE0qCW6rws3wTMbzeuD/rhur0IHnTLn1+EQArfzSIrgG7
	 W6okzUA174g/mZ5JCH1T76quBduYCNQ4bHKL5t6Y5tnEBt3m2gR0Q/gOwq8p5MI+6X
	 84lwUwxNSxSsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ECB2C3ABC9
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 23:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174743759357.18971.2162260884966731925.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ddeca7f48f92e7095ab55859765b01ffe883a97b0c2603107c168254fd92558
Date: Fri, 16 May 2025 23:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747437593
