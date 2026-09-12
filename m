Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71B9B386562
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 16:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789229434; cv=none; b=aR5eF3Oirkj91/yQQOzfMF2aqQEIsbqKhkBPXBSOP/vKaTIYqpk6mGJPWy648Jx7XnJEkyAyYPQ0+YAYrqeZlmlI3K9xUmdZZ3IFA0gIvaGXiHAHRFONFv9D3Yybq9tJ45F2MoC6jnpFZKLyQeo0WJKLJMx/7oBywqjQYMgdQ3E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789229434; c=relaxed/simple;
	bh=vVt6UwImEOo/z69KDTv/lICsac0aqO75NS5JUumV0gA=;
	h=To:Subject:From:Message-Id:Date; b=k+PPRXV8Bv7bJntVvTEIWjUMZR/qS9adSxqX+iGlbasS0d/lbFsD2moEE87aoKL31J22oEjuQwa3o72X2lOzbzsoVnPVfpr5L4CxqK7qCamMmcj+lIG/CebkRZ7UpMedJqIiVXHbFlAi9wihfJ3bnJGTdlCn0tAFzPVaLmyzosA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mhEjaKUZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mhEjaKUZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCD9BC2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 16:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789229433;
	bh=vVt6UwImEOo/z69KDTv/lICsac0aqO75NS5JUumV0gA=;
	h=To:Subject:From:Date:From;
	b=mhEjaKUZL7gfQaVhQPPzjSOgHEjko/ZoxstS4ncqtYcIGuW0JYGdJhQfZH0cBZgkg
	 14/UnVSsUD2ju+qO9E3ptnDohcoFLUIRVeGNMUkqftRGjKFaL/4t3SO1r/LUSbNJEH
	 5vwqJ+W8cID/6TJH8oEwiOtXpLxCOMS5m+pkCfkD4i4iblp+weFAaJGJt2DMvM7JML
	 AGK6I/M5QopN5mPtY4hQliJlidxkW2NB4DEt01OJUj90kf80f9dzibuM/F9wrexxw8
	 fjPgNAMcoOO20CRasbDeXrG0M7EwXyzXfXZfexLuqOQoS/05aGKiMctI+PET6xAGsA
	 PpIyi3p4/gSjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A91DFC88E56
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 16:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178922943368.10074.13055653628080002154.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 253629371afc11148790c23e80d51f2925900bfc026e58f89974bcc5d34fa181
Date: Sat, 12 Sep 2026 16:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789229433
