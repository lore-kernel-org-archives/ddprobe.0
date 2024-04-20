Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 727AB205E36
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 22:10:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713651023; cv=none; b=piiK+1Dw6KjpOQrngnBXb2daHZmtc6mU9a3Mq7YrRMbf8PRrwCt6xMGm+HrjI746rVKeOUEzn9B6aQsHYWatqfDHoJdm26Fvylz+DqKrLM5Kz21bCcLgUnzXFfOJ4JaR2comcpROrP0gigbCKSxo529uRLp9Ff/ndvJKNtEEjtE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713651023; c=relaxed/simple;
	bh=l1vKuSvlJBikBxtTIDQ7HEOfRXJma1X8U4TW7Oq+tt4=;
	h=To:Subject:From:Message-Id:Date; b=gXf6xbSfTlkLm3DFZr+WJw88A7WvhcJ9MBDK7ywTtp+TCW44pGAN4J0DW9XfLf8ZIW5qT92di48wr/QTu5k1X14+cuRinstk6RCUVAwJFRxHF8dgA7KQIvT2nvtahizvQB3HTGIp2DyDvpg1vJjZfV6TK/Ud6CEx5BBlYh7mR6g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bvTLlhnC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bvTLlhnC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2256C072AA
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 22:10:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713651022;
	bh=l1vKuSvlJBikBxtTIDQ7HEOfRXJma1X8U4TW7Oq+tt4=;
	h=To:Subject:From:Date:From;
	b=bvTLlhnCLj+Hyhjsy2uycFguTU+4anqmzpOwJvO6o8sco3BkWF5AwyuErYEyf3Px0
	 NFe5x09wgS1c1tLZjmA7sYZvMHyn76WsDmdY+QQ6We8zclv9876WEQ3m1xBsi3agqk
	 xFSFvF6mKDQI0iewP4UFhzvpZhC3RXlXGTcCHsqcpl04rN0q0mDNp01jwW62DdUy2d
	 gx0tKfulTx5jkQryMi/2PdblZXdzhseWz/8Tf8Gv9AIreid9vxu9ojfmuLtXMM81lC
	 g7xgfKOalRW/Pch2aJ6BpSNpOqzfWFNzKI62uD2/4/gk1kD43pyeQ6E/nUZgGilzBu
	 f8ZiC1B0HjVlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD605C4345F
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 22:10:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171365102280.21081.16036898468024881144.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb5e4147aa797d16e51d4a0b78aeae860549f56ffa33a82e466d2f6095259a32
Date: Sat, 20 Apr 2024 22:10:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713651022
