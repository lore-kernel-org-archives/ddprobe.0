Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28C0B14D2B3
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 07:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724742954; cv=none; b=K+q+f0QFgk/GGcJhknGPqLe0Xti7OVf6DoWODB9zRa0JIsfFRhY4bYClcz7y8GIawxztrQQNlB20dIvd90L1YyjYhGciHLg0pgRxolv9D+0nRA7CVD3kHBgNdKj7oqKJI45LHDxYcu9ilD8OU2EoJLYNbMuPnVrFjTRatQTZrw8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724742954; c=relaxed/simple;
	bh=il2nGIJvRtS13TpGLDA635oT2K8j1su9xPT+pUkKDeY=;
	h=To:Subject:From:Message-Id:Date; b=vDWWupqNmTCdsu5AaSBVw4KgFmMg7IDvEBxapT07OW05MOv3xN9JKT6u42je2ZJuQ3YoN0CTPJ9DwicDbtkH5W2AQ+EdEYFkqm0DM9/GaKLu92gNp6sE8WiVGJuyIiBmyxCuKyXEhdJHu9AP6uafIfdmdbR2ikAByIc6+/WnVtg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lpLaJDx6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lpLaJDx6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD5FBC8B7A0
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 07:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724742953;
	bh=il2nGIJvRtS13TpGLDA635oT2K8j1su9xPT+pUkKDeY=;
	h=To:Subject:From:Date:From;
	b=lpLaJDx6HW5glrBMJvJuCE5mGN72IzOwNU4L+BIdZ7cEX6wZ6FSrLIYxkzu6aN53E
	 +Z5pNJ4amv01ofDhaZtmm7bN7zkOVuDecIUnrZNMIpLfCVKuDrOA8A4jtsmeBG+UKM
	 51t+1NYNd2/YbswkYozoLNLchI/SYHrdH4feVczRmTwAWEu+w2292y8M1T5yoUh/or
	 2zvm6QrXGzHIlAT08mB9pH/lOdfMqRJfY2bqftFwgslaQW3DHdjyGnEJXoDYX01a5r
	 lc8zRIQ3jSMWUccvxl1Nb0vX4fwV7fBdjN5iTepGufMnHTBnUpGY89wmV5Sos78o2q
	 2Bq9pW/bx7AHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98C60C52D6F
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 07:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172474295361.27202.11756017196664091655.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4639d302ba67ad8fa8a0cbfcf2ffca1d00a550cf59e25543cf4a8fbd633f8fb6
Date: Tue, 27 Aug 2024 07:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724742953
