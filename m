Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9659220C00A
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 23:11:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763421114; cv=none; b=TjCD6yZWVJCj60amRTeBQMs5XGVQpexowasOU9IwV5e5TkIxK+y0D39H7ZwKowQuRCUNG+yptipsR+InlUklQAqD7bq/3z+oF8NUAYMPvkxug6+CV3fW+V6UyELevnL6m+5Lmt++mupSZnWxgPNSkINy1WoY2my0MGhbX4sC7Lg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763421114; c=relaxed/simple;
	bh=qGnMkwnw0VvouExa6fqq9743RUsl7U4KPd2MyNRd2Mg=;
	h=To:Subject:From:Message-Id:Date; b=SVd2V3Ib6iFQOPD6jMny4o3XqK98pc7PVBbyYz4fwlt71nn91kAtaflwspmTcPy0ll76YaDcVn7Z1ffisGEAkoZvKAEgyBXDRPgHMBFTwsUgyrP/TAqw8XxPUR15kV+mpcXnFz61FicDPics9fjiH/M+NUR0ViXoPWAyDGgSOOA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=idmdADif; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="idmdADif"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D697FC116B1
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 23:11:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763421113;
	bh=qGnMkwnw0VvouExa6fqq9743RUsl7U4KPd2MyNRd2Mg=;
	h=To:Subject:From:Date:From;
	b=idmdADifgBW/mWJGsGKCngdcbpagplV7U7nzibsyGXc3XidJfQfYVWmjA8IftbRQ9
	 s2rfgm8bV5fFm5bFV3rVQsEkt0XouGayjflG12bc5TNjIZcGKK94UTjWoyzD8EAQU/
	 fSquor2ZGCZZMBzdJVkbqsGvSd9d+owKDMxbEmXZEdjrpgzwo0CsJc76krDZ8jYXx1
	 qArGB7mN9mr2b18NUjeGpu6d0PmX4fSxWDKMG+vYwgB/PMKjsm7BPXdlwawoAShjoO
	 AWo2YGOzOr3+gUPTe77DyodHbwU8E78/bE9kJQ6EFTb/XKLshGrl2l5c9gM0H6dC38
	 bGBEtwPfRqJeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FFE2CEACEF
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 23:11:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176342111358.27349.2797306253358848340.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff099216db695b514586ae9c93ce45d9b7a014ab8b22607497f8ba0e20b58b57
Date: Mon, 17 Nov 2025 23:11:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763421113
