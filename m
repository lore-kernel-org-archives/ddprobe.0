Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32F8415B54C
	for <ddprobe@lists.linux.dev>; Sat,  8 Mar 2025 11:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741435134; cv=none; b=QVCttHY3wY3f8KQOKLjppxL6cHDiwtaWdyKaaPwhTxSUSP4wmmF/SPMlEebaBvN4N1pnbSqAhP/dpOlfHvkcdN6b3GWCoifrrDmnns/eFjRaYVA4ij32xgjZZn3Nwy87kD0Vyufb5gKZWZSru29//kBQgmTbSSMYlH/Y2pPN1m4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741435134; c=relaxed/simple;
	bh=Po61x71+Oz3sFSDDHl2Gxalj8GWETY0QqmoO5EFO+Hw=;
	h=To:Subject:From:Message-Id:Date; b=qID8R9+HZCfNJvPsJOJN/btYEsLShgSz2C7LdVVxwrD676RWiQ6ZrY/xoCGrdeLjIdVSax4/Qx90emSMPzzBow7WzE7slhBIjtIM2VVl3dxOhtVPhlJuDd7FnKsuth7+QOyx5V5FMK/8bfUpxQeV3ywOfHiebwVAE58OpWWln0o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hH4m8rwh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hH4m8rwh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA11BC4CEE0
	for <ddprobe@lists.linux.dev>; Sat,  8 Mar 2025 11:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741435133;
	bh=Po61x71+Oz3sFSDDHl2Gxalj8GWETY0QqmoO5EFO+Hw=;
	h=To:Subject:From:Date:From;
	b=hH4m8rwhGi/ejmxeqtVKvYWa4pArIBTkOno222jS4nrIpID8NMzKlMxArE/qOZnJA
	 IamcnVIsiojLSPR0FNIElxXjASSYLV+4sJ60YXbkBCbe4QKdX06p1zC6jCSgcpDATW
	 TEnckc+JQOCeCk+ondooDnbmXUYvUPdJixP1z4bSAToqVyuR3BjBGaSYJzyE9oej0V
	 ezyPVD3nlZ1HzYXFQpASDtlpfoWWqnKFGqWoKTFUhWoGf+9C4/u5uKGyEXETEc1uV5
	 cxjiLU/kJ/NJ06v0oxuKc3rAaa69ZiNJvirtUmBNmOgX1jJyXx9wz0I2BbRVUEXtmJ
	 ZNMi1g1afnozQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98DF8C282EC
	for <ddprobe@lists.linux.dev>; Sat,  8 Mar 2025 11:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174143513359.21352.16082472949931572228.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 39011ce89a2e677b59211e5f13e4b38646bba4c85d2d9634dbf59b68c7d6774f
Date: Sat, 08 Mar 2025 11:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741435133
