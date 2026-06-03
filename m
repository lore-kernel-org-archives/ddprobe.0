Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2945E2609EE
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 14:34:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780497274; cv=none; b=Z7mdzIVaNyEK4OFGKa9KRcpWOOrSJQDuMi+RzjTa950MSgEFUq65zzXqvz05rtdWoalL+C3vTy6p5zKkIHsZePhVfetxgw/8l5ZDUGilPi0UIFvMu8jmFujD/nDVLC27eS3jE/Hm4b0Ddd3sWrv6knQopLbv5juuJxUs/koTWyc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780497274; c=relaxed/simple;
	bh=XeOv3E8GdhNudpXdILG49oa7bJh6f0l/WF+WbJGYu+Y=;
	h=To:Subject:From:Message-Id:Date; b=BWqkBo6wH13EL6D+SAe0q3hZFjIIZ3Bq9Xc65iQRjVQcHFZXw3A8PDA3Sax1Bzldz73VcFcU6/E6E3EvwE19qEUU9xqlZrC9RbAYSP6tVZLllHt7GGyCRdGUlsJ4kiF5fO33zMokRWBBH0mgESpF3EoFDSZgPBOPnHQVgM97W1M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EZfa5uRI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EZfa5uRI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6F39C2BCB0
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 14:34:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780497273;
	bh=XeOv3E8GdhNudpXdILG49oa7bJh6f0l/WF+WbJGYu+Y=;
	h=To:Subject:From:Date:From;
	b=EZfa5uRI9rWK63HdJ9rgqxGR2Q10tv3TiRsV/CuC0mpjr/UcvIAAJuJjk6J00bDq4
	 Y5TI6dE0lMLiQLXQe++gLI2aVaPx76SokP9iimQ4mlx+59s/16GkBgctmTRFj1SXw+
	 VU+DYIoCaCw9f8DT4EeClOh6/AjyjRh0UTbII47+0a52DX08Wb+uVwXDguCMQQuFKz
	 FPXhi/FEzgyOYVVEeQkpN+PbBAAdOCTblDjEa2KHRZEDxjKsPUVl9M872aoCrwbOy6
	 HuK9ElbFNHr2hE4LS6WrrVMokL+yuI73dn1qxYsdR7+iwS9FgKV3KTZoj5cise+L8s
	 jhWczFfvc96BQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC698CD6E57
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 14:34:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178049727369.13207.1582304389331011305.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e4537a1ada2b8c692362e2ecb4307be308596218a0aedd4715b0d4cd0175f03c
Date: Wed, 03 Jun 2026 14:34:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780497273
