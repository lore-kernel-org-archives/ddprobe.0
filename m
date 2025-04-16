Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FF6822A1E1
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 11:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744804194; cv=none; b=nm2k+IyhszZvnpirQoZLvXDBjQmXDP23GdMEVfoPUenWMuoB6D9g3M7Fnm/BJu5qtvlicW3W3Nag0xxeA9RSx6qm7bmJiHJyz/wQuSmKHuMPSiOJwBaQ+ynptwMay4dPdUKfR2mAuaSW2r8RNQiECyJ53X0mbSY7cuNbLl7vJuM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744804194; c=relaxed/simple;
	bh=XM3Fp0atfMg/cXerHMDeYg+EZpPUrqoJUVgt0aTseEA=;
	h=To:Subject:From:Message-Id:Date; b=bGoK3/1mpLooK9fGoyUnXF2lydmyy5KpyqTMx9DDVItBlwdmJt8YTUy7cyVgdRv6TTueawxU7XuqvZQ5rKSQ9eAg7Xb1rFg9nclNSVoTBzpzxLOAUbYV+mXUb28FSOUQwvY+cw62sC/sUKuhh6huIpE2bG3iDuM8XAzDjzISXAk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mXa1aPwr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mXa1aPwr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6829C4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 11:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744804193;
	bh=XM3Fp0atfMg/cXerHMDeYg+EZpPUrqoJUVgt0aTseEA=;
	h=To:Subject:From:Date:From;
	b=mXa1aPwrIv6WHybtlQ2zuuDhC0dN+6pHy1pXAfDeffjnbJZ9iWCcp3TWPJfIkX/ey
	 E+QYyM5GlFbTIMeOypLAzl/upDgcT1FGjGRvUm/Ssc6tWs0lyaVxhsxRXCcbH6H16M
	 QABygjTNNnDH0/IDudT2kFaGtIJdUgJ8GkNrx47z5MsXAhBTQ9wMXOmPd14mKCGh9J
	 cYWiDgFW5dNPXrqYSeq0M/ljz8GUbZnuT0b9ZX2c/sgbJK6i/KPIEBWMiHjuAK+jbC
	 W5ibYDtSzDT2+DMjTMzH9P5JXpSJaeFLpfgUdobUzxE6ZAjP6QMM4RbEZ/Yq7+Nia2
	 wlfzdXECYNDuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2EBEC369BD
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 11:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174480419363.27602.3482148874706180524.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1281d13dbfc8f7fd7c18d1e9adf550844db383f6d8d54db8cebc5962a13fb2f
Date: Wed, 16 Apr 2025 11:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744804193
