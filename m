Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D520201113
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 15:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752592194; cv=none; b=gKQGwUNZy3VUDG7hdk02cmPTGShJrz1uJSD+09jcMjWSUTN+YnKA4NTkKqt9E03YAJe7DI2JkMQyWoy7rFHCg6g0WlDInNArrxunO2O3N7bNiwbR8zo/3Ro0Uw7mmE3iZ3TF/o1lBoeEJ43wN22/fXXSNbnE7BiEU4OjNLoeN1M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752592194; c=relaxed/simple;
	bh=N+EjPW+ON3DvH5DtkkxbS5AEJOT8GeEIZPtY9pdpq3c=;
	h=To:Subject:From:Message-Id:Date; b=g4plRoBQ5WUZWgr14ggwAqJSvkxZr34XVOw3zzTZES2JW/1aKLNRxOe3gmd+Fu7gThruRUg8UHFuz4JJfcXGa9HEJEkCVZLuaSFkq77fFmG44RhGHUYGAMRoJhFSgn4IqLh1BbJwjj9B8em2AH0Se7zqqtkzOaQv/CIR8/ei1ak=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F4NIs81R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F4NIs81R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2EF5C4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 15:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752592193;
	bh=N+EjPW+ON3DvH5DtkkxbS5AEJOT8GeEIZPtY9pdpq3c=;
	h=To:Subject:From:Date:From;
	b=F4NIs81RnxmLoaAkvMY1j73nFHGRIdzRjVRe1bxr/mpQoYglSrwnpMk95YaFk6tfk
	 kz5PgY24bKSjAJNdeKslCNpT+RBgMsukd+luwOqSt5esJLRiIWZCJGbKDRmoX1oQbj
	 b1oTB0ajaFMZ4QVr+81zxaN4fwyg6JH4DQiHL7DL2wZvUeVOw1C5xxnoyinsLUI8Ji
	 0+fdZhjJwgXVQkfhMnxvPZI60qH6TQ9fwsiNAj3pxaOaCoaoMRkOvVunIEYHDDE3yl
	 e4fUAuYgRTjkwQpNDLK6JEFloTCtRGBOvxDWrJPdmtSrSz5ZDMVUrorZsmLwJXyKXb
	 xb8qB8h2tRQkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99140C83F17
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 15:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175259219361.20324.15398153556093357002.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f715fc414bf77ff9081aabb97fb7de2ee20ceb8c452b42571968147d2a18a9f2
Date: Tue, 15 Jul 2025 15:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752592193
