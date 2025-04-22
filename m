Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3314C290BD6
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 16:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745339394; cv=none; b=I7LA3EvL97bwDXd2AUOOcKPbLMlF763pc6WHyEPFEnE8fAnYEymgRe27B28ScgfLLHfjEJNR/S12O8tk+uXNhx7LjW3Y4EGJ14TYtF1GU5a3f4/hc1p7IMFFbpkJL6MQVui3WLODed2riDFctw99p5YC/ZMqTec4JYVFa7bt3aY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745339394; c=relaxed/simple;
	bh=NtauApJ+A79Wzaf14VySFFfVAcm6rpojZL/zoesffu4=;
	h=To:Subject:From:Message-Id:Date; b=CDz5qtoUa7/jHjDyEMS0C1Unpz/sMZSlECjRMxxk3MbAY3DuPl2FNsLpQIK1cLeMB33FYJ8SnDPqgiZ6/rpUVo1JDvTcWB9penKPbGFbJpRYTUu9IV/lqdJS28MGd6GUgx8Fr+S0mCm4hJcoWOw/MWMMSK/5zf7orjur32w103s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t4hE83oy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t4hE83oy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0536C4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 16:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745339393;
	bh=NtauApJ+A79Wzaf14VySFFfVAcm6rpojZL/zoesffu4=;
	h=To:Subject:From:Date:From;
	b=t4hE83oyh5H1LbN16TKOFT5RnGTeOnVy3sBz/BdLMLiTNbW+awGq6Ow8tXF6Rp0H8
	 U4NpyGX3V6WiAfaEu4JuPwmRSxPozFYP0jT6SzHvYRZeHSR69x/tXXKnzZkVM05v5N
	 vppE8eK/Ryj/kw8rp545gNAQg7tRHMGsngHdnifpA4YqozTGBQVfKqTdthxUEQJ4ee
	 vCcMF++a5R9J6rkugtNUJcfYdL5ORkWMc4eO0xcn2K+8dhE8EUloNA87R4ka6JKB44
	 iGMH90xt+wpTQ++5P+izaOAYDGkAQGLXMuOoUOTemQubuWRrPHetbIVQ83+yFjbqPO
	 iXcrAeqcfP5rA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D6E0C369C2
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 16:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174533939363.6528.17495978468887507087.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb3fbb31e4fac7644382dbb26d4a0d9f3874b383d3118a257a8b74aede98da52
Date: Tue, 22 Apr 2025 16:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745339393
