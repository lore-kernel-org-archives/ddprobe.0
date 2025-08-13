Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C2ED3009D2
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 21:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755121195; cv=none; b=BvycPNrrhWR+67nuDqp1iuVjKTPpN/Nk3Aw11azjXtAEqqU86yxch3nDNEqGO/BeTo7MyiEgXaQmKXvznBvhKIdFfbFjyuLh3bdHJfJoYZcdw1E4ret0Ds1KOER5Oqmlrrf9BlCtBoZb76t8huwxOlF4j4XnPFiK5T5UlqGVkk4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755121195; c=relaxed/simple;
	bh=OiZ2QQudkHhqTWJ/lh8QbVkmarGpZMavB4xKGuYYohY=;
	h=To:Subject:From:Message-Id:Date; b=fvu9E0l2+RPYejgBI4fKDn6CfkJEItaN+hsgzGEMNe3XmukrP08xmMa6IdFksOX21O3id5rEFG/jlWSSGqHDNyMHSwyJZjglJ0uTfrkQGKUxi/M1D9izRI3OxW3+HWzrENpBSFNA4qHvNs7xJkBhKTqnInKiker1GWd9+cngDsA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ljUnfQLl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ljUnfQLl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D67FC4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 21:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755121193;
	bh=OiZ2QQudkHhqTWJ/lh8QbVkmarGpZMavB4xKGuYYohY=;
	h=To:Subject:From:Date:From;
	b=ljUnfQLlLclN7QatsxMWqFysR7F+cL6QaLFoKIWKjMgoK0vsoKT375VdhIPUCcP6T
	 jDA3X7kV06P5FgStOW/Yg5UgOZ3FAIM0cuMPI67XNZOgqglouJNvLVY3XGYERIOhZt
	 Oqhw7X+y1gYsPU+ha7iyYXtTl3P6d3lMPLZOUEvMsxmpE+c+k0HqvGHWWsPTZr6pgo
	 Bp5qi2DBJvzzdSLmboWCQ8P4WqEdalP7iVmvRhYIBVPebkbgiXPV1db6rEyJj1P1Xs
	 dBzJT4/yvZVZymUvkEO0eZ47dPtlnynG2lje6WbOVljj7kHOPowthmHjXN9MrYF5Mi
	 aCa4RiKvI/6CA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F3D9CA0EE0
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 21:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175512119357.24660.16239606803938515620.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72de5af34be59d75dd353a1a318aea20dc8896c655084f8de2955b1abaeb10bc
Date: Wed, 13 Aug 2025 21:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755121193
