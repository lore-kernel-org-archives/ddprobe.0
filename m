Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 566571DFD2
	for <ddprobe@lists.linux.dev>; Fri, 17 May 2024 21:52:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715982743; cv=none; b=kgC5/OA5Z1/yxuSvBM+yApjBy6JbyCV7i5YqkxHrICBRnyWOkTqQ8sYp5ZyA2Sed3oyZt+nUsywMUMs5s3pJ2AHe9CQkpEPZ+W4K71pr9oCtD9jKFjhk/VS29lw2tfpKMr7qkJ3GP9JxvLn14OxDxEIiMkUDO0f+zVCBh2VJ6HM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715982743; c=relaxed/simple;
	bh=2DVdhKVUKHlTbPKk8i8Bw7fR4K8p/dhW9O3hdD2AUhU=;
	h=To:Subject:From:Message-Id:Date; b=jnAHn3l1hjeu5uB5xJDgZKagmTSr6i+dmndbhOkUiOWsXr23BTM58FV2dgpvWp6GespPlQsiH2UGpGnhGgUAp5p1Lju4z/9PVr+R4b8GkpwLHYSjpCs8MQqQpdFA9hFk1+2qYh4aD4/7uJouYFtzwPuGdgFxPt3Ban69Th0iG94=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KpPEr7Zs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KpPEr7Zs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD0F3C2BD10
	for <ddprobe@lists.linux.dev>; Fri, 17 May 2024 21:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715982742;
	bh=2DVdhKVUKHlTbPKk8i8Bw7fR4K8p/dhW9O3hdD2AUhU=;
	h=To:Subject:From:Date:From;
	b=KpPEr7ZsmUIiB6mplfAYfv0uAcgMxxoaPSGXeSBE6TBblS0viNOCr4G0gSSfHNeDk
	 ZQag+COx6IE2PPXOnGltmqOnKX/86Xan+aUq6uJ+u8dhx34BxkR2uwYdQFqKqjSKbo
	 M0HatEpjoAzGP3YuhKzkfw8fzLYYeo460uA7pVOqD6mX8Chj07wmHBhx2b0ReSt627
	 N89fZD3QQH8S7hFpMv0HKUwzsC4K7xwK9toXbHMnkuLeGYiKtZ1MssLi+KLID5KDhp
	 Li9zQy0T6WTtUKAg8KNEDRXJhTm23gpMbsSmXlZ0oxGVFyRyvXK8xNC8qxMPmJQQo7
	 v5uqRGvJJUQDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB724C04FFE
	for <ddprobe@lists.linux.dev>; Fri, 17 May 2024 21:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171598274275.7713.9329605396815229615.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50716249ed29cdc32cec9ac0b2d3da0d4ec465449a2953eef507632d6266f182
Date: Fri, 17 May 2024 21:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715982742
