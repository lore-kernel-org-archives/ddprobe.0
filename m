Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C4CD9372B28
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 17:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771350893; cv=none; b=pLLe+jagRLGXBE99DLMxlaSaW8usPMftOORucbM/3vHupLqgVT7ezpKGYpUpzNpiZbD3Zuc5nJHgwzTOrUkcijLq24gzhrnit5/xsd+m6sR+u2557LXP7iGPljIvHIVL5kmJrTsqIV5GgMCzEkB5byPg/33lqGLqf3I396NuYsc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771350893; c=relaxed/simple;
	bh=2WaiqxUdRT8xk1mL0fDoxjkLV/hFgkRj2w5LYBqizbA=;
	h=To:Subject:From:Message-Id:Date; b=QUrUzudz78YE7mnzPLdJixvc6i2bNaxFbuxbU+++l6xFfYFCpfjCe9Ke2+kRyHFPrGINEHRT/+vbjTmcUwsQNADctZLq0jf2gDGKVj2knJ1khD8uTcXrRYzNxP3Os1YZ6CQUDc9pCJaeKDrIlMn/w73jMh9oU2cut7bHSBZX8M4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=POp7sNqr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="POp7sNqr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA1F9C4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 17:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771350893;
	bh=2WaiqxUdRT8xk1mL0fDoxjkLV/hFgkRj2w5LYBqizbA=;
	h=To:Subject:From:Date:From;
	b=POp7sNqriLtARjsfmnSrJejLZDaMcDgwiKztbHIapyfjSyDc4923fQNm7owiwiYpb
	 WZXi01suHWt77mDmDUtXUDgRE31UdxUPsg5BlfIsZjjUPfyt8AegOfPGJKcuhx/++P
	 liyXrTy+5QIGC45YNVdaeXnHin8gPi7TiwLkmHz9brPB4w6PGtEAFcz4U/1X/OJ2Qz
	 LgeOeCukDwNF/qS+N/K4Sp462YWraYappsr1ObPseuP2Av1EOrozI0cXg1sH7eL8G2
	 lQ9jG3siccFixActFH7EO+wcTM4nMRWZcshOZoJ4hWvEc9sADrRkDZJVu89IADVCs0
	 00UnvadC1Lzag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97301E9A029
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 17:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177135089360.27681.4241618594999665039.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 581ef4e5ad66c5c30886816cb15a7983980e874677072db63c739008c9240fb9
Date: Tue, 17 Feb 2026 17:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771350893
