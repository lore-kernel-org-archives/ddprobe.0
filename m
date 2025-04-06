Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51353256D
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 04:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743912594; cv=none; b=N1fHKrHuMUwVR4xofCVQu65ubfMqFut4oaDcDnZTx3gY0jWitSqooTzAcFi+WimwXVgRcbZ0/BeNIy8sMzpvNiq/x/aZTgKzx8276ht1qdFVB+nrRR9GZfVNA7nKWB3BV02l0FxMJ7vYO8zGh3ti7I+CVUT+rVPchQn/JOTn9VE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743912594; c=relaxed/simple;
	bh=g3JcMrIqQIlOwgUdzCI3v0ArXLF1XFML6kh0+vTV5cc=;
	h=To:Subject:From:Message-Id:Date; b=jK5S0nCXtOt2KLHLyRG7cdddcR0w8ulw771s4ASDBwedQOailmSLXvk2T15Lcc5LQK/BI5nd16/w4Xqe7Ez4UkegOxk+MIgNMfvtSFns0by+JXx8qJmUJqX/iKHyQnSs+sV50xlPo3I/Q95oMUzCoK03wblmF8gACzDxw4H2vN0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TxwfhMAV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TxwfhMAV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC053C4CEE3
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 04:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743912593;
	bh=g3JcMrIqQIlOwgUdzCI3v0ArXLF1XFML6kh0+vTV5cc=;
	h=To:Subject:From:Date:From;
	b=TxwfhMAVe5Mw89WtUtido1XkTObDB5Anrt3X+TCipoj+mM4tsLUWDWOhiKnWAs2oB
	 Xvdw6snMEvsp0qzXMeAS7P7jCxZ6Iqt8XIA8nbwNJxs0ZvtCsKiJbfa+7MRhkAN3kU
	 YL/252gxzERlCOYkWLQwPC5WUZPIOxGUksOEFsUUbagaw1esXI0cgpamkZfwOugJLK
	 ndszVLxP3JYVqp08f+X7jOhOzzgcWBjeFg1kevdv4j0vitTHfSJt3Fev0XPiSQCi7I
	 Psv2mOBo6437i0+QcAggnUMczcUpfDWl/9rgU/Z/WG38YsUJ/V2SBTaT9ShIoivkg3
	 0z3btGNCfRI/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94E39C3600C
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 04:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174391259358.1743.7119428504748714024.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50bdd87664365c6c1c0d09c265a4f83b82d5f0f632a52c95f5477589e98d1054
Date: Sun, 06 Apr 2025 04:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743912593
