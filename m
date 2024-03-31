Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE29E757FB
	for <ddprobe@lists.linux.dev>; Sun, 31 Mar 2024 12:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711886897; cv=none; b=bVykglHE8y1EEvUWw5P6cSa1Gqsn6JCB8OlgbhPyl0dnRGiRIHMZ+GPc3Zjr+LWW4VsxXSePpY5RlejNzNGRW6t+0dhHpeS8W83NXF+cgg/a/CoFsjC+W803iQPWtXYx5y/+uAYlSBYR2JI1vO1s5saDps8hZwTBhVdw4QuQLLQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711886897; c=relaxed/simple;
	bh=UHmfHaierq3f1yarpUL6LfvVWOZqxhB9hK06Cjnqyqg=;
	h=To:Subject:From:Message-Id:Date; b=WLVikLOqBgWMWJr15XjcFkc84Q2HG0CNfJ8Fogfvg/9CCSlV96Ej+uP318fnVoB+Y2nkx0Gb1n5VEvhhW4UoFBaesqn8JHdOXTRw6vXOgFUBa1yizxLxcmLbf/leR1FCxK1o2q51q6c29P8jS0lu+Q6zGbJ9NgX74dBK137QXlM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ljgijm5H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ljgijm5H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 83AF4C433F1
	for <ddprobe@lists.linux.dev>; Sun, 31 Mar 2024 12:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711886896;
	bh=UHmfHaierq3f1yarpUL6LfvVWOZqxhB9hK06Cjnqyqg=;
	h=To:Subject:From:Date:From;
	b=ljgijm5HA4n5rOgWpzay3zsNsNsIcLBHRTuwmaEIyS3XwzCBRlZufvm04i3fiNK2i
	 7MCs06smsLlcDA+KWYWRgnV45Tgu57VMSwwPf+MVM9H2lRbK993VuClpnQLmLR7U50
	 OM+9qFNLxJ06DC1ijie4QP2ah7lIif0l7YGEXzWbp60YbQ7l7TqhFPSJAdx9iN5sF6
	 +sArH6cnz8ULAyMPKgVs2iAFBAKex0F5MiAy+bvZMj6Bb0wQc00mfgnDYCjnCqGX0f
	 INldmJFvgGUpFop8NpE32wy1dnIUGFAIc5/qlr3Pd/1VKuLie1XvtKQjsMQbX9mp1J
	 Tupu8KJdA89QA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6FAE4CD128A
	for <ddprobe@lists.linux.dev>; Sun, 31 Mar 2024 12:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171188689641.31225.16210837237321945313.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2b3dac9c1701711fa17824360f474d8f2db2916c66fcd96cb991d1ccd7bfa4a
Date: Sun, 31 Mar 2024 12:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711886896
