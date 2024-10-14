Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 537B7137776
	for <ddprobe@lists.linux.dev>; Mon, 14 Oct 2024 23:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728947154; cv=none; b=ijQO6JYU/wqfD+LpkOFjdqnxgn45rFhYhk5Y4rru1cIWxHJal12jf0XBBvaMRpuN/1VQMUbKeIKXKy+Pnqtdxk4U1mqa2HflfbvL+fyFKmxeiJtALCUAcyMRzKNc/XVCHylBrYxwSZ86vMwa0BN0ty9ePzmo3YxmIpr9r7a+F20=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728947154; c=relaxed/simple;
	bh=A/0XUQALPKBldlYyXVBhVcKnJNXuwP/zE7O+MgLpJbw=;
	h=To:Subject:From:Message-Id:Date; b=LDVZwxILmY+7mDbF79m94Ut18PWJjgtus3cddmDdIGhOlOcuP6jP7FUpPlJ19gmXC6X00wKI+VuM0KEzPeE8E6xKBmf+FQwWExFLyWkBYYS4h0qXYRohqmjhFqAbLfE9jZHrlzgd2qH9qPwVE6D9RAM8yDntTbxaafZfCwFJYyI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qOpPCI31; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qOpPCI31"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B38A6C4CEC3
	for <ddprobe@lists.linux.dev>; Mon, 14 Oct 2024 23:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728947153;
	bh=A/0XUQALPKBldlYyXVBhVcKnJNXuwP/zE7O+MgLpJbw=;
	h=To:Subject:From:Date:From;
	b=qOpPCI318YmvISV8TXQCitT+EX6Yao9tlC2CTz2mc4z7z06jtFSNx+4Xjuu8kjMkW
	 qVzjpI8Ic//jGM1nGO9zPnT0MOTto2nrYzOhBpMoyPi6yoAHtdf8/3U6cNaEp6trDa
	 82SUlkMBWyV4yjDEQEzeDgeRpV0CCLQPDpK2avHNIko9Wekkr6avK3HbsF5svAFVNG
	 dBH3am9xyeVjg5Aadd34QlYX3nV/ANFwaFG9s6DeKcoAgaL1IkKuazcIec3EeuJdgp
	 cErnDfTeoM+jcubpc457uEubwkz4Q58JIabl8hc7tduCLHgfx7by0dwytzrAgf/s0J
	 fKY3NirzSmUFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9ABA9D18157
	for <ddprobe@lists.linux.dev>; Mon, 14 Oct 2024 23:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172894715359.31239.7009483696640737532.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8fe0a549a19a158a7fa63710af704b8c7456b3265b6c4ec196e822e6d77d0cd
Date: Mon, 14 Oct 2024 23:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728947153
