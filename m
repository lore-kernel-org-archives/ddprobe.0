Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C81232C859
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 18:33:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768415634; cv=none; b=sSIYKlTzfHGLH8+32Ta6ya0jPFqYIwvi2u2ubFs0t5HNo0kS2ziNh7cNHrRxc/KZA7HLit1LCGTBDZPPOgx83Ezic3NK9FNGMAYg124Tx6mTZOP355F6pd0mAXoiHKCiXcCuY+p12vHd8Xt1y6FaDTU2sfWT1Bi763a2Kg1yp2w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768415634; c=relaxed/simple;
	bh=j5z/Cn6JvreeXgCdAncJDRyiJDZFsPLpO1dhZI+51gM=;
	h=To:Subject:From:Message-Id:Date; b=eOVM1wzXAIvdr5BC/JzWirnsnAYh4H8drHs8mUU54dFkG9neg5PwXzIvlxLaHmC2oFpSo2DNVq3Fqn9ZYZSkYLPysU/sn9vHJ13K3hfaxFMXiyjCneDB4hk7GjLcQk1OPzkaVmdUdkUDiWFTZ9Y/AFSi8v+ik1HRv7Z8voHBGJM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DDwNIL72; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DDwNIL72"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4E2CC19421
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 18:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768415633;
	bh=j5z/Cn6JvreeXgCdAncJDRyiJDZFsPLpO1dhZI+51gM=;
	h=To:Subject:From:Date:From;
	b=DDwNIL72xWvedLsYygTsD6m3mtkIpR67kYYYcidhpXsyKKLPt9Nz342wUr7GZQ2B4
	 WV2XBF1ZnttCulwH5a+jObjh3UTOjsmu22L5RnjCMFgXYWaSbSXcBbrIWJb+FUa9UU
	 O80pWmdNFc9tBjtMk4e+R9jlYSvHWzobb0WzDvw/vDa2Q6YMOHpEsIaiTxOEw2FCjz
	 pPBJqr0b3/GpRXITCDraRnNFGYLd7r1xWI3CaG3rsL7jiMm/agA+pnxoNNdWDgQS8W
	 8cY60xOWVZ/e6Qgm8J5d6upYxwJWZT3j7gYR6GbVugUNXd/mDQA+xmbjZ/cgw/05Em
	 gwRri8/ZiKXZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93403D39005
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 18:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176841563359.22241.12588909006442277620.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e5b0c554390affe91967fd67a6fd48870df6e5da1a58eaf1aa024805fb90cf0f
Date: Wed, 14 Jan 2026 18:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768415633
