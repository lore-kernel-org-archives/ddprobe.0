Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4394F1E1C11
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 19:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771098294; cv=none; b=kFpKH0Wl1tdkJiZWq44fgQhdzP6T2ZiDaQLmtIKUhCkrZsUFFEbexJpRPmw0X456f2TqIi4anLE+kRK8nsQK1FKWbsw9qrSxYH/svBgCKU9hQkKQWA4V90UZuntBDXQBODVVnpqoDTeG0987J74Hm04lum4ulwCUnWSNnmXXCEo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771098294; c=relaxed/simple;
	bh=rk2X779Hb6ETRbBIusodl3hTkQpcpvjux3ukSR4JG6U=;
	h=To:Subject:From:Message-Id:Date; b=Eil/vcsIe1Dw+SqsV4dCHP5czk6esEXsNAnNO5jatDQZ43XpGgl/8XeWRMvuuTQbphFkT0+7VLqmuybGBo0vDQnCSoiBxZykZAkqN4zHjc5qDE3y+X7NKvHj19zmR1k+mKaCM2j0ObjhwSP5Ch7VlYZnHHEmYRaR4kju/wPMShQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Nelef6F0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Nelef6F0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7159C16AAE
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 19:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771098293;
	bh=rk2X779Hb6ETRbBIusodl3hTkQpcpvjux3ukSR4JG6U=;
	h=To:Subject:From:Date:From;
	b=Nelef6F0/GG1m5uuNq719ZeHBSCWdbYKmKV9j/ApgPGyFKrGh3J9xoiXqPsr/fLu8
	 ICTT3FObJlnxHLnEBpN2+rFpG8b5qXtD5oB48B+bzSRlTgiwk96yCNaflOIb1N+bRc
	 Rd7WkO+jFw1Txa+lto/y02+vHMt5uZKmJT39hoH6+Gmsk3/MZvIVoC4iLC86Xe93uR
	 d/69qcyPAhnlKNU3XCWqK9idjvzr0kxU3mRfyQ0GheJy1b/EWXYqkod1oq9Px5eM4U
	 bbJIg4oZ2tb8Sw29+UXIM+FRbOQOfrapxRr/M/rJC42XZT5DQzXSGepX9+i0W6IjXA
	 KwVuBA0uizfGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A16A6EF5852
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 19:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177109829359.26832.10738996086250569220.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf778b6b768b7cf7fb62bde6da0e1b4166eb369fcc20b7bb2fd6208f483e533b
Date: Sat, 14 Feb 2026 19:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771098293
