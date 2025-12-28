Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24EDB25DB0D
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 15:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766935434; cv=none; b=iAH/0U0P4EBLcVJgriYo8o3a+DV7jxSpAT3AC2XeZagFeqEZdAYnt/Xu1Cos5kfvdenk5o3uI8QPFF93XsGFT38PHY9VaULpTk4lLGYI7znjaOtoxCXQ9mM1TU7suSZ01hG8wMTi0dZgwX2+mUH0tJdlzScrRnxlW+ugw156pXo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766935434; c=relaxed/simple;
	bh=6EwZMAMH9GwPwbZ0F6gLXbB9UpSGhAOqyqvnGVSaUq8=;
	h=To:Subject:From:Message-Id:Date; b=XK9iRoKyH9hAjrOwD+o7RxJwvy1PUSXejfEODcWD0Dfm9tIh6OVoQ92pnw6iB627Q2z/DnveEmWYAr7AVTXVbkI7D1xZtXvC11HXUoEAKXcW2bwMl6ZXqrm+6q+4STQSi1L8vz8Fd9AMz3soiay4WQZoOqoHw+kYeBW6ZHyyFOU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qHgJ4oit; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qHgJ4oit"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8E27C4CEFB
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 15:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766935433;
	bh=6EwZMAMH9GwPwbZ0F6gLXbB9UpSGhAOqyqvnGVSaUq8=;
	h=To:Subject:From:Date:From;
	b=qHgJ4oitSdrWLm+VijmPWWE7x7U5zOcdOcGJ+l7KF7oGV6Uk8dUHFcl2wp/F5QLXQ
	 sIHJMNrX2m7WRVoD93DlSgUH7cnWNAPiLUA+WdPRDOUfBwy2PnMbcKrXbB/q/dyAMs
	 3vZlaSbDCyflLGXKr4D470I7KKLRjwmj6laXCCw2HrgFFJrq9BBws1Ehrl4O/S+qwQ
	 0aQMYxqUBQ0qlIOjwdA/h3YzoH30laTSZFJOpoQE8ScK6vC5SUVxn5ttsNjp70SPVt
	 cePJaHLyAhSdzhwdGOlt2tZbNd9xRR624uDChju/oqPPLrelcXxBn8Qfft29FxDN05
	 NKrO5kQ8BAFmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 918D1E784BE
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 15:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176693543358.32155.4387954140309135919.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0aabe7e404b3898605a2cba0a707a248b22506d97893e9369328b01de5a01035
Date: Sun, 28 Dec 2025 15:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766935433
