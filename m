Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CBF91F5E6
	for <ddprobe@lists.linux.dev>; Sun,  2 Feb 2025 11:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738494354; cv=none; b=rCyx5+I8NPNoKtZN+2yxmE2qRpUEFa7V+U8ZUgn017NiRZUv6I+Isbb29aEdoYIIz32uPcVED6p9uv5r4qaxp7OMMj3PFapMWCqxXrN3TUUKd/pLgn32b2AKUuh09Y9YLOmkK7fkT47QsUONbdgqKTGbi7csSnm1hxO7pe1q06I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738494354; c=relaxed/simple;
	bh=CD2BwwR6YEUCTto3RQTwTOqz36U1d68TzyuOIaU92+U=;
	h=To:Subject:From:Message-Id:Date; b=Cuq62NBThJZhw0ZZsS9KYi6bbjjkd4YFCu0WD6ZPrUOCSjo7Drn5GJEDNX93zPqjGfr7pGJSVRaxusVsOnavhaRo/i8ziBI3sn3B+2e7FoPk+hn2DdO3F8mv63EbSFiTcDXrO4/8vuU0nkHmKDb1MqtsoTfaoSxpXgzhy+KJmKQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jDEUImpx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jDEUImpx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1329C4CED1
	for <ddprobe@lists.linux.dev>; Sun,  2 Feb 2025 11:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738494353;
	bh=CD2BwwR6YEUCTto3RQTwTOqz36U1d68TzyuOIaU92+U=;
	h=To:Subject:From:Date:From;
	b=jDEUImpxqO+XGVtlnTSv/Ux7R7swS5ZwqeCVm8+7Ocs/43iIWDSYJ1DahRm6G4WWY
	 AUuyr+6vycYH6UOPZ5WMfGFSpRC9FB8Os3BetVdAq6cpZznxPUxoXbn/PwCYzh8A59
	 PvWp8Q6AF2miracIQyO56v1YHblIAeH5Ey9QX9WkcQQW2rs2Ytc9C6k9Rmo2hm03mZ
	 yY737vsXcKl8ub7X/ZgcLGIyP+dABDV6YMdwLpVcm/BOOjtfWTQ6OE05yRgv60N+bb
	 GrmRLtmyKr5rHzEzwRyiJk9cqQeekzG/mLjjbX7muKgCQ07coOxBpfqVhRK5WOkNyp
	 Kxd72i/9GCQaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C5E4C0218F
	for <ddprobe@lists.linux.dev>; Sun,  2 Feb 2025 11:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173849435359.2112.10667282417203469559.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f8b7f88cb26938ca82890db6d6c56c2c8c343147988425e982e21de93fc806d
Date: Sun, 02 Feb 2025 11:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738494353
