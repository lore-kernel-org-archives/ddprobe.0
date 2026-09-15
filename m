Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66D404C8C69
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 18:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789498234; cv=none; b=al75/eyGu4uNBW4BoDI5E8be/rPQJv3dcrO3EmFE58ZYPRANPCZa+MEVoRwgrBX27JXGerix32lG8GlDPqleCsBWYCtWOWTO7nrarMNpsbmW3QZMvTupQtmcJ96zNX6mnCl6fQ1o74V5z86EvXfYDPI56a5EvoKy3pDNIL/Ay9Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789498234; c=relaxed/simple;
	bh=zoULcmR2T0jNo4Hl39TRiWP6CaEQgHIXDnA7ZeddbVo=;
	h=To:Subject:From:Message-Id:Date; b=XVKGxzPQcmO5R5PMHZ6gx247qISJZzTzKzinvKNUcPtucdwGZ2AqqHzej/sCL8lya/Xfv7I8OBTVXOSqx629+Np4v7ijMmpggEsRpKRnHGRzVPwvyJI5/Pui/Su42c00D/3C0h6msGxTH2MngfpiHPD69kphUq32GtK495j4/X8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lm7WHgoJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lm7WHgoJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0BB6C2BCF5
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 18:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789498233;
	bh=zoULcmR2T0jNo4Hl39TRiWP6CaEQgHIXDnA7ZeddbVo=;
	h=To:Subject:From:Date:From;
	b=lm7WHgoJJieuxvwDQmui/+KH8ryPa0SiKnBK9aNdLlcbr9A5Vud2TJoQpuqOwGSx9
	 DEAKFExHynaYbEjx8IgWKjSs7W2v3BP/gzpwx1TS/PDwi0sPU7R0qC4/16i6414xQw
	 MmKNLaLT1UzoFV/Lat3ZDd/uo2HZ1aO2Wd0n86/sl5hDP3x2tI/gOxsasBr63CbQNE
	 0hg+tt4wjjaAp7MfXmqZjgjVzD3Mt4NdMYa3GPWa2J5RPx1020d31ppyQRB7dKOd2O
	 hPupo4KRbsk+ZeIJ5PO7vTTUUfuUSovEYIBBrZVO03cG2XhFsIrnz1sPG/JTCngNyd
	 DlBpdnvVA8fDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBACDC88E75
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 18:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178949823375.446.1607242944096732369.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 126e6f59f46e31e35fbc4001229eb4d51bd6ecd0acfd571aaebd53f9a7c0e9ca
Date: Tue, 15 Sep 2026 18:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789498233
