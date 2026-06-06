Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 417D645039
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 07:34:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780731274; cv=none; b=B3Fx/1SL8Rz33Ty8MJsxH4suRMFsl21pLaXjcEL6Mkz3QUGuE8BtzIqPI4xz2jrSG0Iq6URs9sqLu4Jlg/o2fKinZNJbtOFLWKZb1qoqSBF+lr4mD2c4dl7J8teMg1EOO5NuMczPdA2nYkcvhKTzxzsoIBAiMuc252i9qSEFgKU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780731274; c=relaxed/simple;
	bh=O245H9nPdA0qlUR8gep1kAhkW3juPb2xuc2yHnxKMuA=;
	h=To:Subject:From:Message-Id:Date; b=Y3j7FSWTLOebTOqGAiOaJXzzPQjyAg1VjJDrdR4VPW2Jj0IJQq/P4IxFPpas69IsCbYpMHNR3KzzK8zj+/oCD995da/xKYC3ZZtzPYOAc35vQsazL9IHwoucaRskANJy6Wb13dQcAhCkdpwbDj8MgUNL5TlrlsriktjiLcwamxo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RNMSBjhc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RNMSBjhc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD6D9C2BCB0
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 07:34:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780731273;
	bh=O245H9nPdA0qlUR8gep1kAhkW3juPb2xuc2yHnxKMuA=;
	h=To:Subject:From:Date:From;
	b=RNMSBjhc+MVSBtFw8XjEo+7h6SMiEYyuzaxXHT9THhVPk+K36XdyJ2U0ptgUrVDTl
	 SaZpEq4r/PinQZ4rQrNksbKzkt+7ahTGxG6+C31pVRMZ9lcnba/F1yyH3MqwtuaoSG
	 vXSumjFeliArpGpqk49dXwRnfvnMUx/ACS2bJSEtgyO4EIcmFY2nMr9PYvwiANA8ZZ
	 Q47oVuCl/q53azpa4OXdt7P/sTIN+sDsV35mHVR5CsjwMDI06zQZOMqIs8K/C5gg05
	 p1pMSpuHSUn06B7JIsrS8qkPlCmrf5k+pFjQSMNorvjrFB2Ebox+LKYNsyR9eOtZ/I
	 hLucu68LvnTdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFD24CD8C8B
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 07:34:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178073127368.32150.14637109861121383713.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 796828508bc52ba5e43bc486c0cbd4582a2898bfc58f8ca8db4890bd6fbcc821
Date: Sat, 06 Jun 2026 07:34:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780731273
