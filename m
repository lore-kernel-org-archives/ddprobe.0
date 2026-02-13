Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 139AD2848A0
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 16:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771000494; cv=none; b=cbNNFK0mffzV3VbIvvHXa3thndNyoz72r/TnH029eWIuSTLhz23gNAKpsvorpFYO6x4a3SJPbN/Cu4tCLuzGNrAo9xYVA383R6k7ED5WAdyTKygjHsuCzk8XgvcVbUsFxStARd0ZT4q90uWZuVJCgBDtchVRCLK+40muc4hat7Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771000494; c=relaxed/simple;
	bh=oZji6Ke2rG8xeOydFanGZskMa8HzvYUjTRqEXzqFKOQ=;
	h=To:Subject:From:Message-Id:Date; b=OTZgfeySvdeub3JvL+xxT121vdYvWtt9kVTmdohmgrBH2JWtw0DPtbzq9VE/TAxiK1S9q7O8RJm4WoFh0Ge2qwLXp2nMmcC5TWpaDDqQp7+tY+h4kDRLJj3cT8rU9uot2M/9rZFeoCJroY2PN5N+iD89Tu1N4tTFEz3wnj+5UL0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=alM5M5g7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="alM5M5g7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A64F8C116C6
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 16:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771000493;
	bh=oZji6Ke2rG8xeOydFanGZskMa8HzvYUjTRqEXzqFKOQ=;
	h=To:Subject:From:Date:From;
	b=alM5M5g7daAUHlABhQEczXMcV8Joz1cjuP/gp4AKjr1WAW0iwMy1I3k6Pw53Aq4Xf
	 nm+Drqu2UzwcA1dDocP0BP+Rqtvu6jXPMezQTh3ukvt0oC2UJMeaD3NY5nXWfpczve
	 qdQQVsehmf7jTzEnEPC7STXGLN42dA4esf7p4TkXFUHlug1WZiPBu4hURZ9suyvCdQ
	 lh3lcivdzlwyJ5teJW4AGeS06WcVCfoKVdyv+of9NDd8EIwD50GO2Fbm/0snDmCqwB
	 PomPX2uVoX4V9WaWAYfD8012JfaYyZGAQZZFu4y0txulvRhZXramT3exqqN7+RqZjH
	 qHsqOzVPiQkhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 958FFEDF17C
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 16:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177100049359.3282.12968829419194482261.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c724b35f4ce7f58a11d4920762fd7b6843855b681f6aeb056c51897f1748a6e0
Date: Fri, 13 Feb 2026 16:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771000493
