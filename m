Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28B5E246799
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 18:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749579594; cv=none; b=XZMDFcRGQT/A58Y6rX76TL+2Bkkzo1cJ1s42x4F0lhL4T5dosF82PrhMQpJEUdtvGXefDElz/ux3oPFIC5sJ0IwklOx34axIx0AuEJG6O/Xa7RH/Ma3IzNWcpXLmj7w5DpWO//qpGFKoMe72VeDXSqvIFGCpt1RZXcAnOz1gLzs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749579594; c=relaxed/simple;
	bh=QZpc9L1H70l3754AwWYA2dboBBsadywqRxsxipsjVCA=;
	h=To:Subject:From:Message-Id:Date; b=AZyJkpqCrEiGk4TdYkYsTZyRF2siwJk0mTectqIzibwHiOXV7pInnwb2WOB7sb7Vw32ueLMv+G4ffteu2E+MYoiIKfEk4oMT8+ezaHmdEnov1QNTqRr51pRa5NXGkxnYnmpgPwuNG4UDlVzN3eo5zCAko+MLJxAYJHMfiveZ28Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OLhsNm0J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OLhsNm0J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1177C4CEED
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 18:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749579593;
	bh=QZpc9L1H70l3754AwWYA2dboBBsadywqRxsxipsjVCA=;
	h=To:Subject:From:Date:From;
	b=OLhsNm0JPAHLM6z4tdngiZpN2kWpsqQPtxJkmPXrnUyRyZm2czh5So2h6m928Q75p
	 4iXmaipFiiczGswHsMijNGimlTvgIfa1uh/75C0fYJUPyUiOYj3uU5WcinQrCWWXUc
	 RweoIUrxBKgCo9jcHsCMQX59U1ypDpgyP2596AHV/Wb2J6Vadi1QZxSDCLvNev6URQ
	 WKWky8ZlwPQnbZXv1gyuv4z+eIIBL2NCfZHU4gkB9TkSIb9SYh5WzaBOjxUABhOZIZ
	 pNxEf+crACveAMO8E+dIhTA+4N50p8p5/5H3DUTQ3mIPQdrFfMVYOrfz18xj5nNrE+
	 7p5D7mt4Z54sg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9053AC5B552
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 18:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174957959358.27397.13423682206733508758.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ded73cb8a3ef954b53862a2d258db3ef6651a8271fa79a30490b5686df84905
Date: Tue, 10 Jun 2025 18:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749579593
