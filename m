Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BCFC4A23
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 04:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769316834; cv=none; b=ok5MQZAOF/i2RIjWs0jdQ2Fh5pQjVrggtxLf0oIQC6HaZ7uv7UCMvSTKrwR/5suLrVcWQiV8b5OnZZmVCOrooSoNGqYyPQyDQf5MT+9lfz4/Swi70TXE4Jfy176G9gf1VVoThUw6Pc3sneT4q5sNYHjo3w0mEOs/nnMSlwP3QqQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769316834; c=relaxed/simple;
	bh=V6Wnw7OuX1o29Px8BUmvBRHbjgtNPky1oxqhJ1ERDzU=;
	h=To:Subject:From:Message-Id:Date; b=Qi80VkOLTn+oIXC6kFjQ0+AOVHWcIic4nORMuQiuSWY3Dy81F3GeCitQ1nY2uHhfTi2u4N4pVeEHxQP0n7p3N1/DhahWlw5RAQQM1ZvRJPHWBoXAF1taoPQGpZuC9DyjSs6bJrqPHNZPSxQUjyzC686RPuZn6j6bHF02a/SXXas=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DzVIsiPt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DzVIsiPt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A761DC4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 04:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769316833;
	bh=V6Wnw7OuX1o29Px8BUmvBRHbjgtNPky1oxqhJ1ERDzU=;
	h=To:Subject:From:Date:From;
	b=DzVIsiPt0qcZgsJycvdJLOIfzDJ2RDGv7bPB6nSPNJn8/MfA86ijai2OkTqmjPHTy
	 g2kysN58ezRs9JSQ4qgJRbziKbLXxBcM5RrLElydg9xLtgTIvV650vPIOHRcgqH/lN
	 e2vvRHjKUbfCPXc0yaQVyoYgLmcNJVMEYGM7IHYuCjPG7xfTCVfKs8d0qArRnjPR6V
	 0KoWWzNF5CwxfBMTRgo0nXs1Rm/U1J7yM3do/PMtPTjOXLtKEVSHBStBVwZtlKovr3
	 P+/9LkKSaaTPe7p8/I3FS1uATjMBcufAaMh250OsLXaVUSd8upnQr9WomrI0EITLx3
	 hbdoxzGM1pKUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 931B0E63C82
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 04:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176931683358.20486.5097761232868857818.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f8bbcad625ca13a5d044cbad437ce371e6b46e987c3db7eb35f7e8f9b377f2d
Date: Sun, 25 Jan 2026 04:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769316833
