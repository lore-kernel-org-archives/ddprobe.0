Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58435136997
	for <ddprobe@lists.linux.dev>; Mon, 20 May 2024 15:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716217343; cv=none; b=EiTS0XUfSEJ0gSJxkuc7z08YCT7IBdtqDR4fXyGDY8UhYrklBXuTlYATdwoFoTLoSDFWvEkYWOWc292GuzSV11F8D+xgdC+0mkSkCyARpemr9E/k3PIHXpJ/vaiDJrxH4uBUyyQXWBk8gFEQlbETJGtWgJ2tqct0pyqt3VPPfbs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716217343; c=relaxed/simple;
	bh=4If2qHhRSTRg/ENCj0oUC72mWoU5fiXXXuvKznNYXlk=;
	h=To:Subject:From:Message-Id:Date; b=uRoi40nf68RO+y53EAXvzKnSqb3hXDZs03Khs4N0XVmyPkFDBcGgiA196eDBZfHlOg7htqzFZravf/xK3iNKX+LqNg4cCR2tC2K8YAhHxk4hvPjkZEKEWairP/AjNnL5mtH3Jbo+v58kde9MPiCY05uNifVwDfY4/Sp+GZSCAmQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uCORlsr9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uCORlsr9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E11A6C4AF0A
	for <ddprobe@lists.linux.dev>; Mon, 20 May 2024 15:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716217342;
	bh=4If2qHhRSTRg/ENCj0oUC72mWoU5fiXXXuvKznNYXlk=;
	h=To:Subject:From:Date:From;
	b=uCORlsr9A2jM2p7m17RCr4VTxtrtrBv4IF4dn5vcr8oQMDUKYIfVnpQl62xeF93He
	 0zIqZ8BN6qgOJ8dqGEdEAadfqUzhltGTioeIAH6c6TEVc1nK7mNJaxzkaJDUdto01j
	 JgL5RdIr4i9cIRIAELg3XpbS5QGRgtLjAkoIf1LZ+J9kLxEukl4E9Hr/MPHRLn1OKv
	 gNQ/HehaaVeioPc5KNzZGxJhf6vlL+X5A61VxYUMDeTfmhp+sOjO3694TiE38Egcxg
	 acYtQ1YRLfu5Zx+lc8DRAJCPSIFMAqoqxwib2Eb4Fvo2NhEr3FaRYAM404idFgbsNo
	 6/PnisI6jzlmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD7DDC25B79
	for <ddprobe@lists.linux.dev>; Mon, 20 May 2024 15:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171621734282.30218.9040292482152366571.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 71b70d2e507c1c429a66731b6fd531eef2f01c4d0e9fcfe8b20fb915467e07a5
Date: Mon, 20 May 2024 15:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716217342
