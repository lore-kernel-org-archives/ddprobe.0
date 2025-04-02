Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BC251F4C8F
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 23:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743637194; cv=none; b=ejJU0ruBatWM8hyc9f+in4xjzTgOga1nG7nJpJk0uaN2phzdtAJCOxfkOvfRAEmVB9XNGxO7Bmhehgpm8t3PgbPdPmwtYGqEKLq6BpgyXlzMZfCPhV7SeZq0jmapKWxuvkmFCJzbGcTceGrwQ345RNQSD57QJwkYRE4B03AmBFQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743637194; c=relaxed/simple;
	bh=OFDSW64ldE9VvKNx7CJPdW8iXKyYHiNSL1bzuUgC4qc=;
	h=To:Subject:From:Message-Id:Date; b=q9VKNc4fcW3YvDHp0W8bCNhCQeI63jGFGcbHkItRcJhqnKgWEm6I97iOvrUAGNMx3U8fQ9VP6lS2MdSHaCwm5As0EjV/brZRgFo0Lg3MKsO6iw7cEeeQk3TSQknuIH0nIRcvl1AGGCCWfORJEDtDcG+uQ7zHB+dZcOPq+E2FYbE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=chs9wfzR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="chs9wfzR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B538AC4CEDD
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 23:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743637193;
	bh=OFDSW64ldE9VvKNx7CJPdW8iXKyYHiNSL1bzuUgC4qc=;
	h=To:Subject:From:Date:From;
	b=chs9wfzRUQBj72sUwHasU/3WuZb/1oyugcOZQJd2OZyGKQC2PE1E46jEMEmsPEDTc
	 VXYt0nw34fF/Lc8oz4hO1D8waPstO2f4pJkB9hraejIPuEF7QgYNOOw20L7PzeN9Wj
	 +aMDu1I1gDcRkLRldDPhA0AhAwRBeHaxEgrpXUsQrnCWZIApZRzL6qCaum10Rp4yvr
	 3O8zlJp/j6YgfmHHt06kNIVtPUtSii12sAJ7nPaepsF9swERbT0zO8n1XFEUh+OBQv
	 0MGazm7/4fRmmA/wQ+DEVGd5kNkYynXBjsgluO4Ds54bGOh0tGprK26mW6d85Vs0RO
	 oyIQU4lDProXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AB3AC36018
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 23:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174363719362.27752.6452826744218672560.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 13f5358cc065acedda1967c118f0c9bdef43115f99dbf86b46cc2f0dcab9caf4
Date: Wed, 02 Apr 2025 23:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743637193
