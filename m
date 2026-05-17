Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A46A1632E7
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 05:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778997034; cv=none; b=ZNLUbq5sEgQlF4O+ATd7FZ9ZqFsHUFeURS6lade6ARuNZuY8gi3p5p8t0iHyIqIlo6t8Lx/WOvFtlPrSfnsBQ0qW/CxAqKGdEX0s0CYd4cGhO2/8UQ9yr4lTEefCuxmxvAEFlIyEJS3JGWijvq/OWJRb/E5KblU//x6hMX+3Ias=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778997034; c=relaxed/simple;
	bh=i3ZVIjj2ZwGDFV9/qr/rmKbOoMX7BFZmc0W9vKhJAJg=;
	h=To:Subject:From:Message-Id:Date; b=SKp7u5g5KGj3izYWHzQ192jNo208VqtVF95WKGKo1H0OaD33PjwQW/FUV5TlFWyTSx7rJT6lRHN/G65CDix4tbT5qTEwQI1t9iaghiygrSSwX1paPiL+jxm9x/x4QrYaJ+UC1BY+S8IQmiy1v/s8mDUWeJviZyHjkMWzFN5pHNc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pvDtcFHv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pvDtcFHv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9EC8C2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 05:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778997033;
	bh=i3ZVIjj2ZwGDFV9/qr/rmKbOoMX7BFZmc0W9vKhJAJg=;
	h=To:Subject:From:Date:From;
	b=pvDtcFHvHi4geTJHXvWeMF9pb318IF1RRwmkJr3M31aIenewGxpFjTQbAwaVx5X7W
	 N7cDFq5hkMazOFkLHUPMV9xmRELfd4sjTEdmnt3cF7RspbAZ5lflvPRbBh/Wkjb3OJ
	 l7EFz1HN8zKBfg77ZM4/H+4nRQIaFBLE6KkHZsbxtPgFR72MF4aHPdpPcM4xwo2mRD
	 e6YtHGmWHkmb2VoBWuMURkcu2+AM9nq7qm+Qreiuifd0dkgRD7q8FujV9AwL3nNujF
	 Uemfi8zyKyNhRdR0bvaHovDZrta4O2Z/eZINZsUdcowuB2LNTAEm6bJeyicdgcZgul
	 94FdeUxkqgtmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA726CD37AC
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 05:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177899703369.27251.12851633283234448213.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 28569ed6e303209a10e7949807c95c0e86cb13d373733eeb00d7c478c0ff82d9
Date: Sun, 17 May 2026 05:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778997033
