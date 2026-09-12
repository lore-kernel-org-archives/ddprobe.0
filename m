Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A7CBD34D4E9
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 02:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789181434; cv=none; b=EMLXaeI+LsDqV5HoUmT4fNAEmS0t4SgiYJiAR+cvIQ5CVwjNeYjH30ussijmdGWIIVq1LR2uNz6Yfd0qWuXiJeU43eW6cXyVtrUWhwacTbPsg7jt6eb1vg/JJhUrWRQ96wnKN2pQHm+H4lVb4WCNk51WO+nEPtu8zlAiyeSMOy0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789181434; c=relaxed/simple;
	bh=xIFImsplz0WmBtBnpcweRQ6QihqCoZwcND+scoyJbAs=;
	h=To:Subject:From:Message-Id:Date; b=fR7Wy0zcSgp198WFGKTcrdEkdt42dlpUb1L5X8SiUoBckqH3P4aDWL+wE3Oe3ARbfm2S0tlfYkSTiStEQ1445CpPRWyQtJZQcjHj6QqHNFk2/LkUMh5WiNLBXqAXZsYdvonCnvdXplxsHOgfnJVzbsOlaZzAi99FOahU7FH0Qe0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FwjJfmkx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FwjJfmkx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D192BC2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 02:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789181433;
	bh=xIFImsplz0WmBtBnpcweRQ6QihqCoZwcND+scoyJbAs=;
	h=To:Subject:From:Date:From;
	b=FwjJfmkxMDxKHHFAjDrbOG0UiF5kPT548GGv/WrvDjSlk3HWH7DBf2viXOATMNZ9b
	 idxAPlgOPyg+a0jXvf3F9rDTLEu5oyQDzeazkMQ9JK74JgdgaR+APZPiu5rY5Kd++m
	 umdlJVxJziY6BrD/8SOQ96BhYC2vojqmhUO/CDVjWeMUCmB5pqETnGGKxuLwWgsUWB
	 bpZXbD9FfZyCeIcKmcriqHYwDFtmXa7pn1wdrwygawr8Mha3ayEqnm9dB01Z1j2XRd
	 K2MQhFGre8gk33/pL0ASgKHQKEw8sUXTxTqrBdDhiuChEC6PMWMOUxe2rVsA43mkuf
	 /Q/GylgIiKjtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A99DAC88E45
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 02:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178918143368.15219.15475151749526181417.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b93b2fb47de9e41ae151e8d716f994673e000c306948fe1e8464cc9768f9320
Date: Sat, 12 Sep 2026 02:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789181433
