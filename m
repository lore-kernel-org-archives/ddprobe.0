Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24B04EED8
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 01:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783732114; cv=none; b=tXAsk+/1qtMw8iBu+l0b7SqJyKxbuxYkufuBL2nWQ3Pgr3rgGx4jUj0Iy9rCqaAhiHGh8jd5viy4ALA7eF8f+fE94CA65hEwqCfgyVPBYqbPuo1PtTrJ9eS16ziHY+K2B8+FVlGEt8A1rlqngRRYun+uhvAYKybhCHLv83srN4o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783732114; c=relaxed/simple;
	bh=9L+H2vV9LxnHTQiWJUEGaeuWGe0VpyYgcy2xWwrHMDU=;
	h=To:Subject:From:Message-Id:Date; b=tIvQiE5WaDqx5ifJFRwR9HMtcLdxbBUw9PZ61X5nbGlN6RV9nhlnGTJM4yRmr3FdAe3NN69MrDJqXHD6+Sk//f7ElFJ/hrhv3xyzOkuuEfJN+eczR1AqQYEVOF8tzBBCLgojokWz3TfUMC0uchsnS7Oo1A+r/6MeUnyj/qe1E/A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ojTZOtcQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ojTZOtcQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB07AC2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 01:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783732113;
	bh=9L+H2vV9LxnHTQiWJUEGaeuWGe0VpyYgcy2xWwrHMDU=;
	h=To:Subject:From:Date:From;
	b=ojTZOtcQadV565d9d3RKw3hJutGZcehffI4KXcoMoo1Bxr4FvMkM82mzM6rTE5F54
	 AfcK/xEa//csanT1c4bgN9gvATX0RPC3/MNYyGSn9hSq6NXqO85JURcMN4bz4OP+UT
	 VIEOn0qMPGLlkv1UmMKv3n08sGEaR12E+bp6rpPOyLFrgLxf0fs4N5yohNAx7qTUsC
	 J16sAixfCUCU7S8brl3MbKuzZPjd+eQ9rfNavhiTThRCUGxGeD94f06xAouhJeoES+
	 zRRZphcl5s17d5edn5gy01D9a02gqtR4mLnmhAfDhPaovdsRoTiUnlcqxMibfjSRoE
	 lzTnJKDk00Bqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8E00C43458
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 01:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178373211368.10617.1784389514036497165.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55cee9298f75ca5f918f15beb0b94c76da03fa4c332aa56cb860b6afe968f4ae
Date: Sat, 11 Jul 2026 01:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783732113
