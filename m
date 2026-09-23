Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B57221CA02
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 04:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790139034; cv=none; b=HkV3ft7LpEhppBVkD+40BSQ4GGZMVx41+M2xrzNxC+B0NwzENqDYKJUtlwKrQHJQhn4rlYpCfw6Hrgv26MCQMDiTBBqbBEWdZjBlhbH9oiC57HLATVjvUjI/3ozu76pqjPKfHM8uq/eWfjV9C4R8XGADiNWrk1DD81GIhuIBTak=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790139034; c=relaxed/simple;
	bh=HEL5IIVd16BbmpPq0rMcbXYoT/s7Bypw4f1dG9HSZas=;
	h=To:Subject:From:Message-Id:Date; b=Lgzf6/9cn12dwN5ZkAtNEMVlAai4pEjLH/N3xbsKR+K1cJO5LzjV0y73LYn+3n8JN1nYcfNFpQckuV/cJ4CWybURfy+JtPkTugFMsUP/x6uJdQn32pnwNrLdQ+d3yKRQA4UYxHyCP6/1w7ZiKZtZLiGc36rGKOtzjpDVCMAVc4U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OH2yI1sp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OH2yI1sp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F34CEC2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 04:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790139034;
	bh=HEL5IIVd16BbmpPq0rMcbXYoT/s7Bypw4f1dG9HSZas=;
	h=To:Subject:From:Date:From;
	b=OH2yI1spBiuX35TuofIUSV32qblaJa4kfsStsLxV6nTBgg4Tt6rXQXU2emaoTNwJR
	 30z0JfI1e9YP3Hm5awYCXQmFpehlX7+EJrpY0AbyWt2CFICemuB/OuFQ9c5FJnsXja
	 K15a/CHiUgtM7qkMPboZZOny0OGArlg18RLKKaRJ4yL5sBUvggwk+F8ZYAEwgyGinv
	 0nJHE8A192aJhy6tUu/4S99rpDcKUKj45ZuPw9hTp3bIal/zjn+KgH5VXbcC3N44/W
	 VUWWFxzwyf2LfyKySqGCQLB48EHzs21+CfqaOB7U3c0HiwO7RSRy5zO8PPfuOx86V+
	 OgWicrBSf0Ayw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C687AC98302
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 04:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179013903379.7105.12440067714485081173.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23a61f88d0fa0d00824967867e333ac8caddf9ab95b3ff7639b27564c4e10167
Date: Wed, 23 Sep 2026 04:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790139033
