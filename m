Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D79B139E
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 00:08:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718669303; cv=none; b=DliizXrggNjZZcX7OcXhh05XYv1cm1DPySdbGMQcpxydOvYDzzTnkhYeOLEcGNUpjbZCOsGy28mDQy8AibiR0n+BxjYCo6avF6na1rlJXA2lXf980BkbrtVir4naa6ZgBqse0eSl8mQKrqIDUYqlUGA8UXENf/oXSLcxUvcP4/o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718669303; c=relaxed/simple;
	bh=NGva6Lg11bv7kzk2LvLlcGB5e5COUH5iqn3jnto41+Q=;
	h=To:Subject:From:Message-Id:Date; b=TB6gm29jzIdMvS0TuX2DU03yX/PxUL02QtUGdjRrj9t0v7oc4HQ0hnWEO65WB+O/2Hh7SxeSCbc1a0kmCHSdZi5fL0DfKUJ7J6h/KZPIjlIOkjX5rhQLfP2Z2cyVN3DR1blwMfnnHlhJMep1N5VRh+x/xz/KGK65MCIkCpsFwb4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q0SsZOae; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q0SsZOae"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7C34C2BD10
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 00:08:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718669302;
	bh=NGva6Lg11bv7kzk2LvLlcGB5e5COUH5iqn3jnto41+Q=;
	h=To:Subject:From:Date:From;
	b=q0SsZOaeFYJfbY21xaIpd2nG3O9TJ+6Ir5CCB9xeQU0aJgnDlAgk20vvwR85Hr3Hu
	 ob9NFly7lFX6uKHm33rwybfw4Kbqc+9vP6VBqDwdQ7l3qiyXkrz6uBknJkmKlNhDiI
	 w9WIUInlrVe5b4WSkWWaY2I6sBex7BNtc6mc4+lL50MhTatQNv+k4bccRNvFBSB05c
	 iBPCGz8wcqXH0Shk8V6zInxcnZFQLoOAbDCcm3XWCQ1p+txJu5vYj7GkGznmz1jCGE
	 DulNRurZ7Dd9SWna7MK7q4YGQxt40xzQAYpREAo/xxzG28SO66OW2KZX42bX9J3kuz
	 9qEJlkIbmcj1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2FA9C27C79
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 00:08:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171866930278.27257.15610703675954267529.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a1d7806251f7db1a8352b30d83259be15b4acf60d270d60d9b1ff84716f2c9db
Date: Tue, 18 Jun 2024 00:08:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718669302
