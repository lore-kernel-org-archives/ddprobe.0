Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C4013595D
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 05:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747632595; cv=none; b=P/ox8PYFEQsQ5h+k+Y38JRAamAb9qP3OwZloFVQiSC2FOYACuSgtPKiXftG9TXbOflAUuImayX0M6rXYc98mcBiM040fSpPoVm5q66IveLhVdgSAy8zUwcDIUt8SHposabaapH3Fp5D6EsNyGSlT1gX6xljxn0SmkFyAPnQcvc8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747632595; c=relaxed/simple;
	bh=E0fCLo5XBSFbgny1NID6nr0+hBpIGwS4Zxxyh58Ac74=;
	h=To:Subject:From:Message-Id:Date; b=qWrZBAQa2pZ2J0aiAzuSARbuC9ORVCkoDlB8kgG1h/zzm9c5OUEcuaHY4NCw6idCC7As2/BN+Ed6mFBDAs0JWHWPtlSoVsy3uMUUoLzOu9EausgqzKXKVpn8gZahJPQcAtyn6BRRkTM9KhHCsEfeFGjZn+laQMhQ5ZEEtlJ+EPE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uqtcub88; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uqtcub88"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8203C4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 05:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747632593;
	bh=E0fCLo5XBSFbgny1NID6nr0+hBpIGwS4Zxxyh58Ac74=;
	h=To:Subject:From:Date:From;
	b=uqtcub88icbKKBvC+IJTHqQU7s25pyQn7W5Re6qbL2oV6nLPCiUnxpTXFlPR2k0m0
	 YGjiEpdZ0vh+2rTQzBCQz1k8ZLmaNIuBHkhjwMtE6ljb0rvK9LjcEg6uxjpR8RdQb4
	 0WFiI2oPo7NFYE/DR6zlZsT/bqiys475TJ1cMuy4s/R1cXeF6+9iN9qQPLOFBt8Ktx
	 KmRB6CJdrjxwWnfw8m9eQIl1CDOOGqt1ncU/Alq+Xr8guX1X/zS2/BeQl9MiInBwoo
	 td1WyKe/P4adM0eidZn1N38wC7VzhwRgiRlmPLbpno45+DVOZQaiH8ES+D8Dr8VoRE
	 WuOcw/xp49ocQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94D78C2D0CD
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 05:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174763259357.8435.10950327576865788231.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 354e6bf31818ade890bd6a6c0bf46db995f264660a1069dcf63b6af15e68cc84
Date: Mon, 19 May 2025 05:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747632593
