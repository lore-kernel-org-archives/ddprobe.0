Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2FE72DECC5
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 07:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758095393; cv=none; b=LCzfEY9RdDi1MvGGvE93FONjomLuAcIn3lW8NOgc4yPXdYUUB3oJkHh0LNOD8gK9S1kMZNCYxxqbPy3mWL1vpWdwGgKWzM6jKIpd/Z5cYjRp4Uj+KnSil16DYNyt0h4Rd5Rld4UtjOw5v+NYbZ1hZlgNvg/wrIJODo57z9V1kYg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758095393; c=relaxed/simple;
	bh=msa5bRNPTsJHhtnKgo/ccaIN/L0CGSYMhqVgzVuV4kY=;
	h=To:Subject:From:Message-Id:Date; b=Kpksc3vwseCI7fUvUMkL67OpEhLYn0vs4Oy2pjUQVK57y8x/FAtAgVbwlAA0+fdryetA5sC4MVyHObBTi/D8mXbf6FrDJD30qMZ2gSuaBUizUjq6LW51oUzklkVtRYFNH0EeB7gIrd5JO1Ll73+sDO/XGQYLBlJdaF6PGpNt6zU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k7erFTx2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k7erFTx2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E084C4CEF5
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 07:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758095393;
	bh=msa5bRNPTsJHhtnKgo/ccaIN/L0CGSYMhqVgzVuV4kY=;
	h=To:Subject:From:Date:From;
	b=k7erFTx2dRDH+9toLzebtk04mXEgXQu2L/Zsye8/1RU/pAofO/8R9qSdq+BKl+DAZ
	 mYX+wGPkhlZU5YKpM8f7vke66UgQy9WnW9WWEPxkNkWfPcxoTrQrxxgXtBtBgwP3u1
	 lwupoApXO2TVx2e8fNLlwk6u4pcTTupY09GUyX+hvcUgaKFtgK4RA12zL8w2yKNtUr
	 0VsHy8+KdaD8YEAfXNAhxWe2lmRtvIU5WkruAMGo7Fb1eMmQjtoW0ZoWLdo5Qom+bT
	 9U13MLIDyYd5buWaSzf0So11Z42WbTUK/Ue8UB1DBddoRw78aWiJyqlYRuCygSgjQx
	 dyARxw58BieDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE3FCA0EE8
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 07:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175809539358.4353.6049679434430557439.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3db35213713b2f5d005699d3bd5a3060d9bdaeac793282df82be2e3e9fa2a233
Date: Wed, 17 Sep 2025 07:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758095393
