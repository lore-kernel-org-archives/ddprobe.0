Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34F0B2A1B2
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 06:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776408454; cv=none; b=XkJRTk6MWAX+AI4EaGMm6ERY02MCr6IxLk6zJ8kUXWQn2K5lpQwjlhaH1OFYEemPxph7E7pYMOhznvj92AkzlLT0/e0xiKYKV3i7Yk0vs73LeQ6yuZUN6KsqyGIhFw1tjbSRx3FQ2dQxZqAAaFtqAgaKz7cD4sGjg7da4UH4VhI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776408454; c=relaxed/simple;
	bh=9qyskMu4bbSWpA1lHUPxAZQ+WVnJeUvtXi0JbJt7j2Q=;
	h=To:Subject:From:Message-Id:Date; b=RcR8N5igeYHCZ1WK+oP6uCrYHx7maIlH19aduCbfH1JbNeihulHZ4+ZvETqqoXvzEiVsw/C//oqpEKxdvF7K3SATq9VrUHGbaEa5PkPaLYur1Y/8CMVeqvOqROwFtd2v3bX4asM1lHA7d4IPdF0EVSoSdUjmg4gBd1t+8e98MvQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bRN7j+QM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bRN7j+QM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBEEDC2BCB4
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 06:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776408453;
	bh=9qyskMu4bbSWpA1lHUPxAZQ+WVnJeUvtXi0JbJt7j2Q=;
	h=To:Subject:From:Date:From;
	b=bRN7j+QM3sS1gwCGqqSSJQQySrsym7yud4I0V7K9nMk4vTvmDRY4ID2BZj9JP1KS1
	 RkDsUOkD/UrPEXwv2VfjSJOPxI4upRb/OdXgOL7ER3oqFtj+mH5nkACDDyZ2enMG+U
	 fMVwUyWIr0CPU9Wu7MmtWtKYkZPTJ+jABepkvqslbT/mTr9SXxjdLqlmttmRAzvPrc
	 03Yv0h6vUP2Ot+dj2xkikUhUfd90vVZWpvj9uPK7DvqGG/UeaHIZdzQRcbDZTZ5X0U
	 7AyuEKZh1PzbHH9zi576sFsgIWa77bS5D/JEsr0tp/mDLjsLjXwD83oz1UzDBQizH8
	 uYw4A8S5smnZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A973FF8E4AF
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 06:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177640845368.24351.5436176385588253356.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 400e73b8d6b527aa6ff8e64c939e50b9f66bb226305dd06f5ce766c2802ff22a
Date: Fri, 17 Apr 2026 06:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776408453
