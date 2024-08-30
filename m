Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2169017B508
	for <ddprobe@lists.linux.dev>; Fri, 30 Aug 2024 10:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725012354; cv=none; b=KGSvw+GHSEGjRRsth625I95YdhWPv8ClEpNcdFc63b2cTyYLNwgRF93ZYv9neWEKmcJO00pZUBara1b++Qa8kx702DXghHvdTLRBBFSmI6WNEsdNOhlsWFeBb/YZo8vazSEgeramAlLhumOw3gOw5j8kJLDQAVRHQkG2yYYZaqI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725012354; c=relaxed/simple;
	bh=UQgfM8Dn51DspA/yqj5m/fupsO67dVtctMP/eardgms=;
	h=To:Subject:From:Message-Id:Date; b=fMkXvan1arn0fcE7QEGfL57xtSMl84SiHe/ao4qKH9WtyCWNLQzy99sKJ4uqMiV6ZN/EOnCOZ2PjFt84pDwToNXsj+ZaHjxKuyT9y8qvan8pe/ROMPDfJdja2P/uRysZT5SaUEbOjNLmEqzEQJI3S/cil6OMIqaAk02ABGu+CDI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qvaug+VR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qvaug+VR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A56AAC4CEC6
	for <ddprobe@lists.linux.dev>; Fri, 30 Aug 2024 10:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725012353;
	bh=UQgfM8Dn51DspA/yqj5m/fupsO67dVtctMP/eardgms=;
	h=To:Subject:From:Date:From;
	b=qvaug+VRR3JgMAqbsHQfCpKRbK4l3nHn5XbNk6W3iA3aKk73Ed+CD96X6QclVyXH6
	 oMCGU5curFPX2MWB1dBqCrGmUNxEKRquEPy3KtoxtCRQSqyc6PtpwN7XoxXYYTBgGM
	 xrEzoLRcNHaRPlKj3GoZsuFReTkvIfBSEkoHE+wsy3xnomuT3gyzRm1eEtQqswCpzw
	 104tBn35Lofd9oFisJJiDgVEmXpPQr+XVPEfFlFI8uOoRVtTpm+xQrntguW21fbcvq
	 3b7Veg2vajwHrcllXGj9/bLZ7HZtnyOZUvuYb/tN4O6FrVk5S5kFdSh4FnRDkhBw4o
	 bw6loBQiGfTSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 943BFCA0EC5
	for <ddprobe@lists.linux.dev>; Fri, 30 Aug 2024 10:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172501235359.1409.5364766085775422734.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ea9595ec8c2f90be7f90574098c71724ef10a3ca24f0f2cd4abe727fc966ff7
Date: Fri, 30 Aug 2024 10:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725012353
