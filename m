Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 102B91B0F23
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 22:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750891194; cv=none; b=Z/C6RakBoE+FoswUbZFETF6YNUNCUxiTWSkr40PzKYQAhCa9E0n5IgDFk5flaM1DhpXuN1mrXeoMVkkiIbaBdMhuNPh/WkXiOO7KUuxs74LD0KKc9CyQsotfBIg9OlFufwuwhFLRjiq8TC2vaeh0f1/ZZ8d3m6IoUCLQguROufM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750891194; c=relaxed/simple;
	bh=MRWk4c7rWYblOZYYS7KvDb9F/FyDjo9mmFLiPk67l0M=;
	h=To:Subject:From:Message-Id:Date; b=qTK08RxN3OonwTrCVrFbomIuBdCCFc2i7pOPSnoeUtlXmEOhwJn7EYogqHmFlp6+e3rJhKJ0v+/rk5iD49139h/ks9gVhpXBDlZujgnRn5rsdR4n3Ip8/O32sGYznkcpE2AsSvFcJ5IEg95dsRnvJRHGXqq4LqeP7m8g1+x/09g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MKccWnfp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MKccWnfp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F357C4CEEA
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 22:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750891193;
	bh=MRWk4c7rWYblOZYYS7KvDb9F/FyDjo9mmFLiPk67l0M=;
	h=To:Subject:From:Date:From;
	b=MKccWnfpKhvTvBFxXSR3MxR5dUVZFOSBbTzA1gvXHybrdNxPXfSRnM/GQQ9CrZi3A
	 kP7f/REQBINssvYO8QxdV4ksIxiIJV+kigHYBYMwJSWE4B5sqdWNUddZ3H0lGiwr2u
	 qoMmxrdznSvB5lLecbyFe3kKnfp2zlHtl3LxofyZrKmt+bgmkld3nnk7Blwx6zVfEJ
	 u44y2QFXHdXkVcvr7n6ackx25TaRrJm2RcaSWajwpJQ3+jmGCsW4/JKn+NHkwGvN2e
	 MqkPYf5bZjELVzREOwuU4atpCP11vHhdhTvC/yzkNOfOxkwjRjmB0zBfwyeW4YwKCS
	 Z4TIPi1pOCAQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E62AC7EE2A
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 22:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175089119357.8393.16068536107899264887.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5200bb712c6d30bf495149f57ef2e6e002fb2c703fe2b6ffd0dabd7bfe858b88
Date: Wed, 25 Jun 2025 22:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750891193
