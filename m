Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43BA117BB1E
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 14:55:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720018523; cv=none; b=pZsXqxs/VLo1iaOgwpWHyM+FxDGKbQfJslL9iKJ1a2LrdBAZibKxplvH36WRBWJwf9zIKJFrVFgHzaSpwMZ896dzh4IM5ZQnl0q6meec4po1QGhBiw8CRma/wy41eYPXTfEW7P37r6T3oP/geiA/GYTZuznvrCr2mxPMqGf26Fg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720018523; c=relaxed/simple;
	bh=nVd3lGZJGsNZSK+uqYTWm0Fb5u55OT8NVO+SpAIsw1Y=;
	h=To:Subject:From:Message-Id:Date; b=chGpvdJnwNncUYtFcQTGwMgBCfW4I+bsZmLt/VLo6VxZHvfDfCaUes0upJRVOko53Kfa9RjDmLp4hSgml1e3iDU3AyHHHmOVb2z6VQVGhJasPRLp41qf/5HpW5/ayAsHtOE6Muag0wOtbJskorEOL7WiVDN+IaQ8673Y/JmKBxs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TZM7IJ4T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TZM7IJ4T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9C19C2BD10
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 14:55:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720018522;
	bh=nVd3lGZJGsNZSK+uqYTWm0Fb5u55OT8NVO+SpAIsw1Y=;
	h=To:Subject:From:Date:From;
	b=TZM7IJ4TQFzzFTbNu0dDlaoo8GCOIt6pM/QyKTLQ/yJSCOgh0xX3wVmRlIL77VKEB
	 cUAiUhsLT/+5PYlnW+dgFD1CLDN/umt8RtvL2QJT2I0QBrTIQMeBxXg0FjO+jQt06M
	 JeCiPtYx3hVYhlmdYU1qBugtifLNXidcm9lfET9Non1FhZCf2VaPkLNd+0y/MBnrvL
	 NZel83SkahyBSWrJW0FLByGGH6gU3WWfeNbiYiQxed8V5gy5zI0KZ8E5QmoLAmm4dn
	 aUbrScB8C9Z8+oUOg7hXF3CBNrdj5hD24LRcUASvEzASoZRuIVvnzG3y4ZZ2AL4nWL
	 v6gVeCR8imlvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2E21C2BD09
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 14:55:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172001852278.17984.2937555826956966560.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 28754f0ee464cd5c8fd66e4a4439d6f39f17c04942b08f55c435d790c65ff30b
Date: Wed, 03 Jul 2024 14:55:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720018522
