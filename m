Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24B271643B
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 17:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770831894; cv=none; b=bSFpE4+fGgEtk+ui3z8LxykXNbZEoKMzTBh4Eo2r88otIVZMVo+nZyChaDmUdj4ZTOq6h615dpAnBa+Ox0PSfKi0alD+nZ5BZuUv9iyOTM2sVuyhGvXKJqunEmFzax3hIWyzhZkWZwr1FtAVIpKUOopfLVI/j+bRYS3golUjauY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770831894; c=relaxed/simple;
	bh=76VuHcM6lqM49ygoIGJt9oxceRnWUikT/ZbdoChab64=;
	h=To:Subject:From:Message-Id:Date; b=oQ3lu5pTGdoPv25cYXPmpdXnxJLPiK4Q0byrlck0KA49u4GY0XuXRZKR16VBVQU93lPE/iNoRu5vbSINrQUjvTS4wEefD2tnZKAXvLSAnA4vCjMDDVq8Mo0j513nuSpYx/m1xFxZmUA8Gj4DukV39cpksaIdc4+HrrhQNkHLFmI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iAoGqdgz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iAoGqdgz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2143C19423
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 17:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770831893;
	bh=76VuHcM6lqM49ygoIGJt9oxceRnWUikT/ZbdoChab64=;
	h=To:Subject:From:Date:From;
	b=iAoGqdgzZI0AHqpCSeE/hPFLbkKW3pHdolwKGYdEzOqX8q/MmrOPE8nHaVaJVDtWm
	 ia2bO5atfLsf7uHFKSiVT/qCIsQG6d6J0D3BeyjYaF+cQCwR4PpZX+Ur9zfegEPtSG
	 AY/zBFSkVQM0uLrZR2G/myRkGCGwrVBj4DvEqxrJ0cAWGvRlKNsdT1KW8ufSfa/9sn
	 p8s/DwS6eScOHeiqTZp4pPd3RVjC1RgCW8FAz2qlPR4uzE4gX458knChKEZcQz6JCL
	 Rtd5i76QwiaIzmsZNOioRTmHGZsIs0PEgeUNJApq1Jby3t5PqQ4fLA/a/bIswXDQko
	 p8CHSLebAy/yQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BD83ECD6D0
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 17:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177083189362.4415.5125629739627814208.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9520b7135f9aab58678df086d2ccb2a34b518f0aced5487629ffa3ca52c603b2
Date: Wed, 11 Feb 2026 17:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770831893
