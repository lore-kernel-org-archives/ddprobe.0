Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 462FCA59
	for <ddprobe@lists.linux.dev>; Tue,  7 May 2024 07:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715067743; cv=none; b=eUbyf3q+za87MZ7uVA3DR6i/RfkK7KXm74o+J6eWhOX+MFoThqktn5ob9i57wRvwkKbNQd82FkCVvhupJL2Olpdq2c/dJ1ee+jqqPDmjQa7cAeIkz8N4uvn5Tu73VTCNpBcEbnTX3FvC6hXNb1lbjpH0tRcFsLRnVpt0InKVMGU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715067743; c=relaxed/simple;
	bh=1hEHbGrTdsoL03/vGJS/f7aH0SHynalEDmzYfrBsjEo=;
	h=To:Subject:From:Message-Id:Date; b=N5mgsgYAI6f+DRPJx9JX79lDJPRikpWr0yleQobg94wdK/PEkrVFQAJafqe+85y+wYSQRJqRAlv4cDwkL4VPK+zvq74VTOmJ6lreF1CDthDOqL6TUKpbivS2tOYJHMxA1hqsEJTFVmhzcRfQB2wKWiGljWXaafdOiPNaUrZk+0E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BdOwCffJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BdOwCffJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD919C2BBFC
	for <ddprobe@lists.linux.dev>; Tue,  7 May 2024 07:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715067742;
	bh=1hEHbGrTdsoL03/vGJS/f7aH0SHynalEDmzYfrBsjEo=;
	h=To:Subject:From:Date:From;
	b=BdOwCffJVZZbhB3WUKLep1OeZ5/eukKz17ye1iI/S+mMWkt0fWmO7Knyp9NCq4asD
	 of0VoqQy9ZERA52NI5YsiufKG56j82io4Zr18RjOqsf2SiBzNABxi68DIEMxgi5BaY
	 GytmrZeQfuXwEq+1pLRKm4bouWGRQhsTooywFiuEY4O8tuAzGZm7Ea8oQOehwGsxi5
	 YTdqoOJl30dCfJQhn3A4L1eRzj+FBMnXAZu89TlXelSfiqV2SCLB/jiViQDxEJbU2h
	 Uz7wxStxyVnoAcfnIOHSaDb8NSAtng7uIvcss9x7TBDKHo8ucaao9Sfxji/9IzxTwm
	 UsWmGE+l8/95w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C93EDC10F1A
	for <ddprobe@lists.linux.dev>; Tue,  7 May 2024 07:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171506774281.13018.16258237237821442224.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c8030a77c707a1ed6d555b1e07f8cbc1ffaf1f27254338f38d76cc8b0b8d2b3
Date: Tue, 07 May 2024 07:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715067742
