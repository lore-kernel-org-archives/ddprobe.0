Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BF3234FF45
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 16:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777306654; cv=none; b=X3VLIzEHKKO0eRlm3O8MKaq5nUUJo+AVE/j0SOXWeaKma0Wg0APuq5qdXmJntwGQ4R/UHCgkUh2KX1UAXGxcRtH0K2TLk9/OVl9gYwAatZf7lQySOULX1cBlyuhnyUHUWBiY0xEDKilXoJjSoWBzkUhS8D4nS6FHDanVbSJQr6s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777306654; c=relaxed/simple;
	bh=4tBLSYDXV24bhmt/pQEX1r/y0HM5yOwTzwdgURvBnKU=;
	h=To:Subject:From:Message-Id:Date; b=layH5YpXNy2ZLx2qWKqZhLM/fmsXvUedUwHGGEKO81ttScZ7b/9KwMmXpVGqtD1fbqaAeXLPnuvPM9pQCc+Qp0YyLF6sB06cpVDiH1LfYZdgQr5coondtpvuRfMDZElwGTUQpXMukolQHvNV2j/2hJZbs5w53tHXJgLIe3HjHBg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gSn+iMnI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gSn+iMnI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB149C19425
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 16:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777306653;
	bh=4tBLSYDXV24bhmt/pQEX1r/y0HM5yOwTzwdgURvBnKU=;
	h=To:Subject:From:Date:From;
	b=gSn+iMnIFOzDLvuyjJjHodskBG0YvHZBvlRZFDmGIy0ZChyZRPX7EPN75dAK1x86/
	 sCM08YCPQ3d1amykT5llhTJ45NJa/XuflhQg5mlGsEv4gShsrPdjOJvIRkEPPOhIKD
	 Ugu1zmvX2s2VVBjmOY/Zd4tRDhogyL1mJ1gAyQZb1uxrJASQLnsiMGtrvaRJ3TIZ1X
	 8Hb87q2IS6dovoNi806xpLF0vTVLkl1tQtEkmuy+hY3ij1L//PBbostRo4IiEcaRV8
	 Up/iLoaNmLFa6NyIfbz9qsYuN3mBKqZ7HByYvG0EDP/+BN/1Tn0jVrgbaFcWVm3SX9
	 2GhJfa1vE2Riw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB753FF8860
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 16:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177730665369.28588.9916186226540199190.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f80df186fceaa5eb6118bec9dfd661fe1b7d9f9f8fe99727700075de9abd7b4a
Date: Mon, 27 Apr 2026 16:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777306653
