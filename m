Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 492D813C908
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 03:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786246234; cv=none; b=TUNI3xg8x9SKvsCP6yYMhk6COC2RU1UfRAaBkGHWfyX09swy3iN5NkDzK0jvOWmjgCYv0uj7zxqCfAYQIVDPbZT+Im7qipvmDFh6F/9EzxBJMKuPvHUXiggpxAOVywgRn+F5Z0tFR/ZqE+d39gP02WJNoix1NudlB+jHZwURjOQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786246234; c=relaxed/simple;
	bh=izdAHg48XuM+UkRZkNmAc25napzIZv1EINuvDzOSEjE=;
	h=To:Subject:From:Message-Id:Date; b=jpInTY0SmQWTC/a+iuwbuTcN3arYsMzlaUsFqN+ldSra7MwCeR0m3/hg3TPnumSrp/l7tu6uvt6W0o4sW7LXtFnQQHuGH+G9YS59rh+GzR7XbzshFhQs7KGlBhKIgu/67hpPm/rxASZ8hnywtr3cT1jqsjMo0RiXOAR7sg/leO4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TiAtxcuo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TiAtxcuo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D33CAC2BCB9
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 03:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786246233;
	bh=izdAHg48XuM+UkRZkNmAc25napzIZv1EINuvDzOSEjE=;
	h=To:Subject:From:Date:From;
	b=TiAtxcuoMlUIlxH9Xn6xDVHnXfp+6XAqPgzRieNztjkA6a6BDwhm/g5eqTNESMFad
	 ogFto16qtuZ1jyv3wyPQbbUnrcbyEHr1R70OdcYiSodqijNDlf/BLzxkprzvXzzelm
	 F6TESf++xPLqpERBau4tM9Phm+mPApdfNk/F1frfGKDQ17ZVJ24kwuDpcxBf5SVJhn
	 IEeGyUNHfIY/d0s/xVzYXvM5hK0Dsb27eMmsKMl2FSGa05sesTdhCQf42G81XdtzlH
	 4rstWnRpSeDgc275aREv/cHFJl/1AfhwQFPvZDqpKKXA0P8yfLrwquktrCqOdKXQ7W
	 m+122ij3uP1nA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B093AC5AD2C
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 03:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178624623368.14729.1300100659712881148.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 097e6db0cbf938e613abf4b2b7f1d321f647ab7feffd4e4c5c28190beeaf5687
Date: Sun, 09 Aug 2026 03:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786246233
