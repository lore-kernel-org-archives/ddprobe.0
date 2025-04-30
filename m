Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27E8D218AC8
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 08:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746002394; cv=none; b=jvFm56xen9qsUUjLN/o70r+XdSfUArBcYpSm7LWRL1oNsByP5oPlW5VSJxokncxNQmZa6bsdZg7D8YZvsAcr3YGVJ0It9sOoPalZVJ77Dlte7ZuoMeSnjqvSI+tyPfN2BsWHBqB4sP4mDsJTwKVJP/sNzhUoIlgpv3f3rG+VNEE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746002394; c=relaxed/simple;
	bh=RRaV+BZS75C8PIRLkpqheBFZxXH6RQmseS9RSTRS/hI=;
	h=To:Subject:From:Message-Id:Date; b=O5QPcNLq/dOmu/f0pncg32B3t2xmb4BTIG+U3nW+6jbeIh4m9FWPCf14xgMMSSs/ZvQAV8deBnMP/I41arqrkTM7VA5+h5EDLfVISRtQxfMGT6+QhbUgq0W8HqIXxq3jMS65SwieB4FnETNOvKBFuh+sF90CF43M1w6Z/fSLmns=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Eu0/QJP9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Eu0/QJP9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0429C4CEEA
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 08:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746002393;
	bh=RRaV+BZS75C8PIRLkpqheBFZxXH6RQmseS9RSTRS/hI=;
	h=To:Subject:From:Date:From;
	b=Eu0/QJP9th0r8enF7dgQuaBc3wtyJnpgt+/Cc1Nv/StkkD6TzxZCsTFHW88bwsj9w
	 Zyo0el/cfHKfvepVznmxSh3J9PPQEegdJ1WJrr+4QKoxjXVxroCcac+RJUROOXkwzG
	 BLKgjVLdgdCHuI46nT/Bpukf5CsmvBJ/xZ67KE4X5a8zOLwvgqvnxeBJyn7Y5T9mfB
	 aHzbVwxMd0O6neqTRnLhjhwBT6FTaLicDx03AygLQl+YDKphmIaFgacp/ShGoChl4s
	 Hdkp94NDaaQ66nqx5Sg+8bAOhl3Glx4jeC0MT4NNGt1wuziNTv1Er+C+4ld37KwHkg
	 /XVfBk4/azCQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E9DCC369D9
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 08:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174600239357.16279.15533544408044182076.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3dae388f0e2fe4e32ef04387b2d502456a40ebc71a887168c67e451e847c54aa
Date: Wed, 30 Apr 2025 08:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746002393
