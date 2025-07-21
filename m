Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23B4C246776
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 23:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753141194; cv=none; b=AO74Yd096R9mpUBdN296VD6RDkouh1Fw3YILAoAXRF9KNQeWwULP6o863jrEg6Dsycjew9GYp5SI34RHHVEC+ukttHnBxfoMtMo5OvWpQBgvNkdgIsrURmRJ2wnJZ6O87JkAMZcJl7UrNIpKznb8S++mtEoi4ox+J/EMIPsmCdY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753141194; c=relaxed/simple;
	bh=Sj2uJ2utLqfuSH/IX1mWMDx7s/5YlWVIR4grN/t6tRE=;
	h=To:Subject:From:Message-Id:Date; b=mRWcj8GKNzO12iSGCBWdUxYKrH1tfzK6kmCMPmki753AXd+1qerZ419SyxI6u1kmzTFUUDs6J+0Ty21zE2rgQXjjvR8SVxDyQC8V7ouJtKmTYmnfptl6QLjO/U3Boa5ldb673BpnsZUXbaQX1MVQsNdzZf3hvAvpqSHpLEpkvKQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G+Jrmb75; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G+Jrmb75"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9112C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 23:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753141193;
	bh=Sj2uJ2utLqfuSH/IX1mWMDx7s/5YlWVIR4grN/t6tRE=;
	h=To:Subject:From:Date:From;
	b=G+Jrmb75+9dZ04SJMM8xSYp8C4/HxNkdBbR2CR8DUYXr/B4KNndkbRWjcqOJWcigd
	 qd/F+SKpTsYwDsifqHW4AS8hTERkLeOrO9IhXp80Y1dlU3EFDBRpQMm57jIPHY/iRM
	 JLJVy/nkSI04DGJaVRISjH1IvCMNgzl9oaWJu0oqEA596cjkZV1GFY8fxNnbumXOhm
	 BDbbG74yW3RzgTsz0ulrgVVqzPMVN9D1CiMa0F/HUyneRUqGJwxWM1vBkMmFhcTniO
	 ALL1K8GF/Ccf8l1qdiSLrA3wH3tneC0qYQoDMDI//iRGzW1DIBXYmDTrPovornxu5i
	 yw4Cns8VnVR6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 928D7C83F25
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 23:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175314119357.19961.3033271382538904038.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d7551639c22c0d6377fc3219a5cbc3503c0537b12c95838d4d0d6afe9aee81c
Date: Mon, 21 Jul 2025 23:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753141193
