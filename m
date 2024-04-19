Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F4A91E878
	for <ddprobe@lists.linux.dev>; Fri, 19 Apr 2024 12:50:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713531023; cv=none; b=mFo9ME0ztHDVh9+PcAMI/FYVmzhdn1dXBuKK4UtSnJ7IXjBtdQA/co/Q4FpmXRJWvoMcuTvqcrgGrxi6muO9lX4DjI+3nHQeVWarPiCfq82DcfVKc8DGM9vmmWIPArkBmt2XxRZeseycv/CCYAValMa2T4auh7hAF8XTo5heg64=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713531023; c=relaxed/simple;
	bh=zFzSYMF+35a6oU/KEVnwY8dRzsTiT09XSlTU9aAqS2U=;
	h=To:Subject:From:Message-Id:Date; b=iikpGxB51In1rdsY7QPR/oMIysBiSHUvXcJ21BXUHGY/daYs0AjMt59XGVVoicfUiX5TrIGzM4gg/UAVW2wWgma+KAYABIeggUVdudEJaFOv6pMZyKl0e6p4w69nimBX9bs84uHKRvb8rHvX8k8cV6Mp791/ff++1eku992dtDk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KoL7YMl7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KoL7YMl7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 04468C2BD10
	for <ddprobe@lists.linux.dev>; Fri, 19 Apr 2024 12:50:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713531023;
	bh=zFzSYMF+35a6oU/KEVnwY8dRzsTiT09XSlTU9aAqS2U=;
	h=To:Subject:From:Date:From;
	b=KoL7YMl7sFsGab40QC5FY/ZZ5vJcuOjYnYcjL9chtPu4GwspMjiIrLkHCCnKnmrlZ
	 7xQDNnktljCsGLg2i//xVo5dyP4I8FTIZT92MHH7OfFPCgtDBgyqwST9fGTpuJXJzU
	 67uiy1zcLhEnxXqHVeIt3sD2nfF4UTLOCOvMaQryM+vh6yj942r3efRwoEc4kJopM+
	 xFudr1IvAtDfZbsrTaiH9XC1wQYMt97xLu+pWzYxpr9fDiaNQZqbkPd3ApEwXVUSBo
	 yBVulyw8YoiZiBDSnuDNcC+jTS/SyWz/47fs1C65tL95T3gMsonSlQ7h9qgzK+/qii
	 6TdAn9KSMVw1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CCF64C4345F
	for <ddprobe@lists.linux.dev>; Fri, 19 Apr 2024 12:50:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171353102282.14873.2582384916102706890.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 653ab2f22b0b927865b9364e174f204669046862192bd16bea53acb883f886e7
Date: Fri, 19 Apr 2024 12:50:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713531022
