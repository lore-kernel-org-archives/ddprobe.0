Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19DB12EBB81
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 18:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750184395; cv=none; b=pbW2JezyBq6z8rM2Qlgzpr0dXPZgqqR59gIfzY6HnUDA0o8To0TDjc3RtnxRPY3dnMNUTuw4rXfStCyJIBpa/w9ksdTtDe9+wyYwOgQrZr4Cr8A+7UxI6LJ6WBwmBnQAnpibcvEQ70LO6wIMOfnGbKZnW/iq+MJ93i8AzGxzc3M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750184395; c=relaxed/simple;
	bh=BDxwDyv3lwRMKUAYIltcaceOSmxYFBEHX1pWi54f5nc=;
	h=To:Subject:From:Message-Id:Date; b=paT8HOgNcHQmiMN4gTpBnQXdrdo40bISzqgPbVHLARSIibpv0VG0kcJXpVgf8ZmTbQvhup4CvhD49cZqNnXYoATURyStKeVgWpQ9hZsB11ZiAxioVAZmynGf0+Zl4mjeaO4HhRqmSyAQgRXxez4BwuFoIZ2bALeriKy2zZqzUGI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FsvV7X2K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FsvV7X2K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9005C4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 18:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750184393;
	bh=BDxwDyv3lwRMKUAYIltcaceOSmxYFBEHX1pWi54f5nc=;
	h=To:Subject:From:Date:From;
	b=FsvV7X2KuSA261ZRsSUOT1dEmimHkNztd58zJ7HjV1b6GHIMAHWPsHdzgiIoxC3AJ
	 LwQdgbd1kWHpCIvGMZj0f30zkCSMqSvwrQpjnTMPTKBKnESv/Gf/kAaMuL2P3oRbGT
	 lEjmu+3P3cshVDXwaNYUFr+ktmCKlsVb2/584zuvv1uo4ArnfXZYYB7y7TJ2J8S0eP
	 +GlXZU8xV5ZTQJX8JWnmw4BXehFY2MyMoAAugdMzZBbKvnQCvSQmvlxCoqLACtS0Sn
	 GQ9aqHNfNNxTeIPbLvLcBanMzp9sAu/2ufJPNkW+o+t1pe1ckD3PHwVAaKpq1sjh8Y
	 8LitKOLsIZOIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 927A5C71136
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 18:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175018439358.27567.5125150044802563591.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 53aa4b3c59531cd9179fd7577a8ee675e5111273b78c0db658431d4fdc3d7896
Date: Tue, 17 Jun 2025 18:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750184393
