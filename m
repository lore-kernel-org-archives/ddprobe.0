Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E80E344052
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 05:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777440454; cv=none; b=Zp7ud5AaCEhpDnxcTLFQnWb3AWimx77l7YBb/bSdioOoB3BkJ9arlhYO9Rspg3lY0D/JIMf6HwfDytlnaWBwP+JY6+g7HjW2ohmGPZEpC/msGR2H2Lf1UJYOW0vXLf6pMeTY67rUwwdWUdOflfSenHXq5pXpMbwrv4X2Cb80nns=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777440454; c=relaxed/simple;
	bh=8VTgvovM+xJWBBVfj1DbnwzEzoSTo3eeoc7WhG8qPQo=;
	h=To:Subject:From:Message-Id:Date; b=BiimUv99MIaLHJbuD/NvRyg/P4BqKRu5yTFjn/3vj00g/e4ozHHkD3r3+sQHv4bC/3uT4XLoZEA2s8ux0dUgw2gkHAPAuoRMXvT8LXWHDtLuB4t2oitGe/v3RjEFJMJuMOwowBydniEKPlxfQlelxfJulgWfv3lKD1WbiTicRKM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jXKgHcmB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jXKgHcmB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA6B7C19425
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 05:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777440453;
	bh=8VTgvovM+xJWBBVfj1DbnwzEzoSTo3eeoc7WhG8qPQo=;
	h=To:Subject:From:Date:From;
	b=jXKgHcmBzXwMWD03J+30G6qjPJkbHxWVZa9L30T4/7QiQXZFwqScdJEOec0PnEVCR
	 IuGgZNId4fTGMCT3hC0frbLGnaZGTvlHKrEAU+JhmBYVl1YSuk+K3iKrOmM9Xx5e6g
	 nHPDm1XHQQL/uvboEss7js9l4ODC2I3vf71UhFqQMHA5EkBBILLENMm3XvwAOSn+sG
	 Fk0MSbkTYK86gJoPw5H9DX2VJcU+SnN5Fm1/STbXkJXLmJ2uyy9PYGmkRSxK0eWbWC
	 8DtZzek28m58+JNqbgzztYeawK87VpGsWTietxeeBBkXMxDepFQeiCHnP2uHQ1XK4V
	 RG0dGjjqcjxIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8B8AFF8867
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 05:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177744045368.17421.6641832779229692198.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b089a28a1af4b6ff09653bcb49e8c5b2c4c8b43e79a6e1832b6cca6629acbee
Date: Wed, 29 Apr 2026 05:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777440453
