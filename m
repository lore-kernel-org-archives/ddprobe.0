Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 431312E338B
	for <ddprobe@lists.linux.dev>; Sun, 16 Mar 2025 01:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742089194; cv=none; b=SS9ozwXlqmSE6GK1J6RYxZoEW+5p+mhyxSj9lh6bHf3cFp7zfeYZcC1V0Yknp8rip8ayh0tuNFFWWUkUm/sDOlAJzQNtOGYgTjolHHQ/sfE7DPASbF3bt75lmBS/Mb2GMADXG+pR3KueWt4yIMSw03tfmFqVQv3J3ZMLKSdBr4I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742089194; c=relaxed/simple;
	bh=WlNCweRifr2ClBdz1U1oUZg0qvpCXwEYw6uR85EqHBA=;
	h=To:Subject:From:Message-Id:Date; b=Z8wvLR0Fv1e/1B0eOhd+KC2Czb6D2Y2v4zhm4IyrZ8CJ8c66efrQrM97bMkPPmbg85rHQpABwCNTipmwrEd1Ccgzc79Jn91PMozXfhmTKIGM2hIa0NhQwwQERpe33ay9vmKRfGS5eJXChGnN1dSxUpgWcn5gMrrVI1dfJD/dzPo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ku3tn8Nf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ku3tn8Nf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A031AC4CEE5
	for <ddprobe@lists.linux.dev>; Sun, 16 Mar 2025 01:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742089193;
	bh=WlNCweRifr2ClBdz1U1oUZg0qvpCXwEYw6uR85EqHBA=;
	h=To:Subject:From:Date:From;
	b=ku3tn8NflPdpASC+LoFkI1lf42BgmIBQJiZKb+UbhhL590zjBBT0HpvUr2Xez1GY0
	 TzFJXddsayzHmQwoq4tKD/u3Z9A2O89AbDGBh8ILYLoLiLTmemFhemkT3z7A7V0zA4
	 1/K+WCB8aR/9gmrjxB0w2a9uOfbFR3R6GbrDjB8XTcHsUjnwiI44FsyOZ5pBwbFKFS
	 eZZOE4x/O0Dd/T877DcVOmVQ5JaRSg75irMdku8LgAXj7bevqPWHAmpfEtgbrbozdN
	 7T1LUdg0/mTOWaBa/41iqWIscB+E3Jmmp31cdFcxij+1vm4EleyQJW2fxRUVVBFYVc
	 CEi4c3OogTMjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F66EC28B28
	for <ddprobe@lists.linux.dev>; Sun, 16 Mar 2025 01:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174208919357.26380.13965723314168233461.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f3668b4798d88fd6b18ad380668604ab75f0c504947d7e7915ffbbc27ba8544a
Date: Sun, 16 Mar 2025 01:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742089193
