Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 244292264A3
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 23:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754781594; cv=none; b=hE0S0j5xajrVxrCDnC0Cfw9Wc4wHGEJ08CWSEWOgPW50RHhnF76wem4CVqsywESUS/ti3DM/q53rM1UYdL8C0Pyga/4DkJmZGYLxMTlol/yUHHAHS8c17dTHKuX5O34i76PMK2uh85vGcqvLyrNEva862NWcT512QG+TKroaOkE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754781594; c=relaxed/simple;
	bh=CWkoz1uNiGW77Fp75KcHBZpVDv/iFlK86GLOV/iFRhY=;
	h=To:Subject:From:Message-Id:Date; b=IlRHMiuKB0bMn9tf6Tmx3Rio4hzBcEPOvjo3ltrZ4BOU8D/bZNje36UA53lWaacGjj3N88bVOXN9WUt5dxzuLK0tyJ//8j24ocC4c+9qlihbRc10NvGLsO5F9kPOMydO9VhZT3axXcTViru6/SkwJyzlBOahGB5UgwJccWM+s1k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j3mSMpkT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j3mSMpkT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A121EC4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 23:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754781593;
	bh=CWkoz1uNiGW77Fp75KcHBZpVDv/iFlK86GLOV/iFRhY=;
	h=To:Subject:From:Date:From;
	b=j3mSMpkTXhT3v2TqP1KOLOFqLQNMZFhqGZsnnDquqDrKnlRT8aSLu1bqlRAk5P1BS
	 wkrDAMAOlCY6Gkv9/pmiafc0nnMz3o90Iep8k1N3A+8gA9tsvCaJswHXLljcPZMi6j
	 4EPDTz2aRYNeAVy1m1PchU++qgvy9lB5EEp49fiNXKIIS6RO0KAn3NTxE57rkoLaQT
	 meXh03LGtoktXC1d0IoUjVzINf1e2aO80K8EulpUkwuKiqqJSKCcEPi2pmbPOMa6/k
	 u8cH/PMS1a4RpLMk88/2K/p2Sn9NPE92+I3sKJbcxf7aAp44zd6x+/G5MG7Hi8gBjJ
	 pzDGBs0x9rl4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93518C87FCB
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 23:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175478159357.15446.18419933627258039345.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6bcf0f69022723c2bc49b29438f86def855b068bd1a751ba966d871d504e439b
Date: Sat, 09 Aug 2025 23:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754781593
