Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 654A13D56D
	for <ddprobe@lists.linux.dev>; Sun, 14 Apr 2024 20:49:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713127763; cv=none; b=ZjVgp71el/DptN7QiPIOFgXySVI4wtCMgp7aLSE/tNk8wN6hy1qwR7Z0ENvSQM2dp+gGyaDDPBqk7fmHd9DIIeZ7qnhtnYoGp5xVtz3sSTMgQ5Wd/hv6vvtQpwbufjw/nplG0BDjDlYxoi1xb4E4SHpNaYHgTHospOX6XcdF6aM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713127763; c=relaxed/simple;
	bh=bGegK5Ko4lqdecBoG8abTnJquPh8m8X81MCMqoUXHeM=;
	h=To:Subject:From:Message-Id:Date; b=PqVLpGvTSrQEuCUQSc6lNlCNvfhgISa7XlTFo9BZ34PZt7dD438vM9hGAo8Wb6wFf4jnKJh88sFeT/8aRnecWjC2Y60EhNriHBv4LGV7c0ucjwObG9Bc/P1tuNjINUg79j4hxhPj88YTh/Iv48A78Cfnqabx9vbdYAU1e5RhG+k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MDcF4o9c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MDcF4o9c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF270C072AA
	for <ddprobe@lists.linux.dev>; Sun, 14 Apr 2024 20:49:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713127762;
	bh=bGegK5Ko4lqdecBoG8abTnJquPh8m8X81MCMqoUXHeM=;
	h=To:Subject:From:Date:From;
	b=MDcF4o9cUy0MeAruFzpZ/JfjIPeOPKmKi5LVuu1DJebsvIUAJZSlJ+AwpCMbHnV1f
	 X6SYQQetjIVZeZIS5W9kxMfXP89AHPqgMM1yxWWJ4LgFcFjQBr1HSAc1+6qyIDTmSb
	 z+oRrLi3kVL4/ZhL/CznRvBdeUb7lTkUNG+/8gsuCWAnlKb8WHc8cboaM+3IKl4jSD
	 q+xEZdVWCdNqe+bgATMfzvemYqURCITf2fQAa/NvDIW2/8F/4aBbwkV9hoBWKH/Ury
	 72YPhC7H8vPN9Pz7Z1Pt1dD+/b+7u0RlkZrTZ/cxdrNFGR6Q5pIi7ERBIUKJw7xxfw
	 y8kedutAz80Sw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C97B4C4345F
	for <ddprobe@lists.linux.dev>; Sun, 14 Apr 2024 20:49:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171312776278.903.8960497939278790066.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4fefa7f5f9c7824fbb77546df4c5ae3f73311edb4eab6ef5ef0ac95f8352d03a
Date: Sun, 14 Apr 2024 20:49:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713127762
