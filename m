Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1255E3081AD
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 07:51:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763625114; cv=none; b=HktNVItETAbL1pQJcaCURwDjHgAji42kGvFEfhEmp5llcM3WBFKpfZ7m7vl/VRLsB04LMPiZS5a1sKsXTPFaaF3KckEWdlQsKdAe+LZ0MQup8HfdrBy6k0VPoZNhEENG0hE3vUSoQV5ezlYH+gvBfIlvLVWd5LkMy9q6dQRNsjQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763625114; c=relaxed/simple;
	bh=mkEvSx5w1zIRS+1rwfEz38fm5X3TZQZABosZWQNvBX8=;
	h=To:Subject:From:Message-Id:Date; b=Kunu9nQcq9xMA41xWpwL/RA51njcTypdqlzxAF9I/mNugdV1Bu8FFbgV5Dz/4fwLFTtnlriJiSdaCxO7DLPEPzdSGgAvOIsiUPULCNw+BEbc9TTMlAlTgx8K2nD+f84Sph+shgxJQXfPbvdC7lpavJratoR9fD8Mw2/7fRi2tmg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NPfY/E4R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NPfY/E4R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A21EDC4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 07:51:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763625113;
	bh=mkEvSx5w1zIRS+1rwfEz38fm5X3TZQZABosZWQNvBX8=;
	h=To:Subject:From:Date:From;
	b=NPfY/E4R68cjZOoSFjM/LO00a6YFT+qlN62CAM+uaJlohUuSCJ2GQwaNJJGmwlKs9
	 fusjRsu3wXZ8DfbsWamClAhBeYZBAgE0yFsikDJNnO7g0+po4JByePXthVV0SgfT2f
	 kp/yWiEIcy7gUVNDTLubBwvBQ++1vnlffr54Tdk+vxOVIvC7C/YfKjYmeza2WJ7Yxh
	 4p/LGE0ZGzxDquOPK6CGa8rmuAOeZVV24RjI2zfwUxrJQf3RHWKcz45fdGMVXD/jex
	 HTEkFjsTtOUdBpz2yFfCtUmD9Ps9LHAEWoAhRGnGRJGvx7gjrBCVoRU1wP4ukVU4+6
	 nAw5oLYllMOCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 908CACF8553
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 07:51:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176362511358.20531.3583430988172527471.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d5a8c2b102757938a16c746517395943ffed8b1618d26e7f2ad018d4f087a7e5
Date: Thu, 20 Nov 2025 07:51:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763625113
