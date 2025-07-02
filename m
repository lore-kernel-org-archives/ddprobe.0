Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B068D299
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 06:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751436594; cv=none; b=MGydQz60brC32WKMOiQmKGyRRAV/YvW04C8AOIj3qSnFHxxRp/e88pf0MWJmOLW0b/iusjK6l0gAvMIALDroI/UoE1AkirAC1j7opUF202lK2NpejOjAN/BerC+fnBhyUIB3qhQOtl3JhgSwrF82ypEtzX5YfQmep0wIZK/NGwk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751436594; c=relaxed/simple;
	bh=POmmzrhQpkvv/n3ufb+3v7hk7PQTSd0G2TClHq6vGP8=;
	h=To:Subject:From:Message-Id:Date; b=LFi2BwS1NtzbR4i7tANSATpBKKR26GlujDlj8qjd1Nz7XC49NeHirJ+Qt596fb8LdMfCBnuzttwcDUZiVmurzVTtnhzneX1VxcT27R9RzYULyzZqfBfbXmcJb6bjcZ3sVL6egUOzxSDu4llq9LROnBhw9G8Rht/kYmt4DOr4gd8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d0xgnymL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d0xgnymL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4166C4CEEE
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 06:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751436593;
	bh=POmmzrhQpkvv/n3ufb+3v7hk7PQTSd0G2TClHq6vGP8=;
	h=To:Subject:From:Date:From;
	b=d0xgnymLFGyvzZwchOIxQkCw8kRHr1/liTG5kbluB79qfLnD66d/JJ3caWq5y6yJV
	 tkzXkU8WfPStQDiF8kpb/h9CdT4kZe9MgNEKGA64nNHExpwMpvns6h0L5/RKghr82T
	 73nkp2huKKtolhiiaCIjNXCDEEDOIT6hjYYSjh6EekiqPkjrXHCUH0izz4upzGHlCC
	 AMdHepCfe2sUfjV8KJI+9RN1IZSqOV//A10X/iSWewISp7RXG4e4c8d58mHYApdMBT
	 DnU4P/NPMZgM3i6XJ0+1rJ9EcpV1T7ycUu3qb1AO5hWxcpbfLE2el9/1dNvIZTM6Cq
	 fBwnB36V0SYHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90212C83013
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 06:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175143659358.9353.12227042117645966697.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 74541507bde3c24e51806579a281f4f75d2505924fc1c906c3f0f4b339880c83
Date: Wed, 02 Jul 2025 06:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751436593
