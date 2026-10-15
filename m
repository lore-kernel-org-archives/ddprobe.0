Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E8F238C421
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 08:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792051834; cv=none; b=X/u50SQQb0ZKegt3AyhdMnhTrehflrTxsNUzrwSSOx/Ur65Ky61C3Pzj3tjI8F2aod1sYSxBuAglxiBcY2+x4S5Wj3P/DZ9NUo7UoQ3nWQQuqgstyaAMze9Blz4hMegHX3tzFT6vW7cqqz+mVay5fKH/7esRLT1GxaAW+LlwC1E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792051834; c=relaxed/simple;
	bh=xUOJmHGzV0jXojHJYrqDNiHshGk7NFuk1g4VYqBqigI=;
	h=To:Subject:From:Message-Id:Date; b=PeXhzVIrgbZ2pkieaQ3LFAjFpd7fG6ucJBNUmgkx4hkahhFdl8b4BbVFkCagcuUC0uODqDBChtTwwEV7Ds2jiFtj1W2qOaQH42lEGG1wQmcDw7/LjeY6BLRNBxiEPlull/j+67BPuISn+grEOp7oEAJP65ZRVOP+8x6WPtzBW0U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r3nG3gb+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r3nG3gb+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3ADBC2BCF4
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 08:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792051833;
	bh=xUOJmHGzV0jXojHJYrqDNiHshGk7NFuk1g4VYqBqigI=;
	h=To:Subject:From:Date:From;
	b=r3nG3gb+6cQE5Lh2IfFcVoj0vl1MEi0vU9vfy9aNoyOkSCkhs9FXm4x6FDnASaAzA
	 1adM3PVf7pRpGICcm4fazOErrnvbYAn3w3rDw3VbGrAHlGnaqkTvQJMH6qefCB1jO+
	 47JsnDZ4scI+VnXYN6Gq+Eqe/E06ZnrEXktDmr4VKhBRIJQOew9HmaINBZRqsD0nND
	 QCv7lmIgIp5NW4EDFlDHETQxHcJ9ThcGHde1AC4zp+u762wbiAQDHuQtvMzi4C6/5D
	 Cje2gcYHWkhGGRRRzWL6gAjvbYmF/jZ0BB167At7whg8cqAM87q5bn5Dw31mPja9HV
	 9PAxIxBq6xT3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB402CC6B34
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 08:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179205183368.10784.12967778730229522246.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3129879c3beb46de986557f7943d308b2f48c47f93b75f0c5e9714fd3a70f7af
Date: Thu, 15 Oct 2026 08:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792051833
