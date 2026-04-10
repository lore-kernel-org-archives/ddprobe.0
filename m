Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3495930B509
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 19:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775849254; cv=none; b=qPg/9smpPnGnojq5UlQXV6gypbXcw0UANIJgrnWopa6kAx9ZLphUpJgPzR85qgeMq0IHqYHLOGw6WDzlktl3c+t7WYkGI/2QClnTSYTq1tydp3mLUHm8TgokqJALb+mO0IHWgETThuWLxzVBzNpTSMA+aaR1/6UQlYRJBvRThLo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775849254; c=relaxed/simple;
	bh=HgFWPInjgvxpYDPaFpebf7aT9LYiCLZ8FkRYUvZo9gw=;
	h=To:Subject:From:Message-Id:Date; b=o8nMHOlxaxl8BanifyF21xid9Vp4RIK+Pm8E13labb7wUQ9pizw0PXviGUuJDCqJACIX0eOor7XtJ4MZbbHsA+KMDvq6Hpbs8VrMvqVNsk+END4Uy8C6cqfagyLwV0HOtCa0XdVdhmVOLUp0Nrkpuv2PCnObc5Gy8CcATg+bZxo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aNa+VrKU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aNa+VrKU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C67FAC19421
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 19:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775849253;
	bh=HgFWPInjgvxpYDPaFpebf7aT9LYiCLZ8FkRYUvZo9gw=;
	h=To:Subject:From:Date:From;
	b=aNa+VrKURTQcyONga4TG4alF91nZIImhG2pWUVjzw2OKFsvEG44oenNvRT/9XsmBU
	 hlDzvwL0Gso87WSlvxvyJlTfmMLi1Nc/vIH9tDgQqzaFkFfJwz/O+0cd6faDwPsgBz
	 nN+PCU6Rh7omaoNwCc/hn+ebwQ8HIKfPBdpG5IGmiTwuOo3mK4QFce+qhD+VM/Z16g
	 CSpvVUnnMS9TAwNbXHaMUYeg5wHUFXbc/yuxhSjZ47DIpShP0PMF2fXjroK5duXHwp
	 raeRFjD3az00T8kuZkvBkayn/RWFT4MUTLfzuPuAnp4lXDn8j9iO0ZTI8aKuc1qU05
	 cMWujr6laE4lw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2BE9F45A08
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 19:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177584925371.22939.4277350068477987263.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 17d3984c4fcb198739a78fc8da07b5e3781dccff5c8daa76727ecad3f4a61a0e
Date: Fri, 10 Apr 2026 19:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775849253
