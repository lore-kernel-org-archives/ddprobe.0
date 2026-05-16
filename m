Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29D53384CEC
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 22:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778969434; cv=none; b=QdqlA0UnCa9+1WwFjWTOOBhcM0ZZSeFV0g+hESQ+fJlGtUslYM6ez6foNTym9vIbVrj2FOg0N/BqYw8uh47BAzuIMnaGOFUKVLeIB4KT/6vsYiGFp1ANSIdrk02HTwtY/g7z9PNmK8AQpWptvJ+6/LFxYZwG5vKuGMHylo2Ce3c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778969434; c=relaxed/simple;
	bh=+E0MAPG3jrKhWZQ9icGZw5ACLtVGPnjA97MB8uZywfo=;
	h=To:Subject:From:Message-Id:Date; b=WHa7IMgh4WKAHo18Zq0gpQx9Xjskm1iQ7wCbLzI//mhhRHjvR+yPaRiZnQjxGlJuOueHs/l/82OzFw/GVkmsodeo4sX9V+gfPrVfxqMkV7H/ZXIaGiCza6vU0cuyqO0DpIiZ4HtN827yDd0aBWt46D78zl2hwC1rt6uetJt8qFM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=niJeg/4M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="niJeg/4M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C221CC19425
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 22:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778969433;
	bh=+E0MAPG3jrKhWZQ9icGZw5ACLtVGPnjA97MB8uZywfo=;
	h=To:Subject:From:Date:From;
	b=niJeg/4MOhtQnZyTcTD+UxkIeRyrXobD5MZAGNTdtHPBD50OLvAyRs1hT3QnpxnFx
	 kSydHqRCHxZIRKoWXMNxREUyHNNwYA7JD4Yl2ARfUedc2k2msxyjlEeyAuBDceUyHu
	 GD9Wk/oFqGG8UFFjlpQ9g2T9Fn/enP1D69go2BtRuLw98vl4Gx9FNXehkVkw1Xb2Mc
	 gYeq0Axw75ogbJ+DTqccem5tL3kHFqBmAbuG5+cNNsgwg6gxhKNKA3PvlLRsad67AC
	 HdGXQAHcx/24FnwTmGSr+qgeOcCkAZ7pLki5JMssi1CnpdQxQ4/VtAAFGpSg0OE9PM
	 U236EyXM4IlAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B23CCCD4F3C
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 22:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177896943369.25135.7703346178316415455.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 11182b5ce3d27cf3d871ffa356c61119dba2e4b6e96e38f92087cc3b252199bd
Date: Sat, 16 May 2026 22:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778969433
