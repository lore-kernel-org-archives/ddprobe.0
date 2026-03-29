Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3FAF21257E
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 20:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774815294; cv=none; b=NqFLxnvgbAYV8+pOXbWzJ2HSoc5oUfgAQYd2OQC5R5u29h3u2OG2rI9WFuERB5Z1g2hC93FY6lVfow7ub9MFWqUnZiA2Igrt3i3r3vwZwtz+hTurHMUxusJnEPAHDvsy7oZT76xQ4z2IY5BYoznau7Y6vsUPW+RacrPMssqlUps=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774815294; c=relaxed/simple;
	bh=NVhNiHVTpSquWTHHYNo+clqIB0fwyUYxzsmeLILvymM=;
	h=To:Subject:From:Message-Id:Date; b=MDx2zOh+RhSQnJA1yjHNBi1cp/mRIt7QdJ2CO37pGTwHkAaHyHDVBpouLIcKB+FLJSEYrktCufR75sjD+MsAZNN55OmKWwnj5CEWEIKSDsDDh8BzoJ35DOPTeU73jBucumPy4i3B710m/CCSY8l7k/hRVTfVMRucG4tWLu4zT0Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gMKtsWC7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gMKtsWC7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4E85C116C6
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 20:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774815293;
	bh=NVhNiHVTpSquWTHHYNo+clqIB0fwyUYxzsmeLILvymM=;
	h=To:Subject:From:Date:From;
	b=gMKtsWC7I5tX7imzHiHvy6aDRzXrMokM+YglApfNhiBK26hh06JZ3rHLoQjN24SJ5
	 US7/QP5QrufIt+v+pRBjEI3AzvjaRUMBudtdnJ3RkE0RguTF27eD3vt8bmuBwpBK0w
	 m0NENpyIvOh3cAamXa4/ZXXX2YNK8JmIWlhuU7cY6Gp0p6J3ET1+ATevrG5y2mCFrA
	 jd3kE+Hx+X61Hcull1g8MRxxGnVManQDTsQfQYUHruUfngBZxfaE4PVOrFoKmL5wG8
	 E+KzwRh9bz7iho8UJy2sZw5JnCFYiO4JKw79642mRQXujJWmP+2zUIrghTleKVfeCP
	 wKsIIHoP2+hHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96566FC97EE
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 20:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177481529358.17213.2422213106976989966.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55e47ea85bddb8f06148586d84c85a71e88020e3ef968db4b8ff451226ee7488
Date: Sun, 29 Mar 2026 20:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774815293
