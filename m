Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2119119066D
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 00:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759105794; cv=none; b=LLcLw62JNsK0m6qDM5kI9ghqs84IDsEc2XVyrWz+5V1tKC/Ld1KBJrjIr8M28NRablI/LDRLYyrHXUecf05Q0BbqHpJ9/NBZN+S4TQL/n7PGlJKtB3Q0+BP1Q6/sgI+qviKjYYP5utszWJNqn++o9wI+S06P2sO6prnoPiTEN/E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759105794; c=relaxed/simple;
	bh=s0NQ9CbfzBaHTbv1bx6dTKJ/wsTepMkhn0shRfpJi5s=;
	h=To:Subject:From:Message-Id:Date; b=scw6xLcwjWDHb0WJnW8YUNZloX39lT7KdRJHOvt+DbaM9KI8+hXMei0U3e+mt2hcQrxQGkiHbuQNZj4/ByLeFMd28yqprwyeDh1Hkr3OD71FB0dd7/syO3T7XwlubNCzQ/DXW/NtmVepdxYKS55VXS4bg2rivBxMPeziJTNk0HY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W7HlA1qy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W7HlA1qy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F5F9C4CEF0
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 00:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759105793;
	bh=s0NQ9CbfzBaHTbv1bx6dTKJ/wsTepMkhn0shRfpJi5s=;
	h=To:Subject:From:Date:From;
	b=W7HlA1qy6fwoz4aUTLNioWV2FbYfokJMEliyP6bBRdMZP3M4NEIfbYAEhDl3ZsOPZ
	 Jg0aVioHWTR3zdpg1RKqGXm3WmypknupSlhry9UV6SqwCU2ubmmUglY6M32TT3JIWY
	 5JQ8ElUf6ElCCkANSyHDbOXq6WhMlP4yLkSYiV+x9T2ktJoLYpcxnfhPM0+KLVkM7w
	 /zyukv5jqsWyPPGu5oApvn/PlD9qPsMxdVcyrRySE8/5wNydMpoikwXHFRWTbBrAnM
	 u0lgtZAP0DkZ+gYOw91dKtCnBgEgEzS8KuKET39RMdGitaoXdRhKdiCFAZ5SEkk9IY
	 5z2auREON5GSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F479CAC5B5
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 00:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175910579357.30933.9185823325406522135.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7bda99b57ff766ee62896c5469d5f58e72a087b96e169e30f5fb866d00a55e7f
Date: Mon, 29 Sep 2025 00:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759105793
