Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F4F9191F94
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 02:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784945434; cv=none; b=KnHc6t5abgWjjEef1AcSJF8qprYpOlNgYdWibZ7ozyuYe9XGv/QJ0hKDQDov6zKXgK4j9R3YXuTxWnJlZ8dFmwLQONXgOehx29hxFmA+8U9X/20lzlkoPpXHZYI3AeXFN9KWkJaXjDnbLtVdQ6nJ7cUo785AJQ6x/8vdTCXIR0Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784945434; c=relaxed/simple;
	bh=aLbkg7nor6bzjwCSA3quzJ3Zq1r2FIu9hqoZF0n3V/Y=;
	h=To:Subject:From:Message-Id:Date; b=M+cPlCaQ/++lXIIQDPJVFvMB6bnHPGKx3cYvgn8JINoSC6KQ4EO8Tb8TFf2vsc07hV6DRebXaU7pqBD7kFNCSoz2EvbBpHCnzMsaY3kNpt5FaVQhwLYFETqNb4mXVx+HPQ3oXbDhgh+g/i7QKx1QB77c54pSEVBRaVtT4nIaL0E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qLZj2Dqr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qLZj2Dqr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4FD7C19425
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 02:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784945433;
	bh=aLbkg7nor6bzjwCSA3quzJ3Zq1r2FIu9hqoZF0n3V/Y=;
	h=To:Subject:From:Date:From;
	b=qLZj2Dqr2z0ErafmStxnnMezr2ojRG2/j49XhtmewC4wxfVXCDmDo7xJbxP6C9cEf
	 xj/v2uwWltESdHEZMLshVxFy126AbVBQkkpgln0APpA8B+mCjKePDxfXJ/S5ZVx1/v
	 PHdEF/N8CZB86nvuFT+UUSkALW2NQ/2OJ88LaUPq/u2nQPD8cSNHXvlbyNT59KnMh/
	 dN1coipvHrdwE2tE3eLOhS8o3j2rzHd3fg5z3sun3VkIuiYBnPFjrXxvkUNJrQ5t7a
	 1yQ2fKkt1AXVNsBCyKjL5tqUGPnaWYNA9J/6iqwK+eT00t3HskzzjtE5LGIBNymErb
	 MbmLkxeeoK2kA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF817C531FC
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 02:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178494543368.11854.16693124363920720186.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3bfc4eb9c33ec92baf15e9d33174dc08180c59324ffc428d64397c7498d82eae
Date: Sat, 25 Jul 2026 02:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784945433
