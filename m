Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E15E1D5ADE
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 02:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763002194; cv=none; b=tuJV15mcRBUwnBSD0cgW68nFe9WV+yrb71rkLaXhk3vWfN9QbjMBRk/DLD8pnySoR4cyJLbx0I9SqgQS9dUfLQw9lTkZYb2oVoMSHBn2XXo7WRBFVjoh1DV74VAq+eDP/epXO55O2i94TA6h73QTKWAAK9v0BA/7+rbP9LiIB98=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763002194; c=relaxed/simple;
	bh=KVmzfOuTzjmqLBtWAxJYI65nJfYM5c4egMZ7rv0vVZk=;
	h=To:Subject:From:Message-Id:Date; b=EjrMMQmSGTRLsFJR3JfpFaOb23E3VWEMZgscVvDpcaOmDf9phC89XEkuH7eIsKM89XdRxwIaN9p2sda/82DeDPu7VFTEUt4NdX3KyIX8E/JWxJpFM5ETYBYrH4BvxpMjz4LCR8KUJ+YynlPWvVdxee207ZSYsUbzIajEbxDRmKA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bARFRu2k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bARFRu2k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DB58C16AAE
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 02:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763002193;
	bh=KVmzfOuTzjmqLBtWAxJYI65nJfYM5c4egMZ7rv0vVZk=;
	h=To:Subject:From:Date:From;
	b=bARFRu2kJ3uHULDqvSoYeJBQwnfePA4GpC6CrUxW3l5GcIdwBGLSYcyatNwRW51CL
	 FGqQUYatkI6Mc66CECycGZuHf3YD4D+Nv7lMGDt0WkDfKN0c2N656vrp/MVD/DSAsK
	 I3VV7abIrNgPEu9oRkRUUAWmy1cQLrA4E0ObNboowFBy19FB5LFpmQ/rc3TTvw7EFD
	 OtrBPblArVonbUArkeqZg30a1MyDfvmgvzKYlZLI/eNnfpmTRcHj1CQ2/M9iD/Ki7U
	 6VKHfCTgOodECojpEd9phGtZ6qm3LXD5ABrm8U+4zALiA88MZ48IQVRLBsZ74jipSy
	 gLMif/RTfL4ww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91190CD4F3C
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 02:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176300219358.23351.9270015209158046782.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d738afac480e810a6712dc2baf954bc0f3f4461312ce5432bd059d72cb1afbfa
Date: Thu, 13 Nov 2025 02:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763002193
