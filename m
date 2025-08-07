Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 346B8EAF9
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 15:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754579996; cv=none; b=RWZPnIGCet/o0+cliVKDg2qqUu+ijrlFPv8yNfFEic2DOS+upSdliHb6L3dtlCDEbhRyz9Hrdh9IbYnQGGDLvXwIYJOU8rJkuAW4her/pXEZPfznilwNPCW+YRtew0ORCNFrFN0iNnsgTNplMC6rS3vovBFeZjx+bmdpxZ9nBAw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754579996; c=relaxed/simple;
	bh=q2pzKAFVtFpfm9wn9pa/7dVXMsXunK8mRwBiXcANb9c=;
	h=To:Subject:From:Message-Id:Date; b=BpsMuPP3PchESOgPIzTneH74WUEnp9PfshsisfcL1R8ZWpLl7sJzxLEKIFYnbCqI8xCMgBOalVxeAiMz0qpRC9B6YQGFKoaRwyyq/heAnQ12EdoDhEG4+A/2Vvhj0SQJvdJJcQfiogLUi+sJ++ScpvbiwYcpHSzStHNwqp4DYnk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GkgPaCxj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GkgPaCxj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DBA5C4CEEB
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 15:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754579993;
	bh=q2pzKAFVtFpfm9wn9pa/7dVXMsXunK8mRwBiXcANb9c=;
	h=To:Subject:From:Date:From;
	b=GkgPaCxjnR7zVHqZDoSTKXZE1BMrReFFwhmnofApKi2eKKrWdcTkKpRH+N0X8s+zI
	 MixJL4Z6m0NDcVmLFRg3g6b6fUCF/fYRI4RTyrH5XMO6iLAVfxE4h4ecrIuBm9kOY7
	 iycE/oQy9yvrAYLyA48lk9TMOVoDFhhjPD/J/glnwzk9XDVyycj5CNz9f6n+dV2pnu
	 EomtCIwc7WoLRT1sBGIXm9JFdg8ofCLVraXzCLPuyNT40SM5eGr7wKQACcpo2HBLjB
	 9tXjFm7QgTu3U75S5uauUMVoTXLYGp+XH8pa+rh93hqAXqyMgpWRnhxOblLsxskCxx
	 23sn7uT2dsTRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F8D4C87FCA
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 15:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175457999358.19266.13219622860274066040.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f19e8d698eed980479b5c978580c38d0c6390007eb2473a1e91c00ba515bf852
Date: Thu, 07 Aug 2025 15:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754579993
