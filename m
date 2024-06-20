Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5445A3838A
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 23:20:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718925623; cv=none; b=agpWwLjMuG6/l+DxU9pGmUgG8frbzcyUryyzSlAhlAVpdtOx3NWi2K/WucXJkgeNPI73i8bFElXg87BlADPJUVFH5wZyIANKKdq9EaVLOTRzUeu1qQDU1dOhFxn7itSJ9h9GF4HuuXvUFFItYL1ag2iVSqD0wPH0bocWWPc3GhQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718925623; c=relaxed/simple;
	bh=Qp+uHoXp+GYrgRP8YQvpdZFjdJnr9piBP+uqjZO5IrM=;
	h=To:Subject:From:Message-Id:Date; b=rpmoBB4baZVPxk7zbV5gswa30sUW62uIdSr0+OoaIwIP8kN3UY7EB3qXfsX7oV8pTRsuo+EsuH2pV80tsYJbU6LtJKDn08YW8g7lliQfM0uvIkyXU9iaF7Z4KPzMILLSSnmV+HHjoUx1uT4GOSD7+EUkh1QD/lCMO1moiptRFRQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KNAqqQqt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KNAqqQqt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDD6FC2BD10
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 23:20:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718925622;
	bh=Qp+uHoXp+GYrgRP8YQvpdZFjdJnr9piBP+uqjZO5IrM=;
	h=To:Subject:From:Date:From;
	b=KNAqqQqt0TUknIYR1sL03sO+OJT1m+/gE6eOylsH+SKz+XFa87F+CpsuNNYip5DhP
	 h2dIWdylJJQ2QqdQ6UKC56wNYNCHnszSiVAlXre5C1kHxjY3m5UrxHD4SxxemMKE4N
	 tM/XiH0cBOHBba+Ct/zWy85RohP7NnalvVwhGaw6DALxSndSItO7YWyCbv2o+dm7Qh
	 cuz0GTFZCaFDCzGplynhDVXgdRaaBZXcCZUN39+kO/sUpF89f/ZvzZHZrtlWGl9yTu
	 w6t2UY0uizFPLPsgbx2gMmPW03V/G6lYKAuRLgZHEpIKUHoHPxwvyQpXT0T+cn2hi+
	 HPL3dDekG/wdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C95AEC2BA18
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 23:20:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171892562281.17675.12009986941265244043.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 21d54be75e92a2795bb7c90569476a9062f7f8eac990ec0e3458ae3a08ccc1f7
Date: Thu, 20 Jun 2024 23:20:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718925622
