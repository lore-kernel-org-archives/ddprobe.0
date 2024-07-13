Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FF2D1870
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 04:39:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720845563; cv=none; b=PyR2EYSLfxBAZdOfGGKOHAZXsq6vrbuA6P6+uIEwrrW4j4q8rDE1BjveESLuOBPaZaxJ3HNTM5vJAbstgnBMgHKYPJUThVnJGff26Bn2Xcec3JZ9lpqxgZixSeo/Iz7YZ8dsqEZ25rBHr6fMRYLJ8IB3oBOdkOREty2jTiH0YaI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720845563; c=relaxed/simple;
	bh=q5qZOWTK8JVsS1CTMR4DEsRjEYd0HTxwe+/D1PMT1Sk=;
	h=To:Subject:From:Message-Id:Date; b=MNow2g3TmXi1TOXTQ+pLWL+SAf0sw2cBQIGbxke70yntqGQztD9OCSZV0p/16GDkGDIKG5cG4Sg3dTr+khuQMAxfWn53bwAIG7lp8FmWa0zk+xEyE4gScQwYWPgPOVLQlHbXDoguTSXmyWRIc7EA61HrIHweGdu2PrcugTlrVRo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oUJ2tElj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oUJ2tElj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD424C32781
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 04:39:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720845562;
	bh=q5qZOWTK8JVsS1CTMR4DEsRjEYd0HTxwe+/D1PMT1Sk=;
	h=To:Subject:From:Date:From;
	b=oUJ2tElj4y+Hil/43PhfcoDZTYLgfMjFLjuDY6YR+EojpduR2JCPSIDsHjnmHsuCI
	 V+Zo68sAWnVA6VVtyD5zhdgWC/WOi6WzvNfdMzV0rO7jTdM5DGcThTtLOU9os08Nsx
	 x3sp2jg2pHihdLBQw3kSsTOcIk0gMBfNl8kNZvosZ+2ANVtxI8lJgLjZveEJc5Uqsr
	 4klAHQ6hk+riOjzUCQ4J7+uzepPlbTnca+hfww2aU2NB6U9qfA6vatNkU/rT+CqryU
	 hCrJLylfw08EYl0KefIxaqrC6qu3s3Lv2Pwf/BYKBNHYdO5+xbRcwE9XJ2P9ydW5CJ
	 RgeaCZFaQErzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2216C3DA45
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 04:39:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172084556278.13587.6923576533543397549.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e90407feb9a91e80fae2ca9f161b7235bb0972fdc55c06d81ef7c4c247c52e1a
Date: Sat, 13 Jul 2024 04:39:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720845562
