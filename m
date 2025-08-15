Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 175CD1FBCAA
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 15:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755271794; cv=none; b=SJRqZ9Fyi9w6fveBeZ1hZS8GBsgHPUTwcQga/Ef7kJRHD0uo5Ep0Y64OMl8mek8dQDZr14h+XFhf+7y5x9Kooh39j49Mx8MZEZHnxOkDM2z30ULjBj17mfaAW7Tgt12w+VLiweogFLIBWPYST5qKqX1Ap2PSAlj6WS7oqcMo6z0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755271794; c=relaxed/simple;
	bh=Om9LqjE6K3C89+Q7MTD7VkfFKcQXPCb8+8fRDah0YSg=;
	h=To:Subject:From:Message-Id:Date; b=HyG+BXvMI4OgEqx1Y/osuLQXwgaLPQuNBiwzE52jbJDOkrSCdtHVJ3GVj7lR9AApCCyY/98pB+uYt5OmKmLVDn11J7ov08ZUnCbArDeZCEeSzwTzyKTqIVGB5+qoD94Omud2CniKn54sv//Qi4/1SW/lWTMdz5qbGkjeZc95BOU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bfRzlxeI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bfRzlxeI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FBE0C4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 15:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755271793;
	bh=Om9LqjE6K3C89+Q7MTD7VkfFKcQXPCb8+8fRDah0YSg=;
	h=To:Subject:From:Date:From;
	b=bfRzlxeI/ZApk+ek6+x2AhMtnRHiJvwRaWzU3jRrYviNCYrO9usc2nMoLhSs3MJfe
	 WNi8ZoaIP2U8Mi+HBo6bNRLUKkh+UtsRNy2vCBY6xFDkqTOMRlTbQHdQjVhh6wT9Do
	 /UPFFUn6v/qQEz/7/80/GPM+OLnfkXa5G/BOba0BSVAN7gPAp12xuPvN4OK82HkKD3
	 /qNfcBm/fYTIV7neAg5bOJJB7Sqo+I40keltOiY84apXmEL1L47XefK5oZJsWm/eM9
	 2PQjsuopccyUYKD26WWO6PdWnrq+WRDdzlvOy9GFbiNsblvRuQ5joZvDchFgKWLAIp
	 en6xvAvQDx4Ag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90BFBCA0EE4
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 15:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175527179358.30194.17983518405427567855.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36cc080271fa49b9f6da6d6bfdfcc1d48a3d25662f5534f0dffe38daac286acc
Date: Fri, 15 Aug 2025 15:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755271793
