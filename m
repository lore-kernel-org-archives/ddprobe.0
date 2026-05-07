Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E89CE2F8EB3
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 23:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778195854; cv=none; b=EuVDw/5yTWGZFEEDpbYboHsGNGvKi9GuYZtoucQp4jbONouZE9SNdwbqFmBWBIetJnc8PvkZ+1APgJhnGR9Y9tYtg5pmwZSAZBcHx8IummQbVshig6BfwjjB9d1VABaxRFsWZVKUnMlfeYJDxENPcZkuTBk2whYFQfz0RtFY1N0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778195854; c=relaxed/simple;
	bh=kRDbmfGsPO2H02gClpFZ0F/8MvN+PsutLlg4Sky3eak=;
	h=To:Subject:From:Message-Id:Date; b=HMtiYu89reCVKGt0xhz9NXMbyjQ1ELZfYK5JOH3u2Z8XQ86wpm7bppUBwa/rwaVdBzMhWGjtz2gpseq8sXojwFWb2j8xuUWtXmNErzm83+MhSe1M+Ged9QzBiScZmFY6hDjtHMK3ucSx/Uq03SycRzBhU0rUKWAFqjQB6SI1DT4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Oex82gSz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Oex82gSz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD88EC2BCB2
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 23:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778195853;
	bh=kRDbmfGsPO2H02gClpFZ0F/8MvN+PsutLlg4Sky3eak=;
	h=To:Subject:From:Date:From;
	b=Oex82gSz1fX5lJkYg5XPxO4j6NBCcKeIbNDp/g7oN/aluEJoTwedDZ8A59p7YYNqw
	 jzzMA5AIh1C3v3rmUldYWN1tqHhU6PWuCs5NWPi7KMZjYf05dSk3ZW8YJ4UiXJTQXL
	 2ZYhNhmVvatX3mjlBiGApaTShZZkMXAT0w/7ivHOFsR/GRjXYbbe2R9Xac7zLAW3YR
	 jcSPhvmeJTqqPvCN7jLY56iRP1FTR+j38jODt/xV19o1ZBoHs4dqyLMMFDC/wt7SgE
	 Cn/zd30AbmA3XpFDHCmQYDNa9IzJpm973RZHkYbYwRcg6KnWtFOrdMKQR+Dz6XsX8G
	 aPNAdtXgaFHXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE873CD343F
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 23:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177819585369.23691.2152934693970222086.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f79da12e17f1b6658911072153d918c4e2454b13399d8915d865e3f2c99dfbf0
Date: Thu, 07 May 2026 23:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778195853
