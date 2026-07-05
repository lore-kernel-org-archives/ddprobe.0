Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E1A635F193
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 08:18:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783239514; cv=none; b=IxFRIStU/jYV4jPqLZuKNYyCaabiznqTnboNQdmVhS24AvtGJxpkv0ZFwFfLwEOxYgzUhCUK4v7AIU1uSAncDU3XnqtYzzkL9S2J5HWga1JVXr7RGj3e++w61r+PHEjR2k2Gd3thuKkGvtIlYMGBC//uknNYf1vIg64pRJjaqPQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783239514; c=relaxed/simple;
	bh=x6ycUA6vMqGO//ICbsTufpBlwAbmx5xzGsOHoXDLt4I=;
	h=To:Subject:From:Message-Id:Date; b=bcvDCWZRazAeM4xYgjBV93fXKLKx5eqm1TeRaDpmGzopab6V3/ndSxrIoUaBI2Op4cWHdW9dw6/Jjr1JjwOZwQYKiqoFIc//MYoWU6igEtcZQC0jo5pezqlZNiglryZftD4R6U4alDcPnNsdORiQ4QsDscdHP4vEvLQ1lJX6C1I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NnlAZevM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NnlAZevM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C950BC2BCB8
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 08:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783239513;
	bh=x6ycUA6vMqGO//ICbsTufpBlwAbmx5xzGsOHoXDLt4I=;
	h=To:Subject:From:Date:From;
	b=NnlAZevM2lc6CdCTGS+U5aS8Xf0RVX0EXjqohpC+4s81gYqVINJgV12IEBxUgn+ps
	 Mc3zd3pW9rbbQ7/PKom2lh1FtjiG6Q+mUOKVr1jzJiXJeaJuS35ucsQkdPxWS1JZsm
	 7x5Ve0BuM6J3mG+/Bog1SZpmtkof13Npr/ar8NL8dXCrh7M2ZGXevr/fR5zVJmEDmC
	 WmpefiM3iSPnBTczaeKutjH/3g8PUknxOb8lYbEE1SgCSISBuak36/37+hMEoIZVVL
	 v65lGEE63Vf5C/ZZCcaKYMjtSh8X8t9mEs82RmjpShdqgXY2rfieGt56dTZs3PPHZ7
	 lOaQLyXKK7fSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A79CAC43458
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 08:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178323951368.22301.126155676074745096.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb7563099df6a2497c3bdabd2e54b2048a6dc540fc933eebbe5b19b5b6bae4cb
Date: Sun, 05 Jul 2026 08:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783239513
