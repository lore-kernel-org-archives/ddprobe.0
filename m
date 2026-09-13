Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F983299920
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 06:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789280434; cv=none; b=MwpKusyHg5C2UzEhHscecYDYUHkSy4EcXCsQ/R4Q/1eECZJXIDmiNWfa/ZV+LvK7xJ+ZIpLbHk18GwXSi5OKJ8JQrvNuO8dg2CwTgkqJpNRyccUVF01UHzIy24TwC20GJE+lIv4ErShabELJ+kLwhzXTrGoTXNl+93QZ7MNiF28=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789280434; c=relaxed/simple;
	bh=CFqwARWTbM07WIakW0UBlziWhBoKMQMCAl3dfOH69kM=;
	h=To:Subject:From:Message-Id:Date; b=bBOtIZ7h+KFeb00AmNttz0m172KXQ6Jy0w1qyFh01FBcFsrb6tWu3qGswiEW3rjFvjJVZeFBjeD6lLKGUr1pAyD0XvJnRCyBVrJ/sgl/2WFUpJMg/4JeC+IAwcq14E5JXN1rlnDH5oAY5RLHX7/pYtpAIzAGSKkfrco/UCr5/bA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WUf3GBAO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WUf3GBAO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6D36C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 06:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789280433;
	bh=CFqwARWTbM07WIakW0UBlziWhBoKMQMCAl3dfOH69kM=;
	h=To:Subject:From:Date:From;
	b=WUf3GBAO15LDWcM5/vk3FTiAlk847hKx+MBOwCZXt7pmu5SwOY67UiyUXxv0Ltwdt
	 c22KnXAtQ558f+ELqDnEm7P+CScqC09eQdxYf+K1DGR1pqR7oNx/dZ1g4v9eTBvF8c
	 hp86LYfOIIDGT9H3f+YLxbIpTgH9RNG8FREwDmTAgz7jsZG9gzKQGmKCcqviHj9gbS
	 M0nEEkjQKpwQIeDtpnzVsmhY5hJL/54jA05HQumsLKlCX2Aj6AIt1jB3XHn54AW63d
	 tf7QFVkRIx5ZkWfkv9CHiJj+ueOSXrTfVtP5LYEGhQYozKTbzqkbiCuH3iJi/Ir36R
	 1gCehhWfyQ3Eg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF5ACC88E40
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 06:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178928043368.2106.10802065328314502924.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 238632e594d0d6e679288ff16c6694a9f321642200b1c12bde7813b179c25523
Date: Sun, 13 Sep 2026 06:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789280433
