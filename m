Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 267B61362
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 05:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749272994; cv=none; b=SxORH8T0zpYebL8rRmTn9Oo9A+dBC+m+uyfwbcFsMdtKPpAGCyePyVVCm8wdlsFuCzyYVrL26gyfcGcK4A4/6jQrr0RJZEnpFDowaT76oJZDyHdOhscHNj9SS/BagftLjCGOUpfD4TfLRYxBVD20EhQ2mNDwGyeLGUjebavjFHk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749272994; c=relaxed/simple;
	bh=ExCUlCt4eds8N0IULps+pJBpKDpbGpvPdfAMO0qDhIo=;
	h=To:Subject:From:Message-Id:Date; b=RIRfz7z255F8pGgG2U4awB03zx6ps8rWTGS8phFSvgwHqrLKbo85N2+6D+UCavVFGc0+Ef0PE6JrHJX+jOKh5xIA/SB97r8yBSZGowb+Jie9T/eoDNtKRmbUcFnyS+6rIHp+848MGwMSPTs5SOcooO1oXrbfvs2/ukrBJbhkBH4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EBlPSSzA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EBlPSSzA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7374C4CEE4
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 05:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749272993;
	bh=ExCUlCt4eds8N0IULps+pJBpKDpbGpvPdfAMO0qDhIo=;
	h=To:Subject:From:Date:From;
	b=EBlPSSzAHt/N0uU90JuYyUXucIOy9oqU2E4WHRr6qhgtMzyfNJxTfUeCEZuWg86QS
	 NaT+hfoXvMpudVu34hxZhnM04gW3uu5HOr2lIasx1lqXRZsMyxf6ijRHlw4+TrlGS7
	 gNmgI8taoSlwCR4v8q2HD+pO4IjqAi8FwuiH34D+NIdQ356e37mxVPQZBWNearThOR
	 uXxgjKOIwQWwv9uKexTlmpn/alyVgJ4Jh8EL8iUXHi1ifSxCMG0am0Ah8NhiCz2yJ6
	 6Xzt3F9XfVFkazFBtGTvHBM6C4cyHzZ5RhS54cwZGP6TWI7dqAmjl32MUvM2U43WcX
	 TWS3m4Ngl+/zA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9486FC5B543
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 05:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174927299357.30853.10929317956708980356.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0127291fb26e6510a4d97dea7c3802d54cc6537314b84176e01220d6be523fbd
Date: Sat, 07 Jun 2025 05:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749272993
