Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B3B6286435
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 10:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757931594; cv=none; b=IxQadjrw8XBLmf1WvpSVWRPpGM2PKX2AldcqDrenVj8u5UUybcKWxMCbm+2Lnt8L7zC2L2JtegeeTbC4kPvUO85aaWKcoPP/54iosg5JTNClkH9NiVr84DHXDE6pfzsq4EQVrfZkrqHJDbCC4hrQ0LbApahKmLXu8Mup8BUqKMs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757931594; c=relaxed/simple;
	bh=z7tUPuF6wuUqISmLSWRkqUyinqHod71kZXAq1PFy0mE=;
	h=To:Subject:From:Message-Id:Date; b=pwpabtc1Hf3JbtO4XZqehKqDNDI4fna8gZOszq2hmtZgLjImzRpNg5WvpbfjQhMVpBsqLh+z85dUJPaQB5oqvhJnrarwMqIhIC4zwVPAmHEYef+59d/msOZMSzByQ3phE/xkV5ckjosbnPWwf/PlQfAO2PkwCTDgJklOt9FA9Ug=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HcaDTl2m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HcaDTl2m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A58DAC4CEF9
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 10:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757931593;
	bh=z7tUPuF6wuUqISmLSWRkqUyinqHod71kZXAq1PFy0mE=;
	h=To:Subject:From:Date:From;
	b=HcaDTl2m425veMqKd5ByvB2AzMPLwDNfkQpcfQPZ6d4MmLqlS1j7mC233nd6Iyl4/
	 XBTGKIhMBs8ZJLoXclmooUq+5FuPB0swg6LZlxfrVAcAqQRpImThFEM3XNL022Fu7Q
	 yDxE2FI3va42fvfpkrnd2AZqzWnepbD3GQQQgRbV2nOOiDtu9CJgqarWf4YjMG8dCH
	 ftFPLlp0cKQzCTpecl0OlW7ASgqLDlRnT3Pe6ViTY1epkIE9QAgk6TnUdw+aouWs3p
	 AVHrzQxvQ3LeO8mFOoobMOrAEnrhJCuaje2GgCU6DzDqRxCvWTOXsV6adudh0qQOM2
	 mS0zDb4hltdGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90716CAC59A
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 10:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175793159358.8749.4168493696943064914.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ca32962d1f0b242df73950c79b9da9db8e190aedbeb611a9b17a6e50dedb114
Date: Mon, 15 Sep 2025 10:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757931593
