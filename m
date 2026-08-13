Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 74CE341A4FF
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 07:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786607434; cv=none; b=qCGk90vVqdZdd8oomHLp0w4oubIDMX4nNrZCrti7/fxqOnQTUVO+wuZ/T9HQAqA8sgLQMEXMA7NMgWvd2gGiMb/U3g0OCtjoaB1JQD2cgKKuh0okg7x/iDqugi91xuDxrB5Gs3OhJgp20wREC97PDGCuU7gWcRTPVsr1nA8N83c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786607434; c=relaxed/simple;
	bh=BJyF4NWU2tM3IJG2/x4KMQKNIc5NnShAxFiUzsMBj1U=;
	h=To:Subject:From:Message-Id:Date; b=lvySTsRiguu1pvzLqNTyaSy+qXYoWaMVJOhnbVvt1BpL8peUWjqFLgaHxEz07936Hch9YP8kvZ71wuappS38B3+9ZgQ74FZcRhs49tgMlEKzRAI5H19lQ0jEvaBLRC7D4H8Mdxotvej1tPHI+jmlfrl1OD0HaxCW+TtiOW0hRr0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DWXB24Qm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DWXB24Qm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF0FAC2BCF5
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 07:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786607433;
	bh=BJyF4NWU2tM3IJG2/x4KMQKNIc5NnShAxFiUzsMBj1U=;
	h=To:Subject:From:Date:From;
	b=DWXB24QmMdFmBmRC0rePyL2hVHZbTDyapytvIPglCwA0H+FZI8ubSl8RMnkAIyJ0K
	 2oViH3Q+D6+ms4+sAqsimz3Gk/d9EmrxkoQ8PCDre6HIIF+cl98mg/JmCCoa9mpPMW
	 D6shP/9Y8KrQv73zjCVNlgFO7ZGVFNBcR+q0/KxVgj+ROGSXe/EpB8G4bSmSPGlCmq
	 bvCtSlp7rCjWFAWXTCU77osQWslAZZ7/8H4+wYVYKtYX95dq8xA47+QfNsRDA8cM2a
	 hX1dcjjWW33pwLeOY9rCCh0uO0Bojkmbnl/4G/w6VpH2ALTratHGC1on7UJAoWDL3H
	 v7kuCxrcBg8jw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9614C5B572
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 07:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178660743368.3062.11824228511809583802.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ca4fa8935bddb924addb30c8b1dbb256935c06614363cff11f8252fb86a6806
Date: Thu, 13 Aug 2026 07:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786607433
