Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D01894279FC
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 12:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777984053; cv=none; b=RluL1yZhibEjGGLgW1ou5TImldIFK3O30UVbAmlrv/9Y6s7fZC/44ClTZFGWowmnzfr0s7O/A8TVMibB67WimBqH0ZqOHm15sUBG1ZatnqkuTm/R3URlL5U0Amdd0WFFQwpBjOE4LETA1wl5VaJrAybPDBSyjgYkn7KFBY7Qt3w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777984053; c=relaxed/simple;
	bh=f/9JljIutlKKAAimSx6WVVl/HNNRtgj63jfn5X84Qv0=;
	h=To:Subject:From:Message-Id:Date; b=kbp8rL8ZlwVtmc0bJ6S8M3hihjX70AnG6rBG0oVAx8rgNgkFVKRJK2s4Q93OifFXcIlnemTzRZeSkvdUeKfYYC78mFCcoSC9tJNLZ3O2rpT6x0c/fy5NHoj0cmsLQQewtZ/Nx8QpzxkDiOKwpQtqgZJuXumSIuwCUebpiX6BZqY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AR7R58+B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AR7R58+B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5D8AC2BCB9
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 12:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777984053;
	bh=f/9JljIutlKKAAimSx6WVVl/HNNRtgj63jfn5X84Qv0=;
	h=To:Subject:From:Date:From;
	b=AR7R58+Bu3RK9x4VZtidNwOeR9HYA44lyAkXT2iwVVEFCA2N2viUG4kc3twfdr3bX
	 b/ViPW3y77wt8F4qZZ8rzreuBoVJZakvy/QIJ9LTmZl+LD6wAKwmf/0RRGvNOkIFcC
	 VtpfRhWFRL2gEEKGjk6vT2UZF+mU7TlDBxMp1ZDLKKAa0dSjfYE0nwqkBD1Hmdbuo/
	 +7t9BhYKaBBHAneqWSbJrFsSy5B32IwLI7v1rbKAUYvpLWHymMpn3XkuRefyAXWKk4
	 Si4phoigF9xRsEDzzO65AMh3U/QKerFTOCfGiEf9xw/RCSrrVXPWR04vik3l2cNY7N
	 fj+99E+20dZKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA05FCD3427
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 12:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177798405368.29962.2910365838904712235.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f4fe4294e241848bdf9c394723f8899521f332ee6ec693934477f4b6cbf9e28
Date: Tue, 05 May 2026 12:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777984053
