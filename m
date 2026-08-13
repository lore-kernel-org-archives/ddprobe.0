Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54DA333E34E
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 04:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786596634; cv=none; b=GpcsEZPSBBlKLiD+q+xWvPyssE4IBJVUx6+Nze4b7HO3zDHCDx4ukcjRE5ESr5ILJmINSBodRoUugG4uV5kRRqboHhi3AbHiMo3bZdN/QbrceoSI/mPrvtBbdbM4gJ4jQknP29PSho5afafKnzA0Wvx5+aWidueWkA/hZcXR3FU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786596634; c=relaxed/simple;
	bh=6XroNv+4c1qT8lIHTnp+HjxmDu43cp8w3eIYSraVQG0=;
	h=To:Subject:From:Message-Id:Date; b=hTcCEsw2O0jODeYqlMA1hKn7EFKLWeC5whUEpSDytipQWBXWqj89Zh3S8knuccqfhIWkgK9WNd+SMcFUWycLSkSjuVQJfoSfgOvflJ2bmwFssiUIryO8YkvgEvmmH6TNd8tbjaYBczgbhUqhC1kQqU0Zr2MNZAC/o5mkkIOFTd8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oJxysGys; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oJxysGys"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D16F3C19425
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 04:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786596633;
	bh=6XroNv+4c1qT8lIHTnp+HjxmDu43cp8w3eIYSraVQG0=;
	h=To:Subject:From:Date:From;
	b=oJxysGysrZqNmOO9zQCaVOmncLNaqSE49MSvkqGfruv4G5FuteCJ+x2M/Ei2YagdA
	 JUprhsyc1Tiy/nxWbh24lpB4RdSHRrAtLqL2nZQB9+eXWbm9nFDccS5kaEML4dSWzk
	 dAtTnLLtwGFkI2c0e6j/77KwUKph+s+7iQIAlN/OUmFHaL2phZaWycQd4QSrelfu1N
	 aIAJKe8b4QF3sMCoZ0C9ZxB8HoTvFGS4cEf30UGffWWa68cDk/Ee1f4+G9GzmXiqC2
	 3B0syMFdKrrhLdde8lnGnQEjmU20zjgKLFxPFUvPJ8qga25IIVt4TKBgL/0Y1LGyR9
	 qBFMu3F2zoKmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB6FEC5AC67
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 04:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178659663368.7907.13569696345052494196.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 739ad396a3b6dd0ff711527152ed5dd4e9e995e33f70a9ef331039f4da08ebc4
Date: Thu, 13 Aug 2026 04:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786596633
