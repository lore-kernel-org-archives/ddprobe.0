Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31746395AC1
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 17:26:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781371594; cv=none; b=ShJH9uxcvW4tUPzqjBPCauuV1ssbH6LJ/HNl+4CRRsPZOKmmlxRhkywBSFb+hihgEl9XBNphyTKi+3PzKdCLO5Uqm2R9V4PDJ3LjpsrrQvX97gASEiTtK/XVkBKirOGxlg5H3b32Qmfy1Oz05eiUxwDDImdI2lN7cNeP1W+XLaY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781371594; c=relaxed/simple;
	bh=LNzxbbtklckYwb8oLj/FGM7FKc0R1ET1b1QYRffT1DE=;
	h=To:Subject:From:Message-Id:Date; b=RxMR4Gp+pt6wwrDhxpg1l5JDdrZVBrdqyL1XNoK3hY3I75r8T1LRJKy9ojmUBOYy5wtcSrVthlQTWbBPkQDWJkDNvq7sWpO5ofM5EcoS7tsySv+eqQ6YAcSsE4gfEQnMKk2mWKPvxcZ/fazu0WDIsYFANzBDz5aMYGOgaNZC5ow=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H4Fjpoh+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H4Fjpoh+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C212EC19425
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 17:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781371593;
	bh=LNzxbbtklckYwb8oLj/FGM7FKc0R1ET1b1QYRffT1DE=;
	h=To:Subject:From:Date:From;
	b=H4Fjpoh+TG363487opf6vDZMRGH2Af2fFie72hUbFmq61Y5Egu9RDeIF6q4g/Sp1K
	 dt9weNV0jhHU37wfejXhNe1Gso5ZMfEvA7CCF11o0ZSHE8JsPgcNITsNlzkCrvqcuD
	 UGX0N0gmLmVRcC4c13nQcTrGtPn00vCgsiKs495qjdYWtKwrAB/5Kq1/+neR1LCbjJ
	 FpbSzj7/YIuurjREVqoJ+3Me7y4u5taUogcg2cAi3wI+5z3qwnDpSFqQjYa+SFJJVK
	 dIERKy5L1VydnsCLOEQDTuk8Ka2NrSbO0dOwRfix+2K/PJtqd78eTjSvTEyQFhHFJv
	 DBZttpgEv7N5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8021CD98D8
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 17:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178137159368.25415.17285433043405802099.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 20d5222f3dbd5ba460ae64aa34fdaadbb8ef03cfa3e16ef9e2352534ec2b5d15
Date: Sat, 13 Jun 2026 17:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781371593
