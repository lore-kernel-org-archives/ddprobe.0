Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6191284DF3
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 22:42:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714862543; cv=none; b=OFFjWdW/ugEDzIMAwiRwM2YprtoZGsaJRps7GGB0+Ucn3hdl26/2cvtIb+Wg5eZePgl+btRVV4o5/2OAS+S2hgJNQeQBFNlTZDmdaNUCKvzOtK5EdESV5Zwha/hk94hymmNgzjKkwV6eVnaJbXGjYMD+1embLk8YdRMNpw+Oz28=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714862543; c=relaxed/simple;
	bh=Jb9xp2yVbUpKtjkWzR84EFCuYWuoIf3s+6E4WZoDXS0=;
	h=To:Subject:From:Message-Id:Date; b=CNzfFuk3FHd0w2cU4kkMza/ITl/IZViRhiS96gpaTnic7ROBu+Sy5h2UDLRXXSeQKNjme2S7hWuhtBJ6Vvy9L48esdz56B1Sdvj5/shcUfxzTdMlCW95pgXVpeDNf80GjE4CFdaM6hEvce6DiGPa1Rs5EaWnWYuPaXUBTNyh+TI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ol3fqsi/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ol3fqsi/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D39FBC072AA
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 22:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714862542;
	bh=Jb9xp2yVbUpKtjkWzR84EFCuYWuoIf3s+6E4WZoDXS0=;
	h=To:Subject:From:Date:From;
	b=ol3fqsi/CUPnk3fmIrcs6jbzBnVOwJFuf4j/1gSbNg7Ser/o23CFsycRrtwxPEnAF
	 G46kMQfou89edJFNG/jRC0I1EZ0+HRC1fKkRxJoO0puNXDSAfZNX/U+oc2b3dj2/BM
	 Oa11iGryDItFu1/b+DRdXLPKMJzRy4jTnA5JLbRbaZ0RWP0/W37yP479ttR0IzPZqx
	 L4aqwzXN3wI/ZQRCjJiNnsoDuLBhB6q1R6bTaiKNeDPhpMmxs0CujKM0sDLnZGXmG2
	 9lc6p5Lin61eCgKw6oNBSZtAE+PYxzM8OB/zuDsNBqjBy2zuTb2RDhGM3TTqyhoYjK
	 tMoP6lWzmVsmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C05EFC4345F
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 22:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171486254275.15612.13241278328194572230.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 35ba7bb36b694dacd6e4356ef29d5233de7b554355de91f4607e8785c39f0244
Date: Sat, 04 May 2024 22:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714862542
