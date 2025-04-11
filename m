Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 381BC1E47C5
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 04:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744346394; cv=none; b=qze1C8q0R+4FlWUn9RaN3OCcFuychJ8ulxu2z7B37hzVcoW0Jg792mx79IjmUsjviELeMTOK3PFEZ5lP1HmpAeexGQMvDz89sj22VMtC2M1cFObtnku0UwRITadwxDqMDHVEDythLo0NuWWVLunLPgyup/srlXoNAdKlRz6E9r0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744346394; c=relaxed/simple;
	bh=lFsRFdvxHBr/2aEFocQXmWoYaBWFEG0T8a57lk9pU88=;
	h=To:Subject:From:Message-Id:Date; b=dzNZ1tW4Iu8j8a3YfviiYt8jQyeztFDfwLfeMkBaLNXI/VYdmNhdMTK07pjLHlkaisFcPcKLccSw/k23S1Xe4TGdtOvlN0rEVk9PLkfP/PujPhA8YPLVcpbV7RAypHA39Bns3Y+BmuMFXw+N1Sg4EG/eN/jxRY+3qrzbjetya+U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pOtKRCCF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pOtKRCCF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA63CC4CEE2
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 04:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744346393;
	bh=lFsRFdvxHBr/2aEFocQXmWoYaBWFEG0T8a57lk9pU88=;
	h=To:Subject:From:Date:From;
	b=pOtKRCCFAUcIctPNUqAzblpd8NBOrWouPiPA5n4tCjXAdgu/4FCrRPzgt4vXj88xT
	 VVYhU3QY1aAPNZbHQfIGYnkmN5WB7RmpPKf4f9nYuKGNS2LT8D3yrYyS0PdpFx7lP+
	 fiL4cTAK9h5mr+WbIqj/HV/H2UHYsd4ks6Ov/Y5Ur9GxSDCHSnOptY0T0umhn1bzCQ
	 wdfQZsXWPAe2PfBYIYib/tl/FfwHlEnvGm4rq9kxv0WgJiptVPfOu+mZHT+QSC9lcX
	 YjhVFYN7KUW4LsyDnSKGNtuBs8CAaj6W3B9PEtZ/gmdNb1pmLBcihXhjsMZpuNqcTI
	 uEWpwddF2Q6nw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95F9CC36010
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 04:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174434639360.30659.12877538073736428733.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 56f7635fbe6b5f575589c8658fd2e7ea78d343b88253ec09a856abcde7613a24
Date: Fri, 11 Apr 2025 04:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744346393
