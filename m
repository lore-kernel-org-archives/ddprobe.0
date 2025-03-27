Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A71C18C345
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 23:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743119394; cv=none; b=L5fun3ksSCajuMXhV4FCtZgaoMbixe3Bp+u5RCFtIijjvJ0r32nriUUdA/99fPirYHfdk1mzRD/rYRY9IS+O+A+Xc2mOfM1kjuu9p1dW1nPUlLAKdLQ0kOtAlQuldINmqqmqKE+N+GotnmLQ6+oRaKVUUttvuSgerKKaw+SZM9Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743119394; c=relaxed/simple;
	bh=ADr1Abj6a05FVstabKLdsW4jChsl3697MlplOSh/idA=;
	h=To:Subject:From:Message-Id:Date; b=esMyzDIT6HiicNNWeSqmolUa8no75kqKrM8V2Q1WEpm6jUFBPmJNl9xOGmeToNIj4dcCItUe9Boxg1p4SCGr7KmxE3upSwPZOIUopyHFHbZUfBkK1CjfMUUik44nPnoxQkoZ9lxIQciBSO6kt9cOUtxAfeN00upx6MfPlp7c0Rs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ulU57PQN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ulU57PQN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B316EC4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 23:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743119393;
	bh=ADr1Abj6a05FVstabKLdsW4jChsl3697MlplOSh/idA=;
	h=To:Subject:From:Date:From;
	b=ulU57PQNV4yAgdskwwC3+QGJ0CaYiO3bQbyzaV49GXsNKW18qR/psz/IU2VjjPPxh
	 SrHdOhdMyaB+X90G/qghKmo8V1bi0DvUb/3MLpA0hMP8JbrV1A98mnK3QD1bPwSZdD
	 4xxSHF+Mf7T8e2e7gX4F+m4pjjf1+Xzl5Cx2f74ukZ2T746ijh8bPgIlOFvhq41sME
	 ooocL4IZ76n6WrKM0E2bNRwjAGEvfTZxZbBwqXjzoFhJvrnDXhO7dXrVqc7gswapJO
	 f1Y/Vcz/4YRc8cNaUME5SMfTL4IxNat+guKWtGh21ietrtTcBq60ySeIGu4k6w4crM
	 01GDi3X0kHoEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99544C3600B
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 23:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174311939361.8073.6674233389104886129.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6854d226610ee5abc07a1f2d05187e5a05442336f5db40a34c0ac2c7a9f06e70
Date: Thu, 27 Mar 2025 23:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743119393
