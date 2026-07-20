Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CFC83E120C
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 16:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784563714; cv=none; b=KWvDD4iFGkeEuJM4ZNeCoApzke2e+RVtFAJZakBM8gRcZZnDPQeLxncgqwKxRbKBcc462Y1rFuUZQZML4SdDc2E5AJp6oMIqWEPO6ysjHxjNCS+colSzWQh2doTVVBelPQwN7ZKMs9aZMGNg3z8FUtQC0Mo3eccteTgAE/7vTEo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784563714; c=relaxed/simple;
	bh=/1i6NcvBdjUmi395tk3aIMBClSIzLSLp5/mTA5IwgHQ=;
	h=To:Subject:From:Message-Id:Date; b=BYelZhlXwNDEx08/pifrbQAWLnxe0fi6EW0dpBoREWXMI8yUZhOnMQ06RPHLT9pwTewrHxLeRovMNyAzoPeZkjX1xWzaroXjlNKVC40INLwjVYMh6y0bNtEavD0HI/acYV7gYYLDCcU3jELddirUHmd0SNfxyDiEzZwSr6iblx4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NwQBLiex; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NwQBLiex"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFE3CC2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 16:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784563713;
	bh=/1i6NcvBdjUmi395tk3aIMBClSIzLSLp5/mTA5IwgHQ=;
	h=To:Subject:From:Date:From;
	b=NwQBLiexO81RVpTHTtDXhnnW/koiZ4NRh7xbplBj9bySgR7cwC51S7IN/nA069XEH
	 WK7nDviFCJzx2LL+Q1L07aUeIGum27Rlv753CgfBLb+NIM9txrVXL7T0bXSIGIOQda
	 AcRZVwKonZnc4LU2g/QBxmDSq48CW3pf/eoV2i8bn/ZDgshSF7bjQNlk+Hqt0QRXS5
	 l0Bbgwd2bsUEBGLPB9Iqqt+cvakCs/ZfkiUnqvN3tP7N3vZgmVXAHBAaxgclN57GeP
	 hbUbFNUtFqQR/vWHxcq9+0K9OUz9B2M2/oFgmqS8/qoBFQZOrJDlRMHS5p0wNsyzWM
	 WkXoBQ93wdzCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC47DC44515
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 16:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178456371369.3251.3564399939388612929.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e137d103360df5a57c44203d37ef6eb0f7f450a98b6bbf4a2947bd3e1bdc6a0
Date: Mon, 20 Jul 2026 16:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784563713
