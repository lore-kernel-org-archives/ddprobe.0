Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1B871F0E25
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 11:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773316494; cv=none; b=jCkJEg5REE1XZIwBAsS+5joAXuGIYCH6ACHsPbvguSCDJJ9YJYQ4tfLM2wZcGQ4vhn6DUshO+635EaUYHKcsvfqiWXjk6KitJGDn7GH91Cxengbm+2CxgidOR08rq/B0uKoB127Ilj/iBCxVMY99k/XeDi1qj0JlbIYkMQF3TR4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773316494; c=relaxed/simple;
	bh=okgGDUGEpj60DGbjsQoPULg237D7/GiZSFkhVxjHmto=;
	h=To:Subject:From:Message-Id:Date; b=NUVfjCjmzdmT/zgcYY2/ybckhK24bd762GNVZH84sv4Mwcaxj4Dc9wyACzNsgkMcfq71j0vHeDYQxfXICzpfUQbQVEFY/gQJb5qVa269agExfvJi5ZTv3Q0gvcI516WciauOJk65ShoTdd56DBY2qfupc1wfY6dKLeGva4Hv2s8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nxDipzFU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nxDipzFU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C4A7C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 11:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773316493;
	bh=okgGDUGEpj60DGbjsQoPULg237D7/GiZSFkhVxjHmto=;
	h=To:Subject:From:Date:From;
	b=nxDipzFUBSJDMg/EofgzM9zJFpbk/C6Z7+mlEyFEX7uTLZRaSruQHwBTjx1iPZaPU
	 7O6vVjpqwtxJWp0Z4tl1QtrZtBOTXOe46oNUcxykcE0eJjXclya9NS1jN0ppSjnSdL
	 gLDbNl9LDW7oaC/woDiu+2akfEgs6iitm8JsKraGTXPnMQqJeC139f6smuCLhmxIAf
	 GROWP+Hpm/Q9+VsbMRNOSRgmMjKHLBLp1lW+IeK0irylOdxBoQ6BRZp4aR/tmyLvlr
	 w4LORQkHQ5ZLcSIqKCwmQMt05LZLcXXXdYyl5Zm+hcm9tUfDkABxMDzAq7ZgsK+vXp
	 2uH3c9f/q9ZKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED6A105A58F
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 11:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177331649357.11362.4581911169403487186.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 48040b16f84bc05ea44b32fb93b47b5b9527cdf187bc4457b957a1469c9988fd
Date: Thu, 12 Mar 2026 11:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773316493
