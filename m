Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 289F1421229
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 10:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784889034; cv=none; b=A0SpBkwmcybhc6ZX8+5bZG8vBfpv4x+xPLLG4irklGhRnAa2wbeKPBzAnnAGoMJeVqHbAxZLKPMZOnrerHFVif24kNsjm0PXpHJsmliQdcPrpEN8iQkd4dCxG/i1z0pq79XgAPOQe+DCMD14/xXsV5EHme+HU7mN/lk5QTL3PHU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784889034; c=relaxed/simple;
	bh=mgG7vSOEz90DQpQQmd2LWrlpSH2Vpwk5ezQkl19pK0I=;
	h=To:Subject:From:Message-Id:Date; b=HWrmU/HGbiJG909rvg14XOlINRXu1yRS9jDKXGlLuLxXKJuZ4o31nKiOBracjAkyphjqQhnofYw0CxTaBV+Z/KJH/eymWF90G0fc1/cLoxYBOybWU/YG7tAr9rguO2hAz1b98pyD7Mijz2jeAOD7oKgwR2GKSaNT/QcZFegKl4U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sJ0IjytD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sJ0IjytD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1357C19425
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 10:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784889033;
	bh=mgG7vSOEz90DQpQQmd2LWrlpSH2Vpwk5ezQkl19pK0I=;
	h=To:Subject:From:Date:From;
	b=sJ0IjytDgF9PPQIsMyVMfTF+FLZbXurtMJWBvcLO9/1BvBvDTcZA//WUR9OwnmIq0
	 Hh260v6u94wz6CE7Tpg4FP++g1XSDnPRTjfnxNF2e3fgicB8lHOlREWAP90MbY/wDZ
	 wUt+rSSs+8glqHiDq24Q/dB2UOCmVNQKJnA7D1USHT+vaolHris5LvlCKVxI7SJ24X
	 CW+TsrB/Ae5BrlCj83Kgt73wRFP6WpR0Q3AWb4wCf/pM6chYEBDsmU4FMmkBteJhj0
	 7NA9qRoUNhc6UZMB7OwW2WTP2NThXdoI03k6xGpkKh/wBOQOCpJDdBj1DPo/zFLiJq
	 B5Bqk8TaXSJTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC830C53209
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 10:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178488903369.11477.15296660078897077429.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3549a84ab5de0c43876127fd5134114098745d8aa7016668cc353d019baf2888
Date: Fri, 24 Jul 2026 10:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784889033
