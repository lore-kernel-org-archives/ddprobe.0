Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20F1E1DE885
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 11:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771155294; cv=none; b=bWehrmNLYdS3sB656lCip4ik6MUeIZ/yHPq751Cnga3z4fyj/VAOals+H7vnFIF2cU19IaPet4Ory/P8LQEPRhg/zKD/1YnFFd5jQbG0YN8hjI3UpKcOlfhGfsj3CW1MzdqDQYlhRkTUoKylh8NVQ36cnt8l/8LGLZsEr63pkLo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771155294; c=relaxed/simple;
	bh=YOq+TbyeHTE77NBSIG1gpPIjID29TujKOQsK8V95N2Y=;
	h=To:Subject:From:Message-Id:Date; b=fB1JR66u+XCbEOvuOFIrgg364Vl4Dg/hOn+OaNOq7R3qPnJHGNuTH0uMu1n3atBfU03PhtIxkWHAkQl6OfhqROCyZtUdthhMyDMduwPNtN143N0qyTrhjnRF5F9ZAjva9qEPXsvRFKiON2tH+w1ukdoMhK23hdDmdA0wg4QDRvs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OQU96gW+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OQU96gW+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4AFAC4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 11:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771155293;
	bh=YOq+TbyeHTE77NBSIG1gpPIjID29TujKOQsK8V95N2Y=;
	h=To:Subject:From:Date:From;
	b=OQU96gW+WdD/1ffot1e32HxdzjOUyf7XmO/coH7qE1iCa/dTNLoFzcoEme3gi6N1X
	 estSSPZaNoS93tegxhQd0aiKOmCuYOtGpblc4cRwbU7GH0ApGhMri/lEnTbyNnrneH
	 dzI6b6njwuLtthItJKbI+abQsyArQLnx4hkgQPsM+svZDrsKsZOqU1cskvmaxM6+DV
	 myDqNggqf0Slg3gDUzA5MkCfe37J0S/Wd38TnP7/vul5sow9R02YdFECiJWUDtJeYt
	 uTY4oTR+QzPG+FKJy7uxzhC3YuNqti8XBubtNmtTKiLitbyVcf3E4PiF340N/SSnaY
	 ex7TGc9q+sqAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DFB7EF584C
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 11:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177115529360.27018.7720162590144888533.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 25c46dc757c0da4be2b480717b9e414b2a75474c32c4ff32a1c2e62111cbd3b1
Date: Sun, 15 Feb 2026 11:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771155293
