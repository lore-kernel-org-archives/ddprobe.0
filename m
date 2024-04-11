Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D7C8152E0A
	for <ddprobe@lists.linux.dev>; Thu, 11 Apr 2024 16:09:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712851763; cv=none; b=lBJafghzkmDviPKrO4iguP3V0gTMt9RHUbXDOvK5lN7FIsxs/v8c/PVxnVLAd0yUERAAWYqNG1+NbunCX2H0sARGYAD0lyTF+zKl5R3VsGOW3eYBeMHn+JvHQOlHiNuas9SfipkY4bcai8cR7BAgIekM0++L8OuSaGDz+kcU3KI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712851763; c=relaxed/simple;
	bh=CM1a9xbrLvZ0/+wdlaeRx6V+A2kkDo8AEPNefWN8OKI=;
	h=To:Subject:From:Message-Id:Date; b=QkZUI8Yz43GZxayDr963GRnR+qtbjc5Mns2Re4wxBU1aXJzKx1mnPWBobPNt+jCKTNPL5biLoToCCsyQiWAOA/sW8AFZPmbotGdgAkrRqlZnJlDDSMk4KLY8vNciSQCXQUxw6+uTmnSCco2LzzcNAsAHI9Yje4BkAQmOQHXKF1A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uPURhnHC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uPURhnHC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD297C072AA
	for <ddprobe@lists.linux.dev>; Thu, 11 Apr 2024 16:09:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712851762;
	bh=CM1a9xbrLvZ0/+wdlaeRx6V+A2kkDo8AEPNefWN8OKI=;
	h=To:Subject:From:Date:From;
	b=uPURhnHCWzvhfSS1zSQLPqS05MownB3S08HqceDgDrjLLOgPqOP0qWfR4XzyAeuM3
	 35w6FDC6i4t3rzyxeZcDdxjaGBGJJMBSHLfxiVZjKMiUtrcK6a5FaEu3jh3j+svevp
	 qr6Ai+cztE2zW9g6bfBNsMSTRQNMLtWpz9LtPjnrHHWy6tGLFp7V6PL1MTKX9QHGeD
	 jhiy9GqNEzqHm3s+AC6Qu3UpnXjEsYDGfnVYnid7grUEjpQdK5CuRtA4vl8f6I/Rwn
	 nj8uPKFcsgbPWQTB3hVPKHua3ZpiOASXODjh65a/0dwsw+cmfwgIbztDiC6HMonqxK
	 Vmn7zmNCdCFPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BAE6AC04FF0
	for <ddprobe@lists.linux.dev>; Thu, 11 Apr 2024 16:09:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171285176275.30978.5255271131985615061.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cfcf71735d619b0fb786c013319379a4618a78f672abf438a25ac9750992e33a
Date: Thu, 11 Apr 2024 16:09:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712851762
