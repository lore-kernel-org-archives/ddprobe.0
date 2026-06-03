Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 393BA22FDE6
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 19:54:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780516474; cv=none; b=MlqNG9klOvtfc2AeFJYKKYsHgEy4vZYrWX4j9moLNxui+JH3RdW1QIvmidUDE2iOmpa2idaP8CuCHREbZz0yIHbPScKiDXifEY2ZK/bvhrhrBySxIePIxwsQeuhzvqISXWr1uDapdmJ39Ih0BRhpqhyxksanxgl5rE6t+7QG9Bg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780516474; c=relaxed/simple;
	bh=90mHIIiUDWovGuDYz+py2ygBGqzWUbA5DPRYaXZyh4k=;
	h=To:Subject:From:Message-Id:Date; b=U0/uC7Jyg7J6azH3+OuVh0PZMfJHikDGjGNzbKGuLLfehgzGZpt7LYmeslFprme+aPR+K6mu4dRhCAf2GICou1x6WLAypNOv+p6do1Pl8s5Tr3nboSbBjSdRP3tNCHCldiAYrrZjhyUzdDYe4dx/0snNltfJqVOdPBGMV+SUOGo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u/QTRfp4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u/QTRfp4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2A3BC2BCB0
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 19:54:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780516473;
	bh=90mHIIiUDWovGuDYz+py2ygBGqzWUbA5DPRYaXZyh4k=;
	h=To:Subject:From:Date:From;
	b=u/QTRfp4fjUpnNBFYqRwMoUsIsCNhm+K8w0r6YtmHTyGzdeTieRKxZx8mLkXkU7Q1
	 G1rtT6AqLQZ9MSajFd3akxU3z8E99CIFYyJN0Lh0hRENGGEhoTm2v+sXFstfbizqqJ
	 YQCUwnb0QSnjWS5k2H2hcynMCa9PELMX7dG9uCMI9qSkqgi9S21uub9P1VRebogp2J
	 exbQ17Pc7CHrot1kEInxCEuzWttA2DtDr+CMnxiq2c0qP6jgtenp2K8uEB022Tx24S
	 RyujUbWD0kar2Pawv4VlyttSKjVebRO13cqyzsveQHTFazA0jndqbyuCRYaY0Xqfho
	 yw3YYMSHbuxlg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9D1ACD6E57
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 19:54:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178051647368.20782.5521552784016574369.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ecfe6d1d40963988ceae88d1da514fa77faacb3e1c09cbb432279a3c7e97da2
Date: Wed, 03 Jun 2026 19:54:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780516473
