Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F58F22A4FE
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 23:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767740634; cv=none; b=gIrhEuTnFvS0OXtshKyRFKL3N7LB7Cw/nweIYEpamYtB7RT8e86tA/azybeGp4N3eKR8yX9oqyMPdaP4aXzvgIgKq0rECOvRmoHvW4VULr+0BaHrsOSy6LquELuaz7iEcC4CyXS+zWpTq/9unN2Br8HvV+VfKrKeNNddWC5ITpE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767740634; c=relaxed/simple;
	bh=W2+BuKnywf00+1yhiJXDrBxhOSNuBtxTtiYEtTHQgoQ=;
	h=To:Subject:From:Message-Id:Date; b=sivxIvK9Z9PMSCU4qJSp/qLNUAwnGZJPfVTGlUxAZ4gW4F6HMJdVFKKKhdXFl0Str80EhPyDIR2Pg9qQIT2z5oleQ7rwUuRyswhNJRpuWNASyxkF/+UKXjeaJSYc7SNL+bHORDagNWF6coyL3GjHfeMsLX3WvgJQ5oMAdYWieRs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QljGwHUP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QljGwHUP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A390DC116C6
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 23:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767740633;
	bh=W2+BuKnywf00+1yhiJXDrBxhOSNuBtxTtiYEtTHQgoQ=;
	h=To:Subject:From:Date:From;
	b=QljGwHUPOFT4pf0xlb7YkTkOCzMcBI8I2WM30Bh4jUwh13iLaHbzWAhEqw0OwUGtZ
	 MIDgQRpLkkZL+JTqF/CJyUdi78bBzewLTnYxz/Qzj96HorE8JbAQF3P/VUMnN5IYa5
	 IpNwPL2cngkhbGONP5qJwTlum1X44CiNXnqSsB+F6OcwawyTVlfDyP/jEWA22bC7gU
	 QM48XPvcPCOB5KFm8tBBLW7eCcMUKWU4W6B1+S52dUcpM3fFyuDy1k/3h8TqzZqk4+
	 mST8OOlOjvv7B4549PN1f29RCLPoJzhKrxfm3hGRJ67oq8gqQfLeat88LgtVjmmaVE
	 Xb2Q9x84dn8MQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F3BFCEFD1D
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 23:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176774063357.20782.8223565551420833401.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f2c896aea9dd436de11164d634ee68fc828a66ca56f0cdd90ff1a663ce65321
Date: Tue, 06 Jan 2026 23:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767740633
