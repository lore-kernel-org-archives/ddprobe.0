Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2325720CCE4
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 09:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750325394; cv=none; b=JgQQynEhgMRrXHzKYHBnLjnHkd1mHre0VOcJV8v4Wr3AKd7HzH1V9IsK3lKrtt5F+HrIr3ctikUIrWiwBkEOpDgWEVc9DT4ONHiUWrKBYhEYEoKXxft7ifc93QhDaD8vipYRCCsa8yr0UEbnF7fC/bb/69WJzWlu3ylo9WGGeYo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750325394; c=relaxed/simple;
	bh=WHry1H5eoUqVo/MgnWLPFiqXcKvigQkTulrJTws9NrY=;
	h=To:Subject:From:Message-Id:Date; b=ttlsJpqgNC5RqLy7TlSFE4n7w/rAyP9JYDhYqL5FYcvBi/lgPyQOWjyhJklud7tKjzBUzRrRRLcs+y/q+/NjaXGQKRv72vx5/yGIrLJHayn4itzjHPwl50YxIYfL0oq+P1maCleZ+jFniUQLuSK2D80e70jWxE8PHEE6aEBJPFM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=em141+wT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="em141+wT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0A71C4CEEA
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 09:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750325393;
	bh=WHry1H5eoUqVo/MgnWLPFiqXcKvigQkTulrJTws9NrY=;
	h=To:Subject:From:Date:From;
	b=em141+wTw3dUi2XpX5gegJUYN0KtnMv51SC5U8bJ/FIECSJ8C4jca7jQVG/To3Jz7
	 +yiQNf3Z/yeBCXnl/RSxFHPpuBntatJZNLCh3Oh6uL+KzsE/74ZhzTred3YUJGsG4s
	 ZLzIMQsoMofWUQp5UGF1ZQr8t8C0D5va+DZOTxdSzc4ZLLKRMZof/yQ1ibRk+TW7q2
	 kh7rQTUz6WyaW/DgjpEumZRTKFlTPSNoCsyzIWESbQX5i5SxUICy88H3BCUU4uW+iB
	 u/gYEWJuPW+7jx1l8e60sQsZ59uGEkjVzgqTWbEZZ0tVn/w1EdgjrNe1qnfRwuChLQ
	 KQw4fDZYY1guw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F372C7115B
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 09:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175032539357.14884.9651970300088059288.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 164bc3a499b10de258d7f31072e6cbaa22a7f4961a042f891dd964da023e516a
Date: Thu, 19 Jun 2025 09:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750325393
