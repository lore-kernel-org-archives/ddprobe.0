Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6649C1591FD
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 04:27:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717734443; cv=none; b=UQeAX0ssrbKly+V+kYs+t50Iz1NlLn2osF4YnP/NMNym9qqJKy7JBzEoWejmXtmE6Kep0dUtVp1v2Rif2/lriWuwuc/Kl8CTDkc7+gILKPtGBqxfK4aNWAW+lefDpmMCZhhykwtfgRhv8xtNa4ghvG0H/JCaOfwrKCdbpXnDUvU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717734443; c=relaxed/simple;
	bh=ZL1LqnrqoMCR4KexHiT0KtBOdGMiSBjCn7uBMhWtIcA=;
	h=To:Subject:From:Message-Id:Date; b=WpjqSOfuboP92BfPNsVeneP64Y76JF3dP7FUFjbrMny5/LK+KUj9uQCLBEbENtEYVXLTTjpafRIqzSAFSLxt/TZkU0PML3C56Mf6R8n879QBiVz1CLU/s36wDKRGnsoM2J4tEqR66JWRqfZeRObQLUchTZXK2fYkZE+RzM167YU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BpZyr1pn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BpZyr1pn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE8CDC32782
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 04:27:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717734442;
	bh=ZL1LqnrqoMCR4KexHiT0KtBOdGMiSBjCn7uBMhWtIcA=;
	h=To:Subject:From:Date:From;
	b=BpZyr1pnvCTOEISdl9WHItkFnZPnX8nSFBIklyE5oN3p5sMnlwlhjTQ7bBp8/IW9f
	 UvpAT9HIPHvNa0pz0cYCPTAqW3H1nin0jBTPRHkDPqeEgdYa88KPIGtwFwDEveZh9W
	 elB1K0Ux/9WmpwvSoFJnlgrwCDvuorGEKhXnYMCNs7l+vsqTkOoh8xd5KIY8+COaKK
	 xkXILk1Lq6i5wb2hCLx7/R/9iHGllieUdKizPWogTdZc+5Ro7Jx4bR55odAqRqs3tA
	 /HbeD0UvAGEZjJF4ESlH2/0HLDn/rDdBHXJG2pdTAHtEZCFSu9lzB4V2UBwTUWH8qO
	 /Ah0VmWCZGuUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8847C27C65
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 04:27:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171773444280.7819.10274853134679236271.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c08377e381533a81693e6ecf8478959754b0bbc478dc39b6891353c3389acb1
Date: Fri, 07 Jun 2024 04:27:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717734442
