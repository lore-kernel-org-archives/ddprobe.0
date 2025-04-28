Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FD1927935F
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 16:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745857194; cv=none; b=N0yjsXVr4ZDDYiuV9nDL1BtXOoUkuv8y5+Vv/9jQ2ZtH6qIVpysShAg88jKYpm3Yat4vmmYP34F/E573H5eq21HBor6dgTg2ki1VHTifDtkwQHu0D4ojTHZS9tA2qNXf+a5jOd9sNXi7Fnd6ib71Ic8X0WUZl2EBZMoKjCNEVWA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745857194; c=relaxed/simple;
	bh=cIqhR7GjCMnc0ETin2WN8gLxjjejowXHQpL8Fr3kYa4=;
	h=To:Subject:From:Message-Id:Date; b=UYHqCMSOda7GB5bzJhNKK9lF9xJKIxHjrIR4apK115x0oJDrUa1D//4oV71E4kZJaY+Myet/t+/y5k3ezBbAesF9dsOxScC3tnSk4FKBXmIiJrqbpWGHqvWU4HN1gde9WzLs7QdDLLyQG7GP7yPx5bM83W8OqUb36gg17A4F54A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hUWj6jN4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hUWj6jN4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA6FEC4CEEC
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 16:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745857193;
	bh=cIqhR7GjCMnc0ETin2WN8gLxjjejowXHQpL8Fr3kYa4=;
	h=To:Subject:From:Date:From;
	b=hUWj6jN4x+iMWE7aQW5HMyyJWRmmNyXHoqWUjkNjDT8JKaGyrRDMkzSsyFOqRkwp2
	 DNIJ4N6NX/pAiljjD8XWD8Cm0wzD+PZe+Z6hD+ReVT08iY6oskpovNc9WAG4qcksEI
	 cjxNnAceKHbtC3/mCUAHFcuOrcVldJtTXavnUsqVHSflaHW9hYfLVaeJj/ZarACwQy
	 lNq7AUwhmrdTQAjsgGDfUHhbLvXkDPTC6z0+IYH80JTBwkPYstrpND5E9t1k3fS1qN
	 4R+CzkkKu6Ew0Fc84ANiKqCMXPCTykefN6UjCrjiMj+YxbjLbrlydo7fY7SP9BTZDV
	 hLU1EvGJ+PmVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98C00C369D5
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 16:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174585719361.9864.5714157493678524290.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7955a86d06f35c43bdc57f98f093f38ac1245106ac9fb204ac6da48e1a87aa43
Date: Mon, 28 Apr 2025 16:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745857193
