Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C226248176
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 17:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770918894; cv=none; b=X3z6wt6+GGLnQ3qGs6hOFoqUlAEF3Tc8H0BNWtn4b/fSmwPmQG6dIp9HGh0r2i4VxBXx7dOMTURXIAP5z6GmRnonjQ+QadORrDVZ2JCLGK7+UWKh1D5ASBf90/B/iPx3q92MByWB/iOIO1l4QDjo8FINVshJ1G9fbJs9M66KT1I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770918894; c=relaxed/simple;
	bh=2RGUycfigeGkT+Ega+PnYZ7Ik6hHIKiY0FW0Cguq54g=;
	h=To:Subject:From:Message-Id:Date; b=KLKcoY0LFK66scFz7/FtLYsgqjSyeXXblX0PybBsQ2yxyMgVwJ7yI8wZz1kC2yRS5I56Lu+k0o0llBHgHnICMMm7d78OUWO/Zr4c6uQwHx+rh1gyEA0GmUenrzfG3l23ZRKoWb/s1fEPuNy7bftj8CZKCFcpqrNUJ+/caxi6XJU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IBbqpm92; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IBbqpm92"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF0AFC4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 17:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770918893;
	bh=2RGUycfigeGkT+Ega+PnYZ7Ik6hHIKiY0FW0Cguq54g=;
	h=To:Subject:From:Date:From;
	b=IBbqpm92ehmjj0mg2JSt2aqdgqUt5kz/KHJeDeDtIAGuXauYLL7V7mXthJDgxqDfa
	 0phKnmqgDShWi1rGaLmHfazGicrd4JOo1i9+3cduUvJI7R13hUoKRhZLCa6GOjtia4
	 6D6oqjGbjmJNVEvuF99e/2AH9Y75OmmCtyVe99yhSdlB6ysUV+XxostB7Fhe4CG0Jm
	 XbZTTiuDhP25yuJTGiYz9HxwqRg6IvRloVD3VkvyaSF8Zz47VZj7zb8Pyyi3pCUPXr
	 lhZtva4W/9Hhlad+xxavXFxodjUvvAUZCQJL3dp/q3QhZeAhkw43upP4zvLudBKF+B
	 7RgNQNTayV76g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B4A2EE36B5
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 17:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177091889362.31655.1737246072698249137.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e167ccd9dc29fc898b3ae757aea1fff1cd83da5ac7f61e708f0ab79b24655c5
Date: Thu, 12 Feb 2026 17:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770918893
