Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29D05204F77
	for <ddprobe@lists.linux.dev>; Tue,  3 Dec 2024 22:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733264154; cv=none; b=PV/+JztQJtaZ2pcYXl/0FWEQcy3ACW4MYGB55tdjwvPFp2mKcdZnCSm9WpuhRZqOmgXMMm8UVBxrN2D7SWeBrgvsoBhgpLz3ZXJd3i2g0qhaqLLgIMut7BRJ+wHSZVbO6Wtmk8t/llNMXb8pfjO5VvB531waIF5fd+fsl3W/87k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733264154; c=relaxed/simple;
	bh=UM9uGHvblxrecRRCgrl6P9ZdepfnqqfgqoaoC8tlk/0=;
	h=To:Subject:From:Message-Id:Date; b=OY9Yoh/mZrOarkNP/WV8xv+L3ejwELfzHexUgnTlto5vbc0DWBcYkuHDm8oArezWal99124riMGExkOHpZne4hWxG3IdiXmtDKS3+LJvVjMcPTaWXlXvsggHAcw2hwwmKoIQA7UEwBsb/KXh3e9iVyoHlAS6FT4nb7ZFbBD2VHI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YcREOgXr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YcREOgXr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0E2DC4CEDC
	for <ddprobe@lists.linux.dev>; Tue,  3 Dec 2024 22:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733264153;
	bh=UM9uGHvblxrecRRCgrl6P9ZdepfnqqfgqoaoC8tlk/0=;
	h=To:Subject:From:Date:From;
	b=YcREOgXrdXDXuaw+Xv+PNhWcZ5hoMkmkPsXQOQ1gs2Exkqcv+8U7ET1iUkyAxigjc
	 5SD6Sp+sum7udWetoCiyrtl7pLsPN0vNP/FPA9xm1rD93JIW18uoUcHqmo3oOgmTM3
	 1Zn8kGts0malzpbPf5SH2KJkQm+9ZS1SB68lwW20H4QjqfDsPZnt5ggXXVpsGbJh0M
	 qwJtmbCKT4vWebV1woOIE50B6B7UQ/WcvaSxrycqtftcknhz/Hn56ddq9833LDHOM/
	 gh3Z2qEahoxXZcyN3o4kZpMQfJs4V+tTy3IHCuBz2bmSCYzryBefqMeO2SrFEyjF6Q
	 6yXoedMhw7p/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E908E74AFF
	for <ddprobe@lists.linux.dev>; Tue,  3 Dec 2024 22:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173326415363.23569.1105534073474688554.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 321017e1a114d97315261046e6cdbc7841035fdc9ada6b13d8c20ec556a45905
Date: Tue, 03 Dec 2024 22:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733264153
