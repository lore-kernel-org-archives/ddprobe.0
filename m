Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 176AA2D3738
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 15:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770822894; cv=none; b=k8nDwbxBgX9SRmFWiN6mxNVfT8hglkiaX9QNxasP6BffbLluQmGg0PDHgeYQ4fw3SC4oZ22EicS86qosoyh3+BAQJ5RLgeXegpGNb6P+Tv+hZ3gzW3TMYMrTil56nF2GE3vNN9qU40YFbwleiUzHkn6522USJkRKwy1jot36uao=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770822894; c=relaxed/simple;
	bh=dSYtL39d3z6BHJPE5Y9ZkdxQT9Mp+gTmCIuRP8c7A5o=;
	h=To:Subject:From:Message-Id:Date; b=PhGqGKKSaClwreYTmPZndvT2rfqCPatqV7Z//feIt0dDrHz71h+uBOv5vF6cWto8gk9iEn8C2spiZDtbBwA5uf2s/dZPJ1B3l2McZHzYHgjSerMuEb0rav6HirhhVIXQE+K3X/J272uLYvG1zBenJc4BgtD0Qt5ngNwEuWZLFYk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nBlqbudC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nBlqbudC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB6EEC19424
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 15:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770822893;
	bh=dSYtL39d3z6BHJPE5Y9ZkdxQT9Mp+gTmCIuRP8c7A5o=;
	h=To:Subject:From:Date:From;
	b=nBlqbudCwrOOKkoE4D/62zr66GoCH1whN1LV+rKETaAscmlo0LuMIsMguI8zO0Hh6
	 yLMso0nUswJHCoSpkYCQFIw3+k4sho0zIqduH5Zww0Vkhf2K+dd2VNbnymPagz2bOB
	 nuzeI/THxb3JyfC2ZykrPxI3rGc24GGte0wGEXCnLPDUNUJeJuvGzVlYO9CHmzLJVk
	 1xXOD8X8ANzJDYEWq28aNGD0Za4BsXZ867ZUAcJD+jp/XfOqV0QwxA6NpovRZBkabh
	 0jHPHofasvORP5VioaByvTQ37DGQT4BSQ9liisOSDZv9/XSyM9JiTUmD2LHyfh9AUj
	 J12jEcBOBxiFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A61F4E9E311
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 15:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177082289366.29388.7618913842931047145.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 225a55747b14e0853ce927623618e8ea9c39b48ad3674a8b055706a325e567b8
Date: Wed, 11 Feb 2026 15:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770822893
