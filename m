Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13DF426F2BE
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 03:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757389796; cv=none; b=Jk0cP0LgL4cq1TBHj84JiAvJxdLZsgVGVcLb5u5EkfIbSMQmdzB8B00c5aNjGQ6C7THRWLa23dZMp6iR9a8ZiaWmBWDeZeoX3l9tOX9OV7yjbJ0/oYjchUEoVM1uSSatQsh4B2y8H461htvJNN7yeT8TfS8bxJVeC6TAN0azrGY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757389796; c=relaxed/simple;
	bh=GlOoYuexgWdepWGneC8GJdz0CNuvqFs0LcEaCLaulPE=;
	h=To:Subject:From:Message-Id:Date; b=Gd61Lxim2EUks5NwpU1zbK0Svt/GxSBv0zqmC/WMu0B4zA6+mA2iIC4DKJ9BUr7lIk/IaQqg/DJry0CgJdnLsi3qv7bQCLDBQOsFefTYm1OWscUuZuexbK2KPDDBi6wEN4dPmcESUzA3Nk/qWZIVab8hmIXhNeyxLOUcqoPuIhk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eauwzgTz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eauwzgTz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D545C4CEF5
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 03:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757389793;
	bh=GlOoYuexgWdepWGneC8GJdz0CNuvqFs0LcEaCLaulPE=;
	h=To:Subject:From:Date:From;
	b=eauwzgTzLNy5gj6D+uLmTI/lnXrkmELHx2ABJGnnQJ5u2zx8NDlqjJ6Kb8Dw2G3jX
	 eWUQ1ASel+e1kOHfP6Q1uzqPupLLnyZdL+TL59+gRUZ/HnJE0ccZ2rb4Z0hM63SjV8
	 aRU66Das8kyOEQGRjg9yP+SGlXKbR2h/lLgBMW13qJ5es1Jhsz7p7sXVhdmKe0DwbC
	 OyTjRr/UjYmsEoEYjlS5dOLmQRyKdIOOZUE5TQ+pwWZVwHKHnM0SjMzYT1FvBtFd2s
	 qG3wyp6+iWwqJdBoRy7UbUKGF9Lqt+cqQ4yQ9EhFavgDCVzJmvIIhnWcNbkB0foo2z
	 Bgs+4CnMPx27w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED12CA0FED
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 03:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175738979357.21502.7031934352833220940.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 33ddf60ccb6688987bad57d8f7491d9c9a91cf08d1b4846652636005ba573348
Date: Tue, 09 Sep 2025 03:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757389793
