Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16A3350096D
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 13:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768742634; cv=none; b=lIYubDFbwydtZ/NqSq1pzQ4iKaSr3/RKEi8+OvUm8S6YEwpx1E8fYjx+Yq6pXscb4GVO6XMccEghA4HCS2OmmYISp3/CZNgWWP6aZohvs1OWwfxV15yCyeV7fC89p2p1Sqwdakki52j2AhywJ+s2mUmhmE3i6wPGxHcYlrdgB2s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768742634; c=relaxed/simple;
	bh=HOJMabNtatTumxymV6+zhPwYJk6c4lbD/MF4+jPh1BA=;
	h=To:Subject:From:Message-Id:Date; b=ZDRp678EjGM1swQRPmrFBq/dNUvdT52+PajwIf3HXrb4PtcuEKYmvQGYFXyV4XcMBPPSuYg1HYe5vbpYlQWLkwynCLTj1w001rfZAxmNf2D6+I3BjDGUNmMf8VR6XvmH8OUr3eYIzTWFI15A3NB2nrHsN9pTRayUCdx98IqhJhQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BHvor0s4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BHvor0s4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A77D4C116D0
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 13:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768742633;
	bh=HOJMabNtatTumxymV6+zhPwYJk6c4lbD/MF4+jPh1BA=;
	h=To:Subject:From:Date:From;
	b=BHvor0s4i89qIeAMomP+RjS7iOgUgHpOyTf5zwkhGkI0IO1FRH9Gq4i2InPacimbI
	 2VARcoNiyzL6jcATTw9al9+AXltCi3kiHHWqp4b10lXQByKPYDscS+n1pupVD1XCDb
	 xu/9xJONP5I1Fy4HGGwuA2jFyIyIFX07b5k5kLaDsdG8dEWrO3IFmED0wbdcCS+nxI
	 zZDm82ZKl3SswkqdLNVrrksZNlDH9jRe4so1J3to7blTsZ6Qrf5fRm/Ti4PAvqAWkv
	 ezef69adXn5Ld3UFODnsnOynvlssZ/EzvC01CayjhCiUieyAL9d5O5u8k/+eK6Ptan
	 Hi5dOCsdUW7Pg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96915C9832F
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 13:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176874263358.9670.10402285738564628424.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 177d35e83859eb8da7994013a86d0d4900307bc3abd61e4aad88d38a59565fad
Date: Sun, 18 Jan 2026 13:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768742633
