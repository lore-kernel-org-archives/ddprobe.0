Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A9FA3093DD
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 07:36:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781249794; cv=none; b=ZsQ+cDaNbyNbBqRLwqeQhmk/uzzTaUQ9EB6yRkY7MiEyTtXBhMZFPYQMV+gGZImoK9MdpZPRAYgroxww9TWaRWzeFghkL7FgrC/ItJrDqfNas+wxzhDxObOrg4haaR1uSO1Mji396fUMjTQ6ebDvyN3Z0B5eTfv0vx/5t+RkVEI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781249794; c=relaxed/simple;
	bh=zRSobbmsyrCF4C8qHIkSxOWKLDh0whuOW4TePXIamTk=;
	h=To:Subject:From:Message-Id:Date; b=JSnv1MoLy7W4a8e4mMFIUKBcuYeKkgdeWVGZpTDJ/NW78FEyuwGOVNdtlEC1W4d3+hC8MZ85G0PBePnsFu47DKtb2OVvAVhxgjGsQGRJCqDgpM0CEP5a72DgJxlfgv2Me6Ut2FS8R+zhGlmZoUeF+edXIt5LB+/WAsN5ixbS9zU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gtKNhRHZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gtKNhRHZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C96E2C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 07:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781249793;
	bh=zRSobbmsyrCF4C8qHIkSxOWKLDh0whuOW4TePXIamTk=;
	h=To:Subject:From:Date:From;
	b=gtKNhRHZDHWt3g2h+rC2j4tmVN13lB0ExLy2StpeevHtk1CRGgWbuuReT8+BXdoWz
	 zh/SSF7U5tmaSrQGdTAh4pjnBSKsIpxVDOGRKDEj1EPHsyRowV4FJCLyvhnXswi47E
	 dZSl9inkCPKCQclsDbsqaBWcti3UdXKILJZ7fpjawSmZD1br9f1rnnSCf32F9iNaXZ
	 tSRYvn62r8tGtnhPKPvL84gTPHuNi5xZtV4v+87IVSbHkydHSzeW2GDb4wKqxfz+IH
	 0On89etZDuLfshYSpmmaiJvQMqLNUYQKjsY8TJUnau3i1kGjf1ZreDddoSHddAKesE
	 rvrvHJSKQgg4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABE6CCD4F2C
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 07:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178124979369.9251.12284505068401232279.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 761880a071440331afd6f92a5d613cbcd0e0358232474fc3511886292dd606b4
Date: Fri, 12 Jun 2026 07:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781249793
