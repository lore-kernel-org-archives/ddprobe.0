Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32B9D14F125
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 07:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764140574; cv=none; b=XBAMYm0y4fLGc4uRxaWEY2JbudjIZ52PTGnP5rbd67sVBIsrOGFwTEU0AFFaoYZhceen/LkSg2WexdescJHzVN59cHrvIONmFAThJp3/Q2jDF+kKfUuXVmQqO7/ZtRz6FHdJpGfzgGe4WTMG/5Ybio2sq3vBMTOs5UyRrjOZUF8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764140574; c=relaxed/simple;
	bh=muRsWiRQ9TfU3EiLFIIzaiuoQvNBt2qLdi7dCCVHM6c=;
	h=To:Subject:From:Message-Id:Date; b=nCCIRn58dPEcziLB0/zIDhH2p1HuwQdmtWjXZkOjprkOum4WcKL1s/vMUdtAo02J7Evki9wadLy6bHTgT6qTKlM+tpFdEGFTRE/P3jcGw8SYAEI8/yVFoozuNhCUEsgZzkSIOXnwLWii0/dmw4dmeeE/VNdRF0x1xSNbAQEEmWQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FtC13E9b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FtC13E9b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2058C113D0
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 07:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764140573;
	bh=muRsWiRQ9TfU3EiLFIIzaiuoQvNBt2qLdi7dCCVHM6c=;
	h=To:Subject:From:Date:From;
	b=FtC13E9bHfiCkEeVPptG6sELPMdVIoADInK6tu968ZGPA17GEWE38CKtR3gXWrE5H
	 DsRMtzygVOUr2pwJ8Z6d+2dg2tT2jAGKIkVyuDUnTPuo4Y/OdEHL2HvLUARKvBKIBI
	 S9a9P/w+IGbiLmp0vKtGoNHYkUQBXLQftbQJ0BiCcMSmatRg0tvISP8Vnv3QlhKW7N
	 OlVfg/rfw11ISaVhctiLrXHpRiM4JC26kN82kLDbKNkegPry9JihLcZkQDzkD7xo/0
	 ZLRxJL8JWpmvdLiUE1DFG2qdLEoJfP7iFGLUQI3bFSy7aHsfdNYcTjci0cJy1oP2Uk
	 E6v4mmzJ9isyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A9B4D0EE29
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 07:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176414057361.27858.16297604961051444795.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc96a5a37169edd7dead5d20a9b86b4fcd4ce5691f1f910d010349d7d9f7043e
Date: Wed, 26 Nov 2025 07:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764140573
