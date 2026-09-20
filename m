Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4ED0C2BEFEB
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 03:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789873834; cv=none; b=hPk4/TznrZXUDxzqqYdjKIoMO/A56YHc166Hd2l+4tiOFDCoMSJhut1OBftcOY2Mp1Sz/4JgeaJkHdV78oib+3ZaX9UMM5pSYj9xg3+946sE6IucxrsIeDF9bz5itlTIYODfT3nn07UvgY+biCDuhJ40kpWREpvqFXsgBEljo1w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789873834; c=relaxed/simple;
	bh=CYzSl5mwxQELp0Wm2ro3s/wikE4XnWZjF/rzeUVOq6E=;
	h=To:Subject:From:Message-Id:Date; b=SyH3h4WSggHWHeoImn97ZsDLfQNb45Iup5seJl0M+jgI0jcuSKn2dweV6jZdiFb0WWUtgV+mfndLAc3xsi5UpIydCExsRqjC3zcEZ8uHV8h4xRFW9knzz52JvdlGqWSFMSzPV4+RNNOV4DAoV2n0lJyDpQBA99C0rvq545589/U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sDFwezJ0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sDFwezJ0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD460C2BCF7
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 03:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789873833;
	bh=CYzSl5mwxQELp0Wm2ro3s/wikE4XnWZjF/rzeUVOq6E=;
	h=To:Subject:From:Date:From;
	b=sDFwezJ0XhQFu3irQQSkhdVmNekVI2/yYqT/8QABS52zb/FUav89+MZwao3JWvbKK
	 B3Xa4m6us3gXo3CWlItht+84Cz1g6zM/XhnXgVSCvpH13sS6HxnzdG/9v71FscOPw4
	 X5jmrmLFMvdi02GcjzR1oYD7vEnoycEXW5KfX81VjPjQFLlGePrVpSA3B5DJU31FAh
	 FQSEUQMK5FmV5eOinHldd2TmHezHLR8aAyrYpvKh9keFM3HS4Sl3UVLPVFvIKYsn3d
	 3rioX0MVu2ewn/aPI4Cg5SVyEvIJYbgrm/8sVTP3A1VVKPqjybn2kVDwGwgrKCD73X
	 L671ST0OBx9sg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A99C1C982DF
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 03:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178987383368.27236.6190501349953770499.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d2e17488444e6aa0d32aa856f3838e9c1f5b9eca1b5ab829412f5b98ddc0c23e
Date: Sun, 20 Sep 2026 03:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789873833
