Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35CF84AEF7
	for <ddprobe@lists.linux.dev>; Wed, 17 Jul 2024 22:25:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721255123; cv=none; b=rz+wgWHOpzv3jFZ0rYo3eIoo0rdl5aH5hB8E/WX0fu1V1nUPyuD/SlPi57INUHm/VkgZ4aTfgBiAeBI5BNOlKgDZUdsSZwE1MNsEiPaGalQl52YnsKAthIjmY954N1mT76BMMVlts5hk88YZZbWUTPIldiYUHCUU4BpiKFe7Sa0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721255123; c=relaxed/simple;
	bh=7VtGoP3PeCGq6tVaTofKOkfo8030fuX7kICNMXwFUiM=;
	h=To:Subject:From:Message-Id:Date; b=jZK6GmP9X6zMXnnxVzto3mADEOscJ6B8fJEQ0SSNC0XeaxnEGRBZtBUbVk7OrOQn0wh2VqRkw39MOwpuVWyiCPJRYcCVw7nPpKrvTcjQFnXw8KhC9KpveGDflsnplTgbmxbHFjLznGStFFWDaXr10jpFnvkoZqMC+rF1wmRHUgI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=POcfjXYJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="POcfjXYJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE54FC4AF0B
	for <ddprobe@lists.linux.dev>; Wed, 17 Jul 2024 22:25:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721255122;
	bh=7VtGoP3PeCGq6tVaTofKOkfo8030fuX7kICNMXwFUiM=;
	h=To:Subject:From:Date:From;
	b=POcfjXYJxnUYCK3OS5aPXDA+aet+pDwulT3GHMN9KjASQw0uGL7amU51ANz2gHfYw
	 dGH52GniEQDs2XDJcs3ZDuhovFFwga83erqIuuIm6Ak9+iWULcmP4tvTjZZTyXwMOP
	 ErNwhQCWOSKI94748KW+r2XteUCLxGsgKjfv0uIeoS8xZYZQLFQak+odN0Vtl496c6
	 Q1Mxw+9iUj5lj97Oqm1Qwab8y48SY+3EASVCmn8OSSBhsSV8vI/3TbcY9OdW0s9ZR0
	 sgBzxBeYS+I8xzzpqdAs+zAOuNJur/mFmomp+1/PMrsTUG+bj+rk0hQfqz+44B7rlq
	 n5M1SesckyJmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB343C3DA5D
	for <ddprobe@lists.linux.dev>; Wed, 17 Jul 2024 22:25:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172125512275.20338.12516062551763847175.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 526da140e1d349ebd76a26de546218eac1e0ec19000282d2e3397e4c1dabbcf8
Date: Wed, 17 Jul 2024 22:25:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721255122
