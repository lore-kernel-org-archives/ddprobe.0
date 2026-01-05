Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D63C3C07A
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 07:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767596634; cv=none; b=lN6iH/pDxCbdUSlGv0aBR64ns3d6pARiybyR2S3tBFtLPytz/Ql22r95ZNWmxu2dtgPHWI2GIRDygG6PurSF+k9HeCcmfVJKNc3nA2GgfU4lJPO/bwP9I4Z2HSA95gjnjyCMWnRqhy3Wc9dkRsSUcCt9r6WGOMJt5JYKK7oK4Jc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767596634; c=relaxed/simple;
	bh=ezpa5oMxMHehel3mDunKIGmK0+jLq86l5/aVNq/qMQg=;
	h=To:Subject:From:Message-Id:Date; b=ibaenli2F6zDCr7+kXAt6X2G+t2YYGH3FFsUfwUNEPJIBnyhGSqimViw2R2OL4Rpoxj5kr/4sBbPK+MRSlSe0+j3pV5DlX1g27yaXUCSALmOTaKqYtZSVYBzQCxoAzAOQBNO10i93sNtFMU3ckw3aH/1Tiepn39ZbxGeDrthBqo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=awKpHZUk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="awKpHZUk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3C6BC116D0
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 07:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767596633;
	bh=ezpa5oMxMHehel3mDunKIGmK0+jLq86l5/aVNq/qMQg=;
	h=To:Subject:From:Date:From;
	b=awKpHZUkLN43PLumoxAj+Nwsmtd9gCynbj9wscrsMcpoT8FrouFx9MNWP89rmzlaK
	 MoIIzbL84/2+ursukAM3Hn5Lt+29/ELFYkVR1+wZpSMw/e42O1kMuskm/XLL1AQeOb
	 FCMNMYxIrxJHPsn2C0Px1j5ECnJr71pY075CSUrSg/k8r7lTTcHnN+rzdh3hi2hAM0
	 M55IgxezOEj5BmtdzWMmT5ooG4jwRk6rlcvYxuPsRY1gIBzyirYysSQuQitTkH0UPO
	 CzdgHrIYnCRCeNoA0OzppapfH5UknllXGmEdXHzKNtz6d7WCI1szo4IwQQGvFN/AXz
	 62+KpNzgdxsog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0F33C2A072
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 07:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176759663362.18663.12014842088290892.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4eee57082343ecc3a03a2d5d579e01f4bcecb3938f34f59e7d808b2894f9131
Date: Mon, 05 Jan 2026 07:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767596633
