Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18A75375AB5
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 07:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777532854; cv=none; b=GbtmVXiYAQJJtQFijL/AecO1pdf9XqZ2SrjnCdGWttRuDHhx3riTTxdXzfkO3smZ2O9+niwjnefREeKQujniMcfjLuwxpoAen9JzQ1hmtQgcVm5sABOAPAP2pRP3LJyYQ/9RalgT9vmEdachLERLKjhsSM611Ni1tcwujnIlUKo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777532854; c=relaxed/simple;
	bh=Y2721ClDLMJYiYWOjouTQnBwhnK0OAC48rlEwG1sSq4=;
	h=To:Subject:From:Message-Id:Date; b=tAcrvVW6JCb87uEzKoRXp9w3bL2y2p/xVtpk4jtafzR7kVLU3epNfkkLOsBLgGU3EsWWgod5K+iQwxJRPqXdXkPbGKuBC/dMYtegL7jz6yBAz59ypUKhsFJaI38cpKeeSzj5swqK2uUfJfIlDPjpQvFhh2UaDnpcjnnhQgPDY50=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iUkdBMvx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iUkdBMvx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6F16C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 07:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777532853;
	bh=Y2721ClDLMJYiYWOjouTQnBwhnK0OAC48rlEwG1sSq4=;
	h=To:Subject:From:Date:From;
	b=iUkdBMvxNjxi4oVrYSgd6mKm2SVPimW3EbFtZcJFkBwMKE5cWB9bUOZ9bh4ohxmjk
	 kuz3H/ZV5DldsSdosKM3aaQSWocdF+u4rHQ+gHhsoI8c6bGwSttK2mZqY8U8d8zAWD
	 wtKCd5kvmbRTuZDu0OFUa3lfewEo6EWh3m4c0nkdHZDn1Nw8u5EMV93kDFgDXZAgOC
	 rgSNYGVlOJY8luesJmsuvL6GqG7dRDPqS271MNjZGpoLuzeMp/dgEUYwMPdprdO5M9
	 25c4sLlOGvtSQ5OvHv2HTijccXZRxfRavkg/1JKWkhnctILczU+kYBBkHVtZX01MUt
	 zjFUlWGvCFG0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9775CD13D3
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 07:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177753285368.19626.1242489381380027661.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 22160e10d4397cdf5ac65b4d26b5300f468fcb07b9bc7fb47767436ac8137910
Date: Thu, 30 Apr 2026 07:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777532853
