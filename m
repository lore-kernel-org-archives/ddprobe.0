Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A17520102C
	for <ddprobe@lists.linux.dev>; Fri, 21 Feb 2025 10:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740135534; cv=none; b=hkDF5aFwuUy5cv7vGp0LYJIS+OV/dj8QP49IbvIadKg/b2enIVqtbZvd1QFlbvuTQN5C6fPnA+4gBN+yBBulxrln47TXQuZ34SsgaotHGE/x3NdwBV65kYPGdHod0f0GbIxBgh5iPj/YeadaYE4+T59R64q+NdHY5N9MTfHtMuk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740135534; c=relaxed/simple;
	bh=VwsCvTe/KlbL7awlBePdvvSHFX93k+8kaqfcIWcxsoM=;
	h=To:Subject:From:Message-Id:Date; b=ZVUHBrCqQmOVxUUw+w+Y61wPXZo/HyzvSpOOkNwhgB5ad2En/R/YcUdCJ5iqPN8eyYrigReEpdKuguvT9NTmB7DyXF+OFDaQCy+CXS9LXgEP6fuFLwgJDLdGaXqsYT7mSRPhbK4Ja3tBoWu91m4Wy3hWv3+pbJpo9CCNvrRWy1M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OqCzNHsN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OqCzNHsN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A584DC4CED6
	for <ddprobe@lists.linux.dev>; Fri, 21 Feb 2025 10:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740135533;
	bh=VwsCvTe/KlbL7awlBePdvvSHFX93k+8kaqfcIWcxsoM=;
	h=To:Subject:From:Date:From;
	b=OqCzNHsN1WV5q7OD/9uqrYbMy3+BNYspG0zvDmor67gm+ffwNjyVBYwShmzxD5fSV
	 RQ4ZOj7bYNKzxSYyrd0K93ewgocg+pC/w57FUMFVBY6iM5YObBB5Vho27JMokJ5M/c
	 k+hCpUYnWJ+8nADETWma44EVR1l273jdmdOD0hpo6m3J7IoPQ+fDTxlAPqo99lJ3f7
	 1dLncoKRL4VFgAzTUsi4QOPWUAiS9RXgoRWDdrfxjXV+JJuX4WA/9WeMdmExWFSLXU
	 cZhwjorsSVz22NsnV3GpgDy21rYW/jFNWKh3rDCjWIBnuTC0W2fl17PduQMlTmMsq9
	 JQt4yjTgCKTbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97924C021AA
	for <ddprobe@lists.linux.dev>; Fri, 21 Feb 2025 10:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174013553361.5579.14993357870495414637.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c4884a240d12746541037dd320793ee106158ed04f17e8ab2ec160518fe7fc4
Date: Fri, 21 Feb 2025 10:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740135533
