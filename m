Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CFEE223DCE
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 07:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786780234; cv=none; b=KAH7h23jyfZMuaR3qfGf24r7Y6SHmVY81S2hxMPPNGEAhmpz/OR9X64Sp3jPPPcw2pWA6J5El25P8EW+HWRPTBzr/GCrciTsAFV7CWeZDTz/EVot2rXwHbE4G4LPZPi4JZvGq2sWAidZwTjkcUoZ5WuMmtTqV3qtpBqKz9M1PvQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786780234; c=relaxed/simple;
	bh=FKvVjmtRIyvJ/lYf7zLJ+ZChTJ27h1E18Qb+5lwyU90=;
	h=To:Subject:From:Message-Id:Date; b=nji/SDnPW65k4w5jAPekV4w0VrWTP8XWdsOzP57iWTLVNT0XeMTpO77z2c9hKwcoUe0tTseGaNvrtDiGdsRTXQn6RVMqzX5SI8qrdnh7KGQxuEQy9yQ2II8GDR+629aRpg180L6c9HC/SUueOsg86X2FVdWRZoFyVLD1JGxqUHA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SDS+kDAg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SDS+kDAg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6378C19425
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 07:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786780233;
	bh=FKvVjmtRIyvJ/lYf7zLJ+ZChTJ27h1E18Qb+5lwyU90=;
	h=To:Subject:From:Date:From;
	b=SDS+kDAgGYp8rOMGUQQBHWUm7fzfQQ88S+1RF0eMNSrWlB5qR3j2OQAm/qDvx8Qqj
	 BlzGX54K7pM7ZKDN0zBqVlynLN0SHcVJxrwtVX4Y2Q7PaMQ01aDSHmwatvXKG6D01I
	 W+QgmAao/rNtlzNUKOOuXe5LcQvZk9SS7Bmm5Yqti2eCZsNVVcA5Bz54I456QyTNLh
	 72d9IbQMYCXY4bgypdfSnFMxMyWdEu7aX5Ohebz2Hr/l/gxzPwZaCj8H4g0bFyXGlO
	 HLLMVtgb2npCSuYasJ3WcRTEbSh4JafzKTRqVQk/VsFwOikdtAUxW/FvMe7pl8EmgQ
	 EY1RMFZBWxZ/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACFF0C5AD5A
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 07:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178678023368.30475.2364877392553110337.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 90ae23dd9b0ae8c89dce439ce7a7123bce9f3adbcd997eaed9b26658f4ef9ebe
Date: Sat, 15 Aug 2026 07:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786780233
