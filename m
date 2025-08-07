Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FE86257AC6
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 22:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754605794; cv=none; b=diFhiPDI6nV/BD4iR/geFbQPParcc7CzhndqjZGpnsYZQ3lUbWEJlPEjQzmGRigOn7UWfPLj7IZM+rB95c2SudqCFFSe/VXOnIjZ9pz/GBQ+9EXztBZL3SF/ldmduikESwGDeVA3QuWs4lTc5qpvDRR/8BmMgN3YDJDOUOrXmz0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754605794; c=relaxed/simple;
	bh=yPq9Z6nayCP7Nx5T8iCCTMoeCPGm3njNd9YuSJxS0Ps=;
	h=To:Subject:From:Message-Id:Date; b=WAy4KYHqY0WHqoM2OG0BrHYNI2vc+3DPijierPwnvVd4gglQXaI5INPVfY5G4ch8AgrKbleN3g8lSHdAS6FmNlvO/2/v5XG6ZLgJwdVAzXiRY8fPOzLzrG2RDRrtgfgg0D66lcDaN1i00kGz3Ii+W6n64hIcf2dkpO8IUAI4zzQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qhcVjQRC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qhcVjQRC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2654C4CEEB
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 22:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754605793;
	bh=yPq9Z6nayCP7Nx5T8iCCTMoeCPGm3njNd9YuSJxS0Ps=;
	h=To:Subject:From:Date:From;
	b=qhcVjQRCxHQafR12oUjtoDNEhcto0WTD1nzACX7gi50v8P22a/nrkUznm6ygeew29
	 /inShuFG+Q6sScYIsxGaeOIhItqJc9/xawYnQilk8AHBIFCjC7kaDNtCJsUqabQxrJ
	 eXtIIYJM8u4m61orosSOENjdwFBoBT3VTM5lTZ6gxg55BS59tpL4g1wFPUE3kXBX0A
	 djV3stA1z+snxi7/930OV9UvD/cExRcftq3PXrI87eFKMOAF70TlmfeezcY7b/Gw0d
	 xEl+2k/jjl1ABtKK415wcxOfG8nz39sYl5sEv+oYk/A6ZBx4l/Zr1WvuMFdgwnFYMJ
	 hIeQ4thQLBaPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93F2AC87FCF
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 22:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175460579358.15337.16523876978518095310.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e48f84968d443f58971f23c65e1cb93945fcd8cfe7d9a6aecc99cf16c8436e39
Date: Thu, 07 Aug 2025 22:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754605793
