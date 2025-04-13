Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B047AD51
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 08:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744532394; cv=none; b=VP9hvbRYZ+t2SG1XdjQZOnDNY0R6LNU7eW2a1WSumNr00V7ONpTfCQzCvA5fHwXubQF4ymb7VYaJ4ZY9yBLl4m5EOI9CgZjY2C7GV/hBFBKWy1zq+PqHUiC0kaDtKRvCYrRDwh9MHPyddZ4cmNLUrQeE8AJVG2Nno40HE65Og48=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744532394; c=relaxed/simple;
	bh=QrHremzf8EJnQMuvnqpG69oFEICDaMblgxUqIDT7Vc4=;
	h=To:Subject:From:Message-Id:Date; b=JGi1Hsfc3BkP/EGG/9gofQqi5cqxOTnd7DaiyBSioUJ8XQDtADGyEYZwNToX74oGOHW//qJmNiBdJ2VFTxOGpjIxPZSWzyCgbMbspRP2PvWQ36QgoEGO6Gqe/c/aWVNvfvmLjZQe0SboySPanlorBKuLuF55O0W7GjpCx047IFo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aDOSjQ2l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aDOSjQ2l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3B0FC4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 08:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744532393;
	bh=QrHremzf8EJnQMuvnqpG69oFEICDaMblgxUqIDT7Vc4=;
	h=To:Subject:From:Date:From;
	b=aDOSjQ2lQnBUPgp6fs+Bm3C92LEW/Xt3tEIVpQj7CLGHhhSEyWkCtpvFFrRgmntZK
	 UjL08sEt5CLaMTiEgpWPQUw7BAi8F5Np+orn/YVt0S0LfCPcFAAmdEzLdK8vvf0oW9
	 DQc8F3iT4JUU09BeaTNecm25Q5yzsux52gpwGZnZaArzxvNldgk3SJuOqqjtguO2bM
	 F5h3RY5EEMHhDjnIAZCawpUODZcA7y+U6SnRt1lQnIw+23yWox22TVVJq7KFO0Fok+
	 a9OFVT6gmvkF0ojThxUvmggHEynFfyjWftUgoi5MXNgM9NDKAw6JIOD3tL2WhRrxOJ
	 pRM3kw4AN02kA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A060BC3601E
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 08:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174453239362.31423.6595526008183713646.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c87e2f302ff2d75b976ef781436c1df1b10b03e53f30a832177ee9c780bf638
Date: Sun, 13 Apr 2025 08:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744532393
