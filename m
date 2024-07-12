Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DF75174EFC
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 16:49:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720802963; cv=none; b=VkR/nraAoTBOqT7GhyUCPlfHYjiz16Eplu1dwlYrutcnl4OTuV0eUc3uyIkfLlwIYQ04AeasmExkpGDcnQZ6hLMBFUGvd6ol5j1TLa3LfdbMj30TnogqVSquGyFknOHMrQKJ5jG1/tI7jO7528jjGwVj/yh0VQR+/sNKCi+0aYs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720802963; c=relaxed/simple;
	bh=VQfyA9pC5E3bfpQcxoINcS6sO1hhjpgYmWOua9CRBM4=;
	h=To:Subject:From:Message-Id:Date; b=tRcz1cOAoiXdV+yDI3XBJXveU8VWOOMd755cLy7XlUHg1WgbfgU/oSeGq5ozOiXEF3+tk7yHHqKgvvY95p9wnt45dYYEV3QYAJhyRp7kHvqF+8+ZAsydwtNoeZJ6NFK1MvtD98bgULG9zeaoDgIonfE6sBK60bD3xvjS25AUpgw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qx6ThUni; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qx6ThUni"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EBE88C32782
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 16:49:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720802963;
	bh=VQfyA9pC5E3bfpQcxoINcS6sO1hhjpgYmWOua9CRBM4=;
	h=To:Subject:From:Date:From;
	b=qx6ThUni5P7zBWO52IQStOLk8IN559bxTYynm5QUhgMLJB3AlPY5WuhWZUC7qZ9VY
	 /5qxS213Bh2pKV/xqE9gY10LmXcRg40bkoWBp347YGo3AunWHQ4TTM5HL5Q0F1YNZ4
	 clBrcLkEkK/bz4HS8IpyBufwd348FAaLhUWr948vTU+mfjqqyGYYr06jPE0lblym7j
	 6ATzzLnnleVnJR6bE8XAvkwiwuHt/UcxYJHhhLFnsBXx1R0yFrxUNAkM7Ebx03olCx
	 gpt5LFLBxn67uSz7a6z5rXw/eRlZXugZr3Wp3pKfCkKFec94m+NKgBl9QkWYP1kHml
	 6VFj8Pq/bkkjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D6693C2BD09
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 16:49:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172080296285.20335.16893129264864201687.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eff046e5115b29228b19944623e23e4a40aabbccb30373a8cbe910f2cb6b2f59
Date: Fri, 12 Jul 2024 16:49:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720802962
