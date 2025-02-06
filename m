Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55E94366
	for <ddprobe@lists.linux.dev>; Thu,  6 Feb 2025 00:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738800354; cv=none; b=i1VjRbsWQnAINqDhNQEWxzCKCK1zfi1es3+tNQgEDkhtnkNzbFZiJ6CMX9rGucJzqHQbws/yNE8TeTLPEMrivHa77hohblzFGGoKJdglEcOSf3uGQgAoLoS5hPAf8Hxnq8a/7JUSWQkgRfihfxRAWtzHChvzunehNp/F1nIShuA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738800354; c=relaxed/simple;
	bh=/J12KuRJ7VAf1e8b/8D7x0VWRujp6twg2F+RyKPpEHI=;
	h=To:Subject:From:Message-Id:Date; b=QCKOgJ2oq1XFmkMEJG1oYDIVPyaMgswTIzuTmJu/23wiB+LFXcNqM3OBABMp1bxvguj9QKEuYMlJpo3wYauIG+52wapBZVQIozX+Q/oS3Ghcm5JR1GqaoeJAzi1/PZCMPCKBlUPlAgAqwXr2ACIYGNJi23+gEqvYDrPHEuxA7h4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D+o6ZM4Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D+o6ZM4Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9EE1C4CED1
	for <ddprobe@lists.linux.dev>; Thu,  6 Feb 2025 00:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738800353;
	bh=/J12KuRJ7VAf1e8b/8D7x0VWRujp6twg2F+RyKPpEHI=;
	h=To:Subject:From:Date:From;
	b=D+o6ZM4Y7jOMFUteVJriLp9NQGvA0OeqInNwAnzcOTBONJltkRdU08LWcWgnqtI8b
	 Uhiav/YpcHe2a7DDB+N2e4gew37s+jwjYk8MaRzLjjhelDCriCUjm14RTmNvmfMYmK
	 YLWvzXvG5FlMIy0peuvabcYgo5BP8yYsS+4HVL6A6SYyq5Qf1bRWbdA5ZE/ESUEWx8
	 /EDA0OKiVROw2mP1bGPhDq9GHE/0hPKnCoIAWC224ZRDyp/MV9GGr6560E3tjRgO8x
	 h9COLApp9v22nJ0sBo91UN44cR5xGTdsi/jGlNmu6afwI0HheDZnN+exKwxX1fgm0Q
	 4g4xauupmk/nA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D304C02194
	for <ddprobe@lists.linux.dev>; Thu,  6 Feb 2025 00:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173880035362.26186.15338652047986016625.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e26b53a8e2fa56bd3686f7b41c0dc6a317541948fdb0a8d87935e8b93499d819
Date: Thu, 06 Feb 2025 00:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738800353
