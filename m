Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2638629D0E
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 16:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746032394; cv=none; b=WLQ3TJ82pyc/CdWNyQil2gMQVXXDyRAM0V+wVEPA9gcaPMYlbjHPC8owdhP5fE5Vq96hey5mjzZ5x1ZChjnqgemtiYuKWlvp/kmrz+dXZf5f2AIiHnVzbsk2ZnrAXd0e09CSqJlBH7hNITyrII3UbOAs0MgnaUF+a4kOwdATTZo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746032394; c=relaxed/simple;
	bh=19QJEdtb6pWdolC4ty+/H4Yq1+jyCimSDftRTDt15Do=;
	h=To:Subject:From:Message-Id:Date; b=AteXDT4Q6QSMzrJndTPYSpOZ67xkcUUQi2dAGP76joka5uYy9J8Zqd+gejAL/DMxn3eBwDJX/9cfD/vjZQHAJqUwOMBkS36YM9OqfaHn2pEtsBOBjFddoclqTLvX6gWrN2odLUmr0ptwEBTNLRlcZNkn2opOMalCGwVFwIgUirk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gj5WojeL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gj5WojeL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EDC5C4CEEC
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 16:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746032393;
	bh=19QJEdtb6pWdolC4ty+/H4Yq1+jyCimSDftRTDt15Do=;
	h=To:Subject:From:Date:From;
	b=gj5WojeLzqTEDpMKdHDOxbBm1Fb2wOVHB1iTg/dlIOEbp0xkczNcBJ2kCCYi/sMvw
	 b+eAJjRepZxTXfk/1o4BFCO9+1GbU93mS5evATMPRqHXb5SwYHjWelnP3bvy1mzs9u
	 3D27ivXSzcH2Zrh0f/U6s/jF1Umw+vQCCN+GlFzBJTe1339/lcmvxlQ98Ueels1oFR
	 TzXisakNHE4b9vfBgj6flql9qh/woJzMvbrIs90PJf+KFrOx4DM/oOhHOzRyKtNw2P
	 7qkSgqFSh34xpkcGfMdW1FVPRIJqiVmJAN/EZpSd3vgaUvrUUTFxZJ2++zZEj8PUe6
	 i60a0G/iAYW4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF75C3ABAC
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 16:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174603239357.23892.17290186061537242633.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84eaa36021412701b010df0774f9a16343d1d4e88de7edc47b9d7a292be2bd17
Date: Wed, 30 Apr 2025 16:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746032393
