Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1544423313E
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 17:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761153594; cv=none; b=Q3ieFUWZvSfJD0682JmaORGXWXWlXtwz1EyGsVZln2VrEHEl9GS65udzUh60WhN8qf1R75Ll/+06g7kuhNWoFGV+sJt0qUS+PVQNoVMQDSFu9QjhpVzNIIwokqLfmO6KTNeJlCulE28We5W6s/Gr7sR+tJPjifl0BPacs5MxJb0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761153594; c=relaxed/simple;
	bh=IeDkfiYrqsKndLDOb5ODkZKnT16Dd6JY2QrRuiTlOak=;
	h=To:Subject:From:Message-Id:Date; b=jfdTSC36L/dIBMdZDN7/2h7wpo3+k5J+Ej0EPyrqQ8kRu5PdmDmxtIf5moJYEMGWj0RQWdTS02+mHzq8gpDXygNr1unaQ1rMpsmPSBUbn4aoQhNpJgmeW+b1KRDC8HgLdI6+IcGwT1V5elTlbmfi6Up2xpnxL8cGrVa3IjpJ+cs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lXqz42RJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lXqz42RJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A154AC4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 17:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761153593;
	bh=IeDkfiYrqsKndLDOb5ODkZKnT16Dd6JY2QrRuiTlOak=;
	h=To:Subject:From:Date:From;
	b=lXqz42RJ4Du5HJxtuG2vCxaHAIreS9063dWkhfaRysJTyoh9bfQtVU1cSrYKF96IL
	 bpGQ5EAa/eumh25OwRAjVtQrXI2Zt8ep+etltBxyb0/JjFGF1mrjIWDROqkDQAMjEt
	 J5xvsswIJoUO2JW9Rkv0E1S7iswM70rmClQqrAbAf5ab9KBcVPCbSJbwKfWrErODjQ
	 BkIBHZCQMt2WV7oX1S5OF5sbBeWL/Xdt/JUGfg2xMUruGDCjz6FyrnXyHJvt94uD/h
	 9D573EdGpVFLjCe85Xj9iazjm9vjh2p2GwH5Im8AP1WMpw+L2Tdiezue/0CxN/sFSL
	 FkdC1UqGiITxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91C41CCD1BB
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 17:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176115359358.31756.13498820266190006974.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4d4587fc87dd423b1ae82edc6194178371ac3a97ee712cf188a64ebbf221f9c
Date: Wed, 22 Oct 2025 17:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761153593
