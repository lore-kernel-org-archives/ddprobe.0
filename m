Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 322BD265CA9
	for <ddprobe@lists.linux.dev>; Fri, 14 Feb 2025 14:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739545134; cv=none; b=mdDhs7e5/BFu3OD1i+FKhd94AIU+cYYPz6WQw3I7q1vM/KaeN3BEtkd/VjUC1T7+p2680wAVfmcSgzU446mdivgEI1U/3COw5LAmPlFYPTmJFB5wfELmymvXa7XSyQM8AnaeV8qug3Kt72e3m7TVHjBHF7+Z5oYgpysbLpQ4rDg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739545134; c=relaxed/simple;
	bh=KivITgAd99yzAyJNEPl3xM8We6CK3rjWiCIQhe6hRv8=;
	h=To:Subject:From:Message-Id:Date; b=JaD9oxZWdiT6nO65vMOLme9lx1G4NGvl1IcGZZ7yHN1eOMCpSQkfIpZWKexnry/XEBsA5vBGh131dohigZ0UzoL3yyHBN+vCkZ2byYKumRoflh3rjLptzeqh6JApaW738KOMiFZ9YgLEZ4SX+3kHhoVbMwQbn14p9RATetfM06E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sgJGnJ8f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sgJGnJ8f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7F18C4CEDD
	for <ddprobe@lists.linux.dev>; Fri, 14 Feb 2025 14:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739545133;
	bh=KivITgAd99yzAyJNEPl3xM8We6CK3rjWiCIQhe6hRv8=;
	h=To:Subject:From:Date:From;
	b=sgJGnJ8fJYxXhWYlX/ZIZT3djZDKRIpX17UJwNuYI7+R4lzlJ8mhbIA7sbj7GWHR7
	 j5izqcYbpCUzO+qSJof/AwqbnKiBuWSAwr9kTo0PY5GzzaUskq72VhnldWmMkW9LHI
	 UoEE60Y20dWDSquGVp2Fz/FLjUOvmY7W79vMEBqyRTWO3UyrOl1RtPCoRInHGwPEgI
	 fKSH5DuUQM6cDpFUFDHzVa1wqBl03uauw20psENvTMoQ0qaNgofNIP5Ot40cKTnI3J
	 K0VlxIrWf4MboGhWF84rZi+Xf3mpIN90Uv1kqTOzaL0aGjLSpPKKE76CM4RQ+aqkpn
	 dxpepDS0VQHWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93C73C02198
	for <ddprobe@lists.linux.dev>; Fri, 14 Feb 2025 14:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173954513359.19901.8457673804534839898.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e35a06c13c218a4e67eed0e4c846889167486663d016ad389ea2666546ce4f2
Date: Fri, 14 Feb 2025 14:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739545133
