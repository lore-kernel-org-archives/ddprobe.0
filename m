Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 465DC155312
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 16:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743956994; cv=none; b=VRqmuQVNYlfx0DanbI6QHDaarf/DLkl0N23H1gK40xop7yg9I7AnEhuqQYGTaBIRjIhrDssnzmsYFOzQfIyijJ5P+DBOmqLqSxqQh/7pD1P+EDToia1ACslmQzXG4I2wd6q5HdHeBitCLLrJ4QA3+fPUuik2DAxJQDmPlBXseSo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743956994; c=relaxed/simple;
	bh=a1qVDHBRjnt3phBrc9errIM6prQKpCkB49uNdfJ5mEQ=;
	h=To:Subject:From:Message-Id:Date; b=baf+6Sebg0bRQORNCIO1TZIxeWluCU0LTddQ9HxpmwKs6agFwF4x+Scba2/CsZk6EpnQoWoSzuQA/vayK3iEOsnT4fJZ+iQOyOsG+OJGO04YM69yGWYGSFxWk2zdt07rOctQX71jiaHmKBNof85hCL1jzAoXE6qXRxG7S1tFK0k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UrfUXY0f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UrfUXY0f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8468C4CEE3
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 16:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743956993;
	bh=a1qVDHBRjnt3phBrc9errIM6prQKpCkB49uNdfJ5mEQ=;
	h=To:Subject:From:Date:From;
	b=UrfUXY0fyEbXs/U+wRi4UrA/nNId6TfBiHp+LCKwcKWskHr/8qXG/Gix4pmLwDKOm
	 ul2CsKM/t1PK56bPNZzfiJGbMCEFnIgm9WA9INaTYFJgh7rXqApBkcGS+2izZwZH1R
	 ansvqGyhgxmA2wS8weG83xcyqUZfOOFBFmBMf0zIfnI/UTZQ/Ak5KOOKnSmghfCVkZ
	 fbFGvGNn7xmmF7/uw0OXTHYl+Gl4d5e9yX3DqRUX+T21Myz7k5dBxrO3OOOBx76yYZ
	 w+YGHLr0VFf7NgXC80Z8S/LeifBB9QtPetseuSrVE5/btBEOI9vXuAvWarSMo1wrVP
	 7LhN1Fqi6KXCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FEB9C36002
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 16:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174395699363.25547.1537893380427079037.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 08db9c0a7e687aa6fa9d936bfe841a3651dcadd3d28941ceffb8bb51b82cc12d
Date: Sun, 06 Apr 2025 16:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743956993
