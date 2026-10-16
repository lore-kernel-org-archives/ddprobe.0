Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 451E747125F
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 10:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792147834; cv=none; b=b95yuVfMn2v/AmYL7FDyyuxtJZDVlY1V8znJurf335mrPM7tezgoh7t+gZ/+04T5mYvWZ36y0FzyAIyaXhbyZ4aOxHO3CEdZhtxr7zcPEUhvUsd7islhQtbFUB/suJmzcJMvx+mw0PPxA4JusnrfjVOcQpRB/FegAVicY0EIick=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792147834; c=relaxed/simple;
	bh=lVzA0ZeVQGrCI0YynkaZd+gAhTs4dvMq0AY6cPPgAAM=;
	h=To:Subject:From:Message-Id:Date; b=G4F6S/ovi1hJYYFeiOSGcNzcEU9xsd88x3AU9t8MzBE/OXN5EdC3aX+ReQ/hn+2SsygJvaWNZ77UsfGI1eyCJxGMoArUCJ+q/Uk5eh704jIBYP+OMnqpe/rOUvsIYVWX2batdKdXHgT7wVW465lavrAU0RnSmwOaCbGAh9+EVxw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UA3pvrvo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UA3pvrvo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDA25C2BCF4
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 10:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792147833;
	bh=lVzA0ZeVQGrCI0YynkaZd+gAhTs4dvMq0AY6cPPgAAM=;
	h=To:Subject:From:Date:From;
	b=UA3pvrvodWDTeZXJ2wnETGNGzo1tYkfKzhH1aFbhxUi8sDRzJix1j9LePIz5whO7r
	 Rrrb0PAPiqAYjDlcQRc8IZWXe6jHahuVYRH54sSV+BCvY/4VrIpMuo+OP7zlryTXQf
	 ZpGBk9mPkP8K/X3ifSFEzcqTwdX0TfdVZew6U2Tfdi/1RbUVhhDu1onObA75Yo0Zpt
	 3YVYLJ5hLZTYm2OiArq/J0yI2hZ4CIljR1LuvINc3pXIYSyIB7SQmLW8ozjLEEq5t8
	 hJUuKqgSraGMzS/1YBH7Iyn1LlDb3m16+8GIf4tlG6P9X/TcNckvAImOpmBpRXXJE3
	 w+bUHBhJ8MaUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9487CC6B38
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 10:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179214783368.21395.5299441332738415047.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b8635c40450bb754bbba2664009a9df2a6074c9a231e548523a67fe73b6e2ff2
Date: Fri, 16 Oct 2026 10:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792147833
