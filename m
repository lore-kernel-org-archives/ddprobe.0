Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15D391E515
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 08:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751359195; cv=none; b=jcwRLoAOB68N8rPCuEgELI5mFVSenYzeAEqV1z4bT1W6rUJqiCepcHG6pNA0NeWeF5GfRKR8AitbHEGWE4RC/Ejak1fDP7aH7F6GhP/SPOhe/jTZww3IW6CRghiQlunvEB1DwJtimTiTuxYDpFYdj45t/vBXudUbdur4/F669TY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751359195; c=relaxed/simple;
	bh=yN9c6WbliCRwTHjowRYEg1vWJopOyk9Oolddzxoa288=;
	h=To:Subject:From:Message-Id:Date; b=crmWP4EOPcH/NP6RGkrxuPbsAQbB5QIaO6CdbzmWXVNVCr6zFsocGmTLIYib98pWyT/ZPpcd2NVS+x+f9FXTM8kzQW6Wtn3DFfrtheSi0E7z5aRFkmylQJDyAfab4xNWSpUvh7te767u813OHFZmB2Z9pegGBsedg784Q6o7HSI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Iipaj0gC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Iipaj0gC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EB66C4CEEB
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 08:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751359193;
	bh=yN9c6WbliCRwTHjowRYEg1vWJopOyk9Oolddzxoa288=;
	h=To:Subject:From:Date:From;
	b=Iipaj0gCPgPuHcjMhFbaU/S2regL6bALEOdydKn7ZswE+3EdzLolPsPNmWDd2uHFP
	 3pJ55sXBZW2ExXJ4zkfqD8Aks+MX+7AeVqj4NuTScoP91/I5hoDfMSFBrhtBOoJKJZ
	 yPWCb/msl93atpJ+PdnXBconT+kW6YXUD1Qg0yLEQ7Wd8bV/rJOEcTk+ATHtqyS/Rm
	 NkbVflZlrd18eiGzEMhhXPYysjSDT8XOPeH8fXvK0HwaOoCp5Rte6DIzm4nhTAyo+K
	 sHJrMQwDhmR/Gezb/zzBtcX1V09Gk4wE+YxFjGoJu0e4PuwmN3e+BfKpUeUwXfNSg9
	 ZBE8b14GEg2qw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F32DC83033
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 08:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175135919357.29417.443280121893780006.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e8c066b68115186ab46a1c3e2f97bdf7110fb8bb3cd99e763dea1a7eda9eef9d
Date: Tue, 01 Jul 2025 08:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751359193
