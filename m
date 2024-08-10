Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26191157E61
	for <ddprobe@lists.linux.dev>; Sat, 10 Aug 2024 12:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723294554; cv=none; b=Zb8TIp6xUKoydP1FkPfDimy5RQ1FKxUCgIMZghmEDasUszHWkMCafw/+aV0nuq/joIhNcAntBzPCIbKJYzGy9fso7G9JXEEjITduFRMhETUTAuw2ZDACGsBy3lN8pF+koVQHfSEyrxxtBvE2P+LfFOy6RDzeJEnG+mLTFIo1aaY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723294554; c=relaxed/simple;
	bh=OKBX95gdAYv5ZNSxtBX8pPhN5oxfk59MWYYgSt7zBIs=;
	h=To:Subject:From:Message-Id:Date; b=Q91GoBSD/VWHXZFgHnAU+etCtI3ykKDTncEISSlL/yzp8UHo9Wl1K/tQYbK6XJFfwgfnvRfm54U58xx280UWutx2z6eMwX3kOSnVz/JguFAVHfoAqCCu2JjFpKMDj/ZD6dVrTXvbILcavS985n3ekugmz9ljBHM+6EFSikJYgYc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hoDDuwFx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hoDDuwFx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6708C32781
	for <ddprobe@lists.linux.dev>; Sat, 10 Aug 2024 12:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723294553;
	bh=OKBX95gdAYv5ZNSxtBX8pPhN5oxfk59MWYYgSt7zBIs=;
	h=To:Subject:From:Date:From;
	b=hoDDuwFxbmdBdrwc770X07QpgSXV75V0I4l47NS5UTZT/zp9HTLQHsFKL9Yn9TiyM
	 Teh8RmX410RAoEQrMOG+8uYq4mZ2hpIezdYZ38jkSvS54n0xVnmWQhbQIWtBtpFTTk
	 of9JOs7zkQ6A4bAVUQyTKmMD6FUuBGAb8GEsrgkyB6upNxXw000UmcshpRjVV73LVH
	 cpfMoo1jJNI/NEzxqrDWxCc+fpd+1wwDQklQrOp7xlMinzieYXGI2LkN4//mB3j/n4
	 BH1hzZdhhykf+qioUC8ZS48MUoKhap8oyesouxow1liDYU17bynsHlmavpORGVPVGt
	 rbtf10WI/dKsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 932E4C3DA4A
	for <ddprobe@lists.linux.dev>; Sat, 10 Aug 2024 12:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172329455359.26070.11032761614985105801.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43424c74e41fec176d8edb07ee5f65ea15b1f095df35d1028cbcdcb028428bfe
Date: Sat, 10 Aug 2024 12:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723294553
