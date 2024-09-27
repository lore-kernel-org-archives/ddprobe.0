Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 187C33D69
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 00:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727397954; cv=none; b=PVG1IQm9loRPm8bHmf2DWGywAVWgzR3nTFeswyVE6Tg2QXALfSkKBJDzaJzkSzeiysIhtdw20LOZkSnxHtJUDmVvYKANA7yU8XZsNggka/upwTvsVaAZ56OFmqHOiyVijFE4R9SID13/dl818l3syx0P3QAOLMrDAEYtA7L0Ad8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727397954; c=relaxed/simple;
	bh=fChOyXO8+AeFlzX0hMbIFhLlGhZNDndbvWsXRLIlWxU=;
	h=To:Subject:From:Message-Id:Date; b=nF57b95jjXPYIUodegPRhdvZ2D3HA88no65/SRWxyYwxPGD/H+/4OmwGHwrN1nuNgHJkl87W21bKuUPJio3ptAH5c4ByyWYw5agdjWTuB3uMEuLolW5AGTSYHf80D13h9cjB7t7PXBfcYsA3Gj1Wo8R0a5Vm0mRcwCDsyOqRdf8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hgd9dhgC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hgd9dhgC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A66FDC4CEC5
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 00:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727397953;
	bh=fChOyXO8+AeFlzX0hMbIFhLlGhZNDndbvWsXRLIlWxU=;
	h=To:Subject:From:Date:From;
	b=hgd9dhgC9kFvZbkU8UlnShBYcXVGALGjnu+fc4GHACjaTDe1KgQyP/JX5lLGhHq3v
	 /MuaCC0zS6xuwGvLfZbcmHrmgQ+gz9r/faVXyzuG3QY/juiwx2HFq/iuhDveSuD2+L
	 SlEb8NEKEMAMWKKjOhY/5pFWVdVLgmwmm3quzlB6/S6aXN5pk7I+OGzVUhAcMz6asy
	 RuDvty8mSjcXAk1MYGTNInTMD7bTR+Tz2AouyWT00XfWnRlXesM2sV4Hf+WhjWdMbF
	 PffldcNl3vdKq1hcW09Qbfp2k48uYN5XiikNd9laZVUQJjlM8NNJPnf1qmAKaLoAH1
	 vBwnAv3ZRLClw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93177CEBF60
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 00:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172739795359.19939.17489773116895801946.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b658f8e917e4d123b4adc084b6a5bab3d25a366ad1e86c9800cbc20a9c94e72
Date: Fri, 27 Sep 2024 00:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727397953
