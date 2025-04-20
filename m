Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C70B20C01C
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 15:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745164794; cv=none; b=tU+rlPH65lr004Zh9SBrWoUyOLtTbjpudSgG6qK6xJAcdvCAV2UlV79YNlYALM1BSaewFMGiUaJ9orNaCShvMb47TCiuOm5l9/UauwaRyDVE/TnLIYrz3X7hGe0Qu9W5JmsrLtHWQaicwNOQW46/M6UsDtHZCCATNFuvXUE/Hvk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745164794; c=relaxed/simple;
	bh=dGZ3SvevBqxsQ7NOC5Xxdg0K1UCZ4Tq9sgounFgusYI=;
	h=To:Subject:From:Message-Id:Date; b=JTDMMhmlLRh95LLUmjanYxMDX4bAsbBKnWYl43hq3wCr2LuzH76xhlf6qyhVhNFFB5BkGlxjAUUVUoU9MgPkO/C2fiFxeHtXYsSI8gAYQJcqVtHVcnusH0FDqisWoDmG0cOFvNDWvWP6qbSpe3HqvdCvKx9wyNo+SDe4oIhN0UI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XsejfzIM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XsejfzIM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B365AC4CEE2
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 15:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745164793;
	bh=dGZ3SvevBqxsQ7NOC5Xxdg0K1UCZ4Tq9sgounFgusYI=;
	h=To:Subject:From:Date:From;
	b=XsejfzIM691V3rLzU/7FNzgLDnqvaSMYt7Bsuu/KTTEKwnpbhIjaquryMeYL7yFxa
	 2Li7JvPq9jHjiD049EcqFP4ptQgvrVSHtdZtplKUhb1JL8s/knGdhEpYn2krq357Nb
	 VaV1Lt06jCNZf0JPA/iD3Qc3Gd1dLM8XGP0VjCHbYubR1eLKJ+1Nr1IDQO3IDkS1ED
	 959vg4wgWM6oo8PuLG5hBiXD6UnLzeMiC9cfUg7lVQkCKctymRTAt0oYthFNUZjRVg
	 kqo8YZie7Sy0zb8nCCCi+Dkxwbb2xXQgzDYX/eJsimHA3jtcxzPEgjqqMFFLVaHTXu
	 2ohBwICqZeM+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E7B1C369C2
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 15:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174516479361.31292.3149801010266089238.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 18899727b16e5982995e3eb06865a495ddad399f19d9e323eab56f19c724d8f9
Date: Sun, 20 Apr 2025 15:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745164793
