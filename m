Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1101C1CA81
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 17:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753033794; cv=none; b=VW9JecKKDhcTX6P+R+EGQwiV5LMdsQ6u3Wl42rL4obKyKSvqs3DKtvT5jIwYzXhG/3jG5iCp5cGL+nQEWmf0RQ5vbApKbAI7L60Fvb1B/swRdRan/aT7yMfufIxR2D6qcNh8PhBVmy6svqWnZY85ioc4fw0uHV0B8LZvOCfdLSY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753033794; c=relaxed/simple;
	bh=BvRFUhoVGK24oWwTdIFPKULRBgRhogS293iJfykHpRg=;
	h=To:Subject:From:Message-Id:Date; b=WzP2ph6UyfQMX2W0vkEWqCeRo0MdFIA7WVtul15OKKZU7uPAUtAQhrdNm0DUVrGoQmzCHj06Jb4kYSOuWAgzO4Z3PPBAI40bZuFTfe8QNXCS/JEMMqQZ3uW5MhX45hyI2PYSZJpOLejWqZuFfKoe83EMpfJFNB9qUEE+g9LK2F8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fizpsdv2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fizpsdv2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6EADC4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 17:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753033793;
	bh=BvRFUhoVGK24oWwTdIFPKULRBgRhogS293iJfykHpRg=;
	h=To:Subject:From:Date:From;
	b=fizpsdv2Q5QKTEq75C3Nc16f7V/8wGdWcDlPmpUEdH2/RpzSBYkxwa16wUauJb0mp
	 4EDt9bGhdfq0XmHXuqLtzqKVJz7YIl4phDyf/BpnT4Ps76P0AB45GJY1EurzN4Q2y/
	 tH/Rn+NKF1AVrqHvPg6a9eJKnSz0S/ZJ6tBO9oamGRSa+zWKQKR4CNvbFOgiTzGlbD
	 ehX/S/fM9+rj9PQwSDnoFiH7VhwldjoAxJnn39IqxmukGUsMlxYY9wBZwlaoaTm9a2
	 R6kuVyaZnl8S+7+t6deE5bdNk7nNsoER4t8hHgtpGxn/hQWdJCo1J4r9ajG2D5gikN
	 4uZfATxURPDGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93F3FC83F1A
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 17:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175303379357.13880.16992336401915083902.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6eb3cda59550b213ba09f4751226bee5c2d0d9cc8a479ee300338b6d779cdb1
Date: Sun, 20 Jul 2025 17:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753033793
