Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E73B2FD891
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 17:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752773994; cv=none; b=NWWkWvtkJl9zdQDlR8cfFTA+ddr/zOj53Vf+TTuAaMC401tUJu11AZeIJes+8PByGijDeqO4cH7zgogVa4Gqt+t7k5NN8EgS7QJgahmBqE+dU8ARsIP4x83pp2WS7PrpOyF92lQf17tM2OyV0T9SMnToclnDJPY+5st3buX7ok8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752773994; c=relaxed/simple;
	bh=8NjZbFF2F0dPDcmu0Dud8LxCkFmUCsKyouuzu5cv5ig=;
	h=To:Subject:From:Message-Id:Date; b=jeMQwFGJwLWx6lxlxNMhdE4e+7DhCk2y6iXZbZKc1zdQn9SDNz4Ir1rw0kUuSsq1mRQ564jzUQ00s4B0+kxqAaSFIsuE4OtvBdvgfV34mMJ1eN+CnkD5Sldyv2ljb09fAhwtWUhNV1NaPboOcQ/jHZUEbzXfgpEwZmKNdk/bUrw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LWAcQpm0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LWAcQpm0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A165EC4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 17:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752773993;
	bh=8NjZbFF2F0dPDcmu0Dud8LxCkFmUCsKyouuzu5cv5ig=;
	h=To:Subject:From:Date:From;
	b=LWAcQpm0ENOiTLrX2EKv2Aay2jeCLmhbdSmJmqlr+04XfmJ35oy4gLn3dYgcvAWDI
	 hAZWFW3HEKPPKowfSD4hsLIbL8tjDKFz9VGXuxoKVolHgefKjfBAoLRwog16pnBiY6
	 GC5w60maG42ttmtdXmmxtoJ7cb4xsNdNqFqTH/qSasaLW40ITaCk45xRxSGCAOSQxo
	 mVLKuQNu75CpcyEE5lzUVIzYmm4+iNoZSCtIY20fPf0OxKK0Ny7iVY4YB6tPWllu/O
	 9ZAYvqIxx/KN6r6t6ZQ56+zUvnYaEjgM5RssgpvtBcUE8HNk+/MF2ZwehLDeT2G5Eh
	 +VxuqlPvNCHJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90B60C83F34
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 17:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175277399358.21399.7303789513321555144.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 94758f560cd4b489bba045363d2b7118721fcc0c550025860db14591199cc39e
Date: Thu, 17 Jul 2025 17:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752773993
