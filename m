Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 476278F6A
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 20:19:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720815563; cv=none; b=MSeE+Lxo8e/KVtFgyNTMqf/Vvk1aAAgDQ+pHjJIhJL1w4fvj8IwxzlXXTv9V3MMcqZ19UyyeaFW25JkIC7ztcY0mB//R0s2ZAv3MEy2mu6ATvUxapY6ryvxir5E2vNqiEKoNK6ysxpRadfhETS+MzR4OHjpOq6g/kuMaQtviRmU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720815563; c=relaxed/simple;
	bh=2ecIrBUZYg2l82ooHUy1jEqyVC6mCBTnuAB8O9qv+Kc=;
	h=To:Subject:From:Message-Id:Date; b=Y7b9h1R1bxlv6MEsatLVMPC/Z/qyxTuzHHNS+vUiSK7Y2xgJicuPf2HyOKP9gm4l+coMOTuLewxnZYmzJ8Jw3zwHT1Kuk6LhV3hW87gHxvwVHNrMmTPgvJvX8v3l42x/r8TNaltDW1k9aVIm2mR1AGOAgruI7amP/dgucT7UCmI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cdzhmlNr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cdzhmlNr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3A54C4AF0B
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 20:19:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720815562;
	bh=2ecIrBUZYg2l82ooHUy1jEqyVC6mCBTnuAB8O9qv+Kc=;
	h=To:Subject:From:Date:From;
	b=cdzhmlNrJ0e31I1t4e1GDCVn17q8991/YgkF26rz7+yemUL5HbfNnk432t/96eyMQ
	 EzACTarUcVpxjBYKGc8m26F7wXGsqYndriamFvGctzD4MFufMCJpRgCxFT3ay+AEsF
	 3gvX+jC9c7tEhEH7ls9hyKGLLqr7Hj1ya0vXXqr/3auV8DobqOPHtAYsS5gyhbeUYX
	 0pLuXHAWs2IJQBdvWyBDPb7oVZ3VlZnoQbFqPy5Fe9/tCTLnwsV2jRnKntIM4SRb6T
	 aHoskO0mVz1VNk57A/Bg/s1jFsTgDibDV/n33i324aCoyAuE47jQBxV4RnhAuaKy9Z
	 3PytqOpZDhgdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE9C6C2BD09
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 20:19:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172081556277.23948.7840702036557659349.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 95d5a50adae0202bfcf872c9d3ece4d47f8cf5f55163b75a33e0f0eff68f71a3
Date: Fri, 12 Jul 2024 20:19:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720815562
