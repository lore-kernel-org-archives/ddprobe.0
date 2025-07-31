Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FE7023AB85
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 16:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753979394; cv=none; b=WtZtIrBxS3DpTTd9kpADRDhtosMc7BBWsHrcRAle1D3n5J4t5UKM+it4JLYGm7y52eKzGU83WBlKawd91MEfbYlpOB4OCksr7eNHsH0sxZ08gFl5rH7RnrcVWReT7gvEOn/cPS0VDB1YE5MGAM7q5/BAeOVxaQRuwXGIClDhoSc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753979394; c=relaxed/simple;
	bh=pvB10hTtOT0aGl8y1Nqgm9tTp6kZlUrFL7mY2lpw19Y=;
	h=To:Subject:From:Message-Id:Date; b=qOvRQ+zbMJen23ZB5Hn6ZjEBtb3evcug9XwT8QVVmHpvRAU1WDukGurEDevXApdvHpZzndd3WNFJiRTc85Qyvx+CvEWWQVqmpbx5RShacON/KdYN0q/78yjuGL/0KvNvwMITpniYrjPMS0/4EQlGRM4IV3FekDGnEOmxW2OZUWs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OSpuyOjN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OSpuyOjN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA265C4CEEF
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 16:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753979393;
	bh=pvB10hTtOT0aGl8y1Nqgm9tTp6kZlUrFL7mY2lpw19Y=;
	h=To:Subject:From:Date:From;
	b=OSpuyOjN7pegoAAWrUnRP6v2DKvyLq2+zBBr9W27WyM+aGvIO4S32I8hRG8YlBOIE
	 FwSwYtuOGYY0Ixg1DYAsyTXfUwY8wXUEBGIkkJzS1HnSjPLcD4pGf325Eo9A6ELTqG
	 dKKrQrrwZwBCS0fjdEt8H+4c2PTeRrHhLHtvBwrNViKvmXZlt0UvFd13KOQgs1C2rm
	 koLTaNcXKYliKx3U/1VMtzZgKZHw0SBb4HQixTJPkpWjihaihutDTMiuaITlIo5zwM
	 brwdUmyll0P61sAfOjvMHG6kN8XviAot5+ykdUt6VOGsg10ty65bipf/CjB2WTqdT8
	 OsB/JxCRAYVbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97F9CC87FCA
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 16:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175397939358.906.941971959182432226.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b106a37d4af28fb14c6fe0615122b751c202953f3dfbea8f1a8589a9e487a278
Date: Thu, 31 Jul 2025 16:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753979393
