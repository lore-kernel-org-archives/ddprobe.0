Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 403C838A73F
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 06:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790404234; cv=none; b=Yvecjw+gpaPwQy/3iVjw4DHp/XvIJrUaWLig69IcufycWuOzEFXmk7VFQN9x95n8Jj1XEdt9eqBrsJow6iTLZhFr6pl3npBen+3kyvNNHHCprZvYJicyyy5srwP0PG72+h74TCY0+4/4qSTqLRddAEL7w4SiHZ5Vh/UQzzGkuTw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790404234; c=relaxed/simple;
	bh=KU/lbjUCC2yb0OGKf+9swyXRDGsucsP6655EJc8rSbA=;
	h=To:Subject:From:Message-Id:Date; b=ju+ZaR61I5lkOAcTxehV01M6wWlf+9b1YvCogMVNTA9h7arNB+MfhxcnXg8zixvmt/weYAFFHtb27neUvdhUR+SAc5upTa7ooF/yycmvKnsNjvkPmleHkJ/y6uZ8rbyMEJ4M9WEoFrvfjTZfdPXVG0zZo/bok0XSn/HWqKGtu5o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r4AA+huZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r4AA+huZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0C79C2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 06:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790404233;
	bh=KU/lbjUCC2yb0OGKf+9swyXRDGsucsP6655EJc8rSbA=;
	h=To:Subject:From:Date:From;
	b=r4AA+huZIuoeESrQASotQvtrOfIqBGY/g/eL36zQ8bTHovPeyj26Rhc1yv9cLCTA9
	 I86NLgUAAs5JohYTHWT1teDOuwA4ZnrjlIndVICtnFpdmUli2v/bS76dYMx2dJmqo8
	 NlHVDPe3KZOR47gIlN+To0PsJvGdxV8EncfTE1YhFvwwKDyzGyt1MTDcgV4kmjJ5pM
	 jEzDL/SswRzFaCZYE4G1xlBA16FqDu12m6udsvyk6LIS3lqkNpdONU+pX6733ZWQHm
	 Qf8huCUIrGhp8p6zNN3wa3JRpZDWZYQ3PLZva0ju7uzerEp5hHMuIlAshML5vEPXZL
	 /9WhtGDXjNxlw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9882C9831E
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 06:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179040423368.9992.16864842157142366054.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81ac9495a011de2b9cb97276af0ca457076918ef2f36de05e29683bb02fba421
Date: Sat, 26 Sep 2026 06:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790404233
