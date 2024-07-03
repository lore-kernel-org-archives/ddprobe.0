Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B456183097
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 17:05:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720026323; cv=none; b=Boay8d4zLmj9u6INPGKnJ6XNDJUp6ldd7zm3cuNvGhkdFhinEVlBE+xovZNEnsHSQVCfxOxdsTU0s2E/s1VlBvDWmvmR8Tglpjq1zC+vX6bZd/w8DH/hQ4oZdrW5iHNLob4KRy6lXu5PlVarPSIrG+OoBS52muuUn6DJt09JrhU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720026323; c=relaxed/simple;
	bh=DKWV+XNYns6WVHFTbcMOeMfa7Jutxdi9WKuEOcCn8ns=;
	h=To:Subject:From:Message-Id:Date; b=FE6PHPT4YXj+LaWRm/VNKSVougqDz0pKVa3owGgfYc5u1NppuTPfw1FiOmJjxqAt9iOqTns39NvQpPtuewWM+jQwQswA5AEksb1Ke8TEzwDmzxOHh5g7wSty0fdzY7QhNASBR0QmKVeaR919NBN0PG9dpZpovdiZS4RX8UTEkD0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OUOO5Eau; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OUOO5Eau"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD25DC3277B
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 17:05:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720026322;
	bh=DKWV+XNYns6WVHFTbcMOeMfa7Jutxdi9WKuEOcCn8ns=;
	h=To:Subject:From:Date:From;
	b=OUOO5EauGTH0wSkSH2slZ/omu1gxCF6USDuZRGVj7kYO4Tx12qAVzmiHJtLZWqCJX
	 IKQmv3/cmGWvgdecaf7lC6h6yJJUdlsOEw5yD7pG9xr3OXkDz7SGRB58hhvM3h+yXZ
	 ZK1HtiakRJyU7ebSef3vcUkbzq3PK//yOdxChxqyNPR6mw/e6/BvVSucrxJO4+yB6H
	 oWx7tEdPKUrdHf9ErfGWq8Fnrz0Du78aphPWvWTmyVoiOvT+ouYfHLvaHmNM29IWlQ
	 AnQiG/AsaxW8OIoGAOTRYB83C1538nTCuDy+GFSDI0n9EULaATE+vCRtVcFg0Q88oD
	 3rANQtDEhS9LA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCDA7C2BD09
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 17:05:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172002632276.14854.2041609183651462189.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d2326eef7944adcebc4c4730fa10be58a4caee978b87e365442786082756da06
Date: Wed, 03 Jul 2024 17:05:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720026322
