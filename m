Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F78140DFB4
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 02:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778122054; cv=none; b=geD3fYfyUMkGjZgX/BzAYZOv73oyVli4FQMsShMeKFgo4gy+m7ikyJSxnARXJvrgoSzJ4O7BQtF7WtVWH2BavADY9IaMahZF4BdvMQ5zL2grhGMRpzlYyL/wlVGu8lvn/Wm/4keiOxQ2tDUbG2Zvvm9Web+Mqjt0SfoI7oVE+Ow=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778122054; c=relaxed/simple;
	bh=iuT7hNZjAKpRKSdU+dnh03F+j41PfelPTquCtCF+d7Y=;
	h=To:Subject:From:Message-Id:Date; b=hOIAalcm1v6rfDYaFuu3c5k7TdDKFLf3VWiIWLXtamOz0jc3zJy4mHprN4SN1bXHxhKc9J0P/HgPppwE89LNxhpBKVni9pKK1DyCVIPSNFd2L3iFMFKzWe/gEMHXyHUN2SFURNX6Dn8HO+nyPR6fQWzgPBcglwFss2rd/UaUcLg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m3RP+4J0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m3RP+4J0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C04ECC2BCB8
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 02:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778122053;
	bh=iuT7hNZjAKpRKSdU+dnh03F+j41PfelPTquCtCF+d7Y=;
	h=To:Subject:From:Date:From;
	b=m3RP+4J0UOvujUrSj4gdCr16bF2a8+Q50raXPDLQDXtBDgROPzIm94iJv6WuKTFmB
	 3zr2Xsry049HqrkKMtqKoCdtDnKAGCtlNznDSV+PMtO+SAi6ztHkNMKQn4YqJ2ulV/
	 c+eNsFvoWaOLXmIbziXCV/Dw9bWDTK7u1eGQK+4WiJEW3oileJJWR3RGNFn8TF4tD9
	 sPwv40BZfRGUBMMnGgPzGbkUTMRuv64vZ16g6CQrAsnEHxAaYmR34rCobnz9COSXc7
	 ml+1v2K7zeHzwuMZaf80CsxYjB5ZOWPjzBau1x4klDyc2hIu/9i/aFKFcIfflNOkNi
	 xjOiMlcNCgxGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE9CFCD342C
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 02:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177812205369.27022.6294151268310228300.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cbf4003e6c1acb6b3be43e4b068f5b072d002151f73ac6f3657fd4f5ee45e974
Date: Thu, 07 May 2026 02:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778122053
