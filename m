Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B01D1C05
	for <ddprobe@lists.linux.dev>; Tue, 13 Feb 2024 00:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707782897; cv=none; b=H4y9WHQHiWgUeTePWqeql4UFQETqLzd/r7sXHr2QkbJCuJ9ORdmhjMo8ZfjKBj9Sb45rqTH3zspBKnCtMTMwDg5dA/jSb0QILPaQUGTIPAXTg3S2a26E2ETVeoxaluhG7yZPza5/jDzJuncMpjua4dauUgVWTs3wHHPO0G4wci4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707782897; c=relaxed/simple;
	bh=BuWeOXAOc/ancPQxWA6WXxPCOTz7zy4BEb1YmuOx3Fo=;
	h=To:Subject:From:Message-Id:Date; b=J4cazrz2Nrj8zevRDK9eeV/lUMc357cZOBN1XGxA45B7C4vDi3yO1pDCu1QaNFVpmdVNcmaf14dxUMZzYqNcypfdjjBsyyCW8viEuoehygbkIfCP08uK9foeMo5EfMIGKrH140I4AvnHWiYLsgrYxoHSc8sznFbVDWe64vNccUw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EtSoVE2n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EtSoVE2n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A109AC433F1
	for <ddprobe@lists.linux.dev>; Tue, 13 Feb 2024 00:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707782896;
	bh=BuWeOXAOc/ancPQxWA6WXxPCOTz7zy4BEb1YmuOx3Fo=;
	h=To:Subject:From:Date:From;
	b=EtSoVE2nY6HeeuVuyXVFicKthzBpyYuJ0sL7wMutsA4AvbbZzuySApAsidkfo4431
	 pW7N/NMXXFsCapfwa1z/vBaf6oOOm0Cl1zCl+q/Jf82VplJn8d/rSTPQgHJIH9ZIxq
	 ydquw5JoWod+cexNgYMCDraf83ejfqJaf/3rPDMFX/q0+A73v9FY3vNsJ0fjw3N0kX
	 AwnxeE0KpQzeiCPMl5qCD6/AynQZ1ZbQy7rbBdNsUelyN3oRiIXDx2OiGfEPtcnSWs
	 TnThzEsdtFHf4o8QPlHhfkluJKMG+SvZfMvXtNp770A69tvAburPeqKgCEpkCp63jy
	 0UBk3wRFgmJTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 80F07C4829E
	for <ddprobe@lists.linux.dev>; Tue, 13 Feb 2024 00:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170778289644.7609.6086887147394712260.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 80a950679a8fda7d61ea8e5d3bd13dbc71765cb94cef6126379fec934f2a17d2
Date: Tue, 13 Feb 2024 00:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707782896
