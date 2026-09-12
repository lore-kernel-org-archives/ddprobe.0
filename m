Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 463C6386C22
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 23:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789256434; cv=none; b=FOGaDIuZgEIwzOh/GhCaktCVgQb0rnZsSx8JhsqpKSwqivRDcePDeTahlv12ork1PqD2iQ2vIcFtcLf/R8o1LEUqggn+t4PlZKvKmybY34gD630MD7nsEVGDhDWHD99iqbKRgoXalT0h9Hvlskje2RgKZxMA4eeJT8JwXVBjeQ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789256434; c=relaxed/simple;
	bh=gsdgbaQEzSEfNYiOBQAV6e/XPaxNoHR6GQsDH2sJVNc=;
	h=To:Subject:From:Message-Id:Date; b=FQ10fMJ0IWxx9eMYMs54+DbRYVhXP75eVzhEZNlN9MgXlSbe42iILBjBxOHvwg+qkMSkWp96VuaMdRB9FH0AelvGhhsm/yP6eN3JP3jMpa+FPY1fR5ZfgbKSH7KgU++wxIdK6uTWVu49UTDIYY/1WTZf01+tGofjZXZ3kOaUNI0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KlC2/vQE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KlC2/vQE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2879C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 23:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789256433;
	bh=gsdgbaQEzSEfNYiOBQAV6e/XPaxNoHR6GQsDH2sJVNc=;
	h=To:Subject:From:Date:From;
	b=KlC2/vQE1GX8WwxoL2QJISfsDKetuBtzOPTJ7rAadXv8B9G76MAtVgP1xv70ox3Gm
	 9Qebl7eXTqBG+BZ3CUrU4WK9Ojj7+Jty+mSjAKBhOFOlwsBd7E3/vxCLo53Yrb96gZ
	 GlBbWmVtl9qcvXNyN9Jsx/YXBOPJ/afKnx0IhrF0z47VS1znr0eORuI36TgotpBz95
	 yufVzzbJNksiDttuLYo1DHhBsAAiVT+z/PGk4+swcCjg0oSZOokGi1DGqncdYFkafH
	 VBcxGD4fMJsUa/NbVY8vasqailwtfGNEopZ2K3jD5tmCLSiu3sPwkG5oMe73F0sgaK
	 3Bm2Kv+RX2MNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9E54C88E56
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 23:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178925643368.10019.11418886505934765252.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a433446af8dbdd6aa16ae8841c4192ef8956d9411250787d358201f77dbfaa82
Date: Sat, 12 Sep 2026 23:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789256433
