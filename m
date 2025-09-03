Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23E001917CD
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 02:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756865394; cv=none; b=t/iG5ZkffdgEOxeSn1c9ujvSnyLUemj08JCU+O4sig2QLpoJf1QA8Mlkiz7/QOMFVa0xwXCdRpPaOQ5DA0epZefIbjcJYBO/P+RrI+1v4P7tw5JDpthWMF1J8UKnDmTFMqwicUI9UoFtG5BaB6/iXJrVhsYOMHsPzqAdaMv34BE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756865394; c=relaxed/simple;
	bh=yStmBkwKbBIWzcoGsOqQVNmw5y7oIlXck+g5el1xGwM=;
	h=To:Subject:From:Message-Id:Date; b=Wc9onU8IihK0HduiUQZv6jbE4cEByiqWH/6vOAbQni0tPZZTc2siDITny1sBlzqFlFY8VpUCQ9sVe+Drb1+rJ6k8e9/gbfxHRGNwHBDRR6YI7H2qSDOe4Ghqk3xrFA6FQYYxGTEiud0WBbNXBxfgtOesNMUsULbhT7D1HSZfoJE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Me2gm9Xq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Me2gm9Xq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A44D8C4CEED
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 02:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756865393;
	bh=yStmBkwKbBIWzcoGsOqQVNmw5y7oIlXck+g5el1xGwM=;
	h=To:Subject:From:Date:From;
	b=Me2gm9XqKDhMNrcdu16/wEzBYibWbnrXrB/0jxBupWic62PWSPz+Cm0MUM6uj6yhX
	 eJkUkxw8Dre25Ay1afZSl34/tM0OKNqDgUudln3LGlSEqbr0PaiMBTKQBfrUCT10iA
	 XlPZV06Ym1R4B3DqwUi1ym53wWxTJfu2+SckyGxjF6dE7ilHJe4iGxhcfHgj5W1s5d
	 mRk2nZ7+5kgpCqKNROutf05FK49MFk5LbnfrAoI4OxSM9ugYA81GGwmm7Xs+5cFT7n
	 ZASqunmXk4axab7E78KgXLsX6SZcGCV5sOa2/n7rl0BjZiTCWlkVvcQuTpqk5Lphw5
	 W822afZ7l/1vg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F276CA1005
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 02:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175686539357.29452.4215266743107605974.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb2f37eed478a3e0b095135513b1f2e2c4619030276724694d115c6d347d1896
Date: Wed, 03 Sep 2025 02:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756865393
