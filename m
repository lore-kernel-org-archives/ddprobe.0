Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39DC01624D5
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 05:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770786294; cv=none; b=ehb4rEBAIhlKm7obPoTTzUp7rMrBQzTmRCWjntkiVB7SqGMvo2mRLEZaL7QVIJgchtmmm4uLnXShSJSUYjd61TLuepgXdZE9RZtKqG7nnhFq+1r5CxZsrhzt+pV5Xz1v6E4DVCSViH6y098r0E/VaNlomoZeWgf1b5ENKS3PA5A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770786294; c=relaxed/simple;
	bh=09EWOZL7CJ1wfw8+bG0/rio2pZioZ6oRK1C+Guow+88=;
	h=To:Subject:From:Message-Id:Date; b=KdP5zjceIsZRW8+cRBfzJ1SjS63kTJYpX9x18JcUnh2My8AOsA+wk+aXCK4AFhoYJlmRDjvAYUZV1JzCNMiXe2vf6+kXaCMFh3ihHrkywwyggH6iwKgEypeZfDI2hUln0S3h0h6KT2bt8e7wYocKKCC8X2wbCzXnozgBM7lnrOo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DRuaexO9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DRuaexO9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBE7EC4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 05:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770786293;
	bh=09EWOZL7CJ1wfw8+bG0/rio2pZioZ6oRK1C+Guow+88=;
	h=To:Subject:From:Date:From;
	b=DRuaexO9APJJkz0mwlVyzpsJHFvTyUwTb8W1B59xAI8S0war1bQqnRhWZyNEDGZ8U
	 tmPvC8TKrYpWfz6lMGvm4BoRHJJCBYpqf8KSDwC2Plx5aYTedzeeidjaMu1gB0wFlX
	 hQmyLzXp3IX2QzvlOqEimZ/kAtD82O5n7+T/B0h4hY7XRlUVvjobm+Yy+5dEVWEoMy
	 3GxUhFl4GO5Z7lBdT9HM9VfhxoMW8y3B1s7CA6pzfznEnersXD0e/VD/SsX2l9ElXe
	 58ZpKFB4TGQXZ9Vn49tAl0Ukf4RLolHbBmVF8WGAeF7vVhaO51T4giXRrZi5sJkXy0
	 h2IJGrOXNrbxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF3B3EB5965
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 05:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177078629368.24863.7954029882545012483.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f2e5af5840f107ca6b753999d555ff2738c436a18f2040860feca9e61304cb2
Date: Wed, 11 Feb 2026 05:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770786293
