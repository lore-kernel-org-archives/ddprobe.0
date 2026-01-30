Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14A3633120C
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 06:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769755434; cv=none; b=TLBRNz+s/Dv7VMN92Ac0rIm1tCS7iaEEOpIZBhF9NOPEtB7aI0q2fGYBGU+zzHRavHcxUJeIY0d/4KfKbbChF82xz3xpo+ASbsYkCyPJVB2/pJEdl5aNs9gsTvVTPyOjJT/S1a0TFM2pS0DeOFGRDMh31i2C3ozq4Obkrwm22tk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769755434; c=relaxed/simple;
	bh=5oYGZXe3f7V4YRkLcN3SnU6POoL/EGJnt6Ut17mSxNc=;
	h=To:Subject:From:Message-Id:Date; b=CNnXblcMAC+feF2lrCH3E3MBPvCuHD6Ppg/fmXpqBgj38E5/keXqi3o0cCGfT6PAH9lxirKidRk7vwMC4rprIWEgul8FerI476Aa/Q47akjLIA+f/QSG2RClYTN27YNzQFdPexyKwrhq4i4+VK3nUJDIEzDdZ6eNjYlycf1Se18=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N4+iAw5f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N4+iAw5f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6DB4C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 06:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769755433;
	bh=5oYGZXe3f7V4YRkLcN3SnU6POoL/EGJnt6Ut17mSxNc=;
	h=To:Subject:From:Date:From;
	b=N4+iAw5fxpNhB3bPXOjyKHAQ7InTRpT4ZA8hMftur/5PrEDt3PEmbBEW4Rtu1GI/c
	 fk9l25JHtpQUVZrxMkzVndQofe30I/cV+fiQBygRspD3uAZqF3I6+TL8Erk2L0FVfC
	 I7+Ex1SRZir8oco46uX1OAGSu/ekUyp2TQUMhYmqQZm4oj33Rt44xqpp3XPNlEp9dc
	 B5vuBDQtvw3TCthvLmD8QGzA6dLcUfZJlmPkEOsKLImTNiPuiTlxoRL6BeIT/mmXXi
	 NJjk2o/ZFyLUNjorXlYJwLm+sv4Ab9/ZJ9lojxGot9eIIKvgVvTZVn+GZPPNVTdmmf
	 91G9wEb4BXqbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 950D0D46C1C
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 06:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176975543357.313.15690603964831004250.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e4152fe2b35e06f9a4ffa352480792085cd8cbd943c9df83c5c76892ef1a3eb
Date: Fri, 30 Jan 2026 06:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769755433
