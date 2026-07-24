Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40726274B46
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 05:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784869834; cv=none; b=DS8E3UKEX4QB0/iDTJ1UBEvKOF7jx0clwoLNDVxq6C3t4ZMq2vynh+g5ksU/mzldzChkYm7mideRclOTvGm6xyHk7Mpaos5Ag7BnmQuQZMl25VcaAg7qoQ2X4v3GGg07oevlv6kEQHQPbMR0TEATeI0rT6mYawoNzwyc9fRl4MU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784869834; c=relaxed/simple;
	bh=usaccnQ2l1EuAIwzPnWLJj11QtsPk4iV4/kEAt+swak=;
	h=To:Subject:From:Message-Id:Date; b=gHzjggi63mbxeRSGf8/pygeE8VkRaU/VQC0AnX0CZRfEd8XgCKaAs4qAyACL5MK0J/qRylvZrfNTvvvd/XRnITbqMGOSRq4lw1BtxJ7CNGQLhFB9BI1uNGCRMLfVo2mQ3aHv5nIJUZau5vsgckFJnZork3rsKWBB/ey5TamTxGY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cqBNBWah; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cqBNBWah"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1F06C19425
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 05:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784869833;
	bh=usaccnQ2l1EuAIwzPnWLJj11QtsPk4iV4/kEAt+swak=;
	h=To:Subject:From:Date:From;
	b=cqBNBWahZ+eT3Ri6Mp9iPfHHaLFfYVbBO8lavdAhhjHsunTyVq3bp8Mu93MK2GkT0
	 1UTxHxqNDH1XXA5qQMKSKe/v1Ew9AA4N6kkRsPLV3LLk+DR4iqyZ5m8cAil7QmGen8
	 fCQZbHJTwyQ66tPT2/TFvi2imVRVFLxlTnu1hwN2VfIZxjUUjwXO0xLIEGB0FvrdBZ
	 U9lRn+EK5r2g6W6jfngi+rzKPOs12rw8ZQ24Kc7h9ewMug3YzpzYTybmQzYoiuVezE
	 FS1yRhIu4VCumo4fPDgM9aGTR2csHZKhTHFJLx5nU6O95IzcHpv8beLKLxEqklb1rF
	 IvRpa97IH4XGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABD02C531C9
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 05:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178486983368.25304.9708855037598071706.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a6595fed8ec3701588cd72b5a87f5082df3d2a336007072ab1113e6e722a2036
Date: Fri, 24 Jul 2026 05:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784869833
