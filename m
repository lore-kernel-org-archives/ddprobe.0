Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 067D72222A9
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 03:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774926294; cv=none; b=M5AfBJOJYpTR0LDjSFE4tFbU0OzKgLtprKrvu+SUoFpFNPUzGSQZxigEb6Lfwa8UUbS6AvLGTLFQNruSAaR6llB5OmWgOj3wPQPmOqSUiCnPtzuqC1U0XN2dR+Goc8j59+0GqMBeLhNXQ3Rvv7HlIk3aj+sAXvLVJOQFU1Xlu/4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774926294; c=relaxed/simple;
	bh=rcq47HiYwfDMNEhOxOHfN8tS9tOI/w6uNmLn6ZA+eXg=;
	h=To:Subject:From:Message-Id:Date; b=IOEzjk0+yTsvXGaQ0+Z3jZasdAKtKoQYBMNcU7p7UHq5hM/8FMMDvwizizKD4ciQUHZ/vBRjik+LlqzDGt9k9tnxwpJxnLEozkZP1PPGKfMk4RYSJpxrOl4EFkxCqSLUzTf5Twz69HjcS/8qryu5AXMZXWw7sPTwWS8fEyAL06E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XGM2L36J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XGM2L36J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2A32C4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 03:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774926293;
	bh=rcq47HiYwfDMNEhOxOHfN8tS9tOI/w6uNmLn6ZA+eXg=;
	h=To:Subject:From:Date:From;
	b=XGM2L36J+13CEno2rBFykKyH2iCq+43bilnGE9tX54BmkP58shtD7oJys4lgqGbks
	 qQ0WwQlTKOCjEUNyC3E4bUPo7smQAH8sGunjgPkbaa+F1qOSLHW6oyJbpz7eBQNMB+
	 pzejCkROSax6DrPA4ThaMHluBUnYt22nQq5oRtADqjkUPkUjLR6xcaNnY+1bCVzByz
	 qdcyxEgG83b9QXEKPRN4vMo4zFY9uYBoXRyl31ms1hco0H+VlFxwJbGiteJetHN4xb
	 yVMVL3c1dnkwszVn51KDKL4iyt5BG1w6+rKioREaTm3orqIor7ZQAwYVw7MO9PKMOv
	 2OOu/vuyBQX4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9149F1061B2B
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 03:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177492629358.6818.14741579398867055450.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f4de3ef306a4b66283d6ca5dfa3bddf907d43827df9ffbe6b6c9639954952dd6
Date: Tue, 31 Mar 2026 03:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774926293
