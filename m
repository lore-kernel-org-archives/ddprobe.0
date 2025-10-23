Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B9301D6DB5
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 02:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761187794; cv=none; b=mjWNR6yfxhnUO/QEbKAT87POJQS814wlNwRRXTkBq+QlxRlck+QQMg8HNOfc4zISATjoIvXBVnJVks3uqmXyhCG6u1uro+uaG2z5OB5FkHkXYn1rszFWvqIDJRp7g0FjkZ5PZ0JKYmgfalo/yQLOvhpMXc93WVdXYzNKW+uo+3s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761187794; c=relaxed/simple;
	bh=LobFMUBNol8RrC/UdiIw8wII6itW0qWiNRkqr8Cyuc4=;
	h=To:Subject:From:Message-Id:Date; b=quseGUC4G8yGIphGx97TcO4vWIyYaPFhqIrZU7XuwxDb9gjdI5N94+C2AenzPHoslVyGD1wdiQpwowiR0zI9QeWgTSgfzyXnZlp3pDSWQvCyPWzM2ge5mhMoASu3Cg7uXxSCLEtPMah2FvH3NoPrnF3hjsqk3LlDhccbjbt1kEs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T56zIC/c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T56zIC/c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0618C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 02:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761187793;
	bh=LobFMUBNol8RrC/UdiIw8wII6itW0qWiNRkqr8Cyuc4=;
	h=To:Subject:From:Date:From;
	b=T56zIC/cW1OOWw3YehYPYQHpY8AGy3QtNbjZjsMT0Of5IrUfOpO4MZ3gfh7n/c4GG
	 V9vQnj/F6GGcvCm6ooz538o9BeSiKNJMAd/r2d72EiqFDshrKtH/KCrJmT4p+BjJ28
	 wDj7n0M4VDQnFKyPpcFBjZ+L0ypH/st/n2LhaW2aQENpBIPQciGsnYxh1wPkL3U3IW
	 ihXAQo6zJmWDSjN0YEwn+4aRWreAa3IIkB3/m0ghE6fIhG9pQStgok78t6t+7Bti9f
	 uhGUfRMeRCtk0PjEIky3DeQlGzgk7lSs5nO+wbLD+3do68nivlV6eJLyLx7DX+2pme
	 /E6ZunT1eBuyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EBD9CCD1AB
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 02:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176118779357.30873.18177022936414659919.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b52bebb82563250e0706354626badc631da6af6a6720407bed0cca8f2a5f20c
Date: Thu, 23 Oct 2025 02:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761187793
