Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4865113D624
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 20:25:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720124723; cv=none; b=Vlv6+4jogWrXEjL6Tq4owzkYx3px1PeCYAWQvFFnflxSGgRacw3L4sG0SGiGsjPPx5jFXHCKfJoOaa6DABzGSkTeGpmF3lRF/0Dvaq1tInwJiI10PeDjh1rSFDJy2tDeMbNsobDD4lDqzf7Reuvun2gW5TRFYo9BS6YhU9aNqnM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720124723; c=relaxed/simple;
	bh=/oO0e1QLJHj8nU9zqnIavGv7wAlrMwpgG5ZuilmLxJA=;
	h=To:Subject:From:Message-Id:Date; b=iaYDySJfT7WTyB7QuEvHH//maJbpaQYi6TmXj4vLAcqmhBOpwCSXFa+Z5u7wr+oSc5n6wKqZt4YxYKFo69k8ox2Uuop8LTVXbI9O+oTqZRrFudCXNXv9kpGP4nc5rzeGoQGZ8Cbg/tql9XLvwnHnqiy4ZHkA6nasVsJqYL92dbE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a27nCM6X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a27nCM6X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6548C3277B
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 20:25:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720124722;
	bh=/oO0e1QLJHj8nU9zqnIavGv7wAlrMwpgG5ZuilmLxJA=;
	h=To:Subject:From:Date:From;
	b=a27nCM6XNshN98Sb27tteZKdcc3fnuvxAngkg4NdSK/F9lX5VUnlO7mNVgEnCBm/b
	 kk3iu2gb44VpwMm1sZxz0wf7fA62ujgGoGA1MlDbbdAeQdakkAaxJzNVv8a8taLpC6
	 J1bX4kQxtRYATUSO36xsQ+Hl3/iMKHNU4YD70AXawAYJ+G/46UJKLWWEvc7HhgQqOk
	 RjND7vYRNkS12xJ4M4Flq3h2OFXyWqCaPnCIpq23HvTMEZkJD8N7bYKKiWvdiPIGe9
	 i/KGtIB1wIUvwnWTdr7j0fqyahAQ5PWQismHe/OOIfB9Cwp+cb7O84ZS4sEaSYHTnu
	 ZqBzPeVZzHr1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C304BC30653
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 20:25:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172012472276.9421.5182235063824096905.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f3fe4aa5dde878b020df3fca74bee5fb141c60b7c51555aa2d730bf8cc0bbb17
Date: Thu, 04 Jul 2024 20:25:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720124722
