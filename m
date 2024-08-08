Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FB7B12E1EE
	for <ddprobe@lists.linux.dev>; Thu,  8 Aug 2024 22:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723156554; cv=none; b=Iw9y6KoG7VSQgRvULKXJOBOR6dVZkNCj/GMNdlrcxdzKUa3G6bVpOB9TJ7VBzwsYRuIl+MND3U9Xabp8DP9wsPXmlGoRuTOCT7zyn9LwO2B5fQJ3PZZf2C9lsABpdEZOahyVnfRNRTlCoSHa3jxCN4P75MjEV0/yFBMFSZIT4eQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723156554; c=relaxed/simple;
	bh=ARVnXA71p0zf/5saWBWFjFxUHbMfzhzEHqQ1b1rw2Xw=;
	h=To:Subject:From:Message-Id:Date; b=WmudvqaDN4muGvNA9pvK8uFlnSO19xmASTDdJceVhlHRCGAVDPMydwYWYDYd3OUMAHEvwC/Z9lNO8xA5PTQSxnYuNlsV2e9IDVLSbnqGTx5QjiUC0eGzIYamjZxTEXqlKGcK0tPouYVTAYKtBDcdNYgYa3N9/JK4Z10+Xcf+T0I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KmgLUx8o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KmgLUx8o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A829DC32782
	for <ddprobe@lists.linux.dev>; Thu,  8 Aug 2024 22:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723156553;
	bh=ARVnXA71p0zf/5saWBWFjFxUHbMfzhzEHqQ1b1rw2Xw=;
	h=To:Subject:From:Date:From;
	b=KmgLUx8oFCVEQtKu6HgqT/Yon7xb03x+A6HFZWliXdUC7H/2yW0sVIuKjs/6fy+vL
	 RimTZ7VOiN8ksGNOdJGS/gxLa4UWzDRRrDLDnQSGZ/C8ay+n7EHlIFAJPQcsSIZOFI
	 xacjY46uVF+PQkxw7uG8vaiXUekIvWFwgsV5A8ABleZmPWTexu+MuwPKG9dWtz3juA
	 /IXWpHAg6eOfyufwSiwd2aZXLnipvTsVijly9MjE5b1/Dl1Xtoimgd6Xf9Lxt2G7y5
	 8fxedA2c2VagZKJ+g1uGrFNYEugrCK/80wUAeBRVvthyRZNs7d7eK1EkG/Ql1aserC
	 Zhx5ps5TOChqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99FFDC3DA4A
	for <ddprobe@lists.linux.dev>; Thu,  8 Aug 2024 22:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172315655362.3635.6590027510414717096.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb6d40b600cab46a4e0bc577df45bedd9fd1837efa84b7ccb651b6aa500e27f8
Date: Thu, 08 Aug 2024 22:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723156553
