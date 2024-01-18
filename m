Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11F332D60E
	for <ddprobe@lists.linux.dev>; Thu, 18 Jan 2024 18:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705601897; cv=none; b=YMSxo1bm9tTNu7Fo+qgKNYHU2aRJk75LPckwK2sCS07Z7QfXSPiW4KUY3zkne3p/RCDm42vrE4mju4a6tQLbJnEzlQBvTsJRkzi4vD0TQ9NaIC+Ah/tNZRE4aMRqqHB9nAWq5YqX5+PN1Bl6WnTjT7L/E0wJ28GTYVHdNjQE2AQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705601897; c=relaxed/simple;
	bh=Ul7iqEs/8kO6BF7Xz55le53+2hDPj4ThaF+OmUTwEwo=;
	h=To:Subject:From:Message-Id:Date; b=WzCMj58bGArWatCN8sGf69HX1IqtghK5E+Q9RCSZsFmcj3qy6UbNKzuZ2zLBaSMQ0dUWaTlUljSGaKgQl2vznM7DW/vtJW2iwhIi7/KSfYzT+QJACNhgZeBicndjomaEK+hQn/umDVmiYacyKV5HNU9E/3BxYqY35Cmk7/90N4Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XP6doSFr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XP6doSFr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C426C433F1
	for <ddprobe@lists.linux.dev>; Thu, 18 Jan 2024 18:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705601896;
	bh=Ul7iqEs/8kO6BF7Xz55le53+2hDPj4ThaF+OmUTwEwo=;
	h=To:Subject:From:Date:From;
	b=XP6doSFrUjlJqYMhTqYvJqyIkRxZm8klHevDBnVZTI29a/8WSI8uNKptnVCGzDskH
	 JhhgGKckeL5fNAX0R8ekMI5G4795PgN1BvQtG6s9M7SOBSjV64e7um9tcNmP/Ga4w+
	 /RPVQ2lqaNUBqxOJWFMw5fdSs47blrpXCMZBDcGF1EpeyDFjvT34RLr5QLEqIWQqbN
	 k1hqzL1IQPxlSQJTK55tPS+dFDE8qxG9BtRZUwRD3RHeX+M8LlnpuCQ3w7u7+yTn0N
	 lavtlKmaWvihQwGB0fL3iSGsHP1I9PIwdhS+THWAwTaTtE/rwdFjmZhck9SzCH+Bj9
	 odSWoo2STOaeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E420C47DAF
	for <ddprobe@lists.linux.dev>; Thu, 18 Jan 2024 18:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170560189637.20495.2071452266013304663.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b214a54f80b41839769b6c0e207fdbb0db8fbafc9e574f5a9eda3c9b502bf879
Date: Thu, 18 Jan 2024 18:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705601896
