Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FF5D26AEC
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 05:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761283195; cv=none; b=LLhGbopi9T/vM4O9Ru4WSa3VE/z0kNhNsdAvEmhHJdYJuf9/087ZCpzBJPb6DYbMxWOe5TjClI9hPP6PUljS5F1s4mH49ql/SMM67BjZkBxRTiEe7V4PJYtKqQwSD7QCzGQnc5b+bqrhyLGNgBOyTHH1uofhPddCrRRuftRUy7E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761283195; c=relaxed/simple;
	bh=gTTtaMjAT9uTHZ9bycXb/cTUlcjo/8kh14NFSSqm88Y=;
	h=To:Subject:From:Message-Id:Date; b=C3pXeQVFWADGcxSxo2RPResF7tg7O9cRQkRj5nR92RtuskxbMVL0JVlshV9G432uLZnpCrCZqrWQW3Qh1Julg8X3BrTpYnWKbO3BxJQ4Hd9JSMiN3NEO7IFlnY4yYaP5Y/z9m0DnmF32I2qAzSjQ7jZmobivEpOVXXhwlOILVz8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VxRFKknN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VxRFKknN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A33B7C4CEFF
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 05:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761283193;
	bh=gTTtaMjAT9uTHZ9bycXb/cTUlcjo/8kh14NFSSqm88Y=;
	h=To:Subject:From:Date:From;
	b=VxRFKknNP1cABZh667yoFy/aJhJlKWokKcOFjLhvRa3YEqVgC1eqKGmSwjO1OO/MW
	 l8Pt1d2+1LV/BlK8rSNbMMm+K4ZYvudZB3Lcy0Dy9AiCgsUiQwkKqK6Nl+i2AHYy/Z
	 imytbBc49xQ6pRDaRRkP6XcPC2fcOm4EQBElEE3llXEBxoh1DfKYpnUE1oC0OZNvYr
	 f20FCVC7+H5F29zcJiDduF/gCNiHdKmo8Cs8dg9OFaI1R/9LnDKdxUQQNvxoP7QpHz
	 ILsFBKwEZrDqgil82Of4YENtbPqyYMZx/KXZWp45HfKAUGRxrKzgM14oH+4Nul8Gqk
	 RQ44qd9AwI37Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92653CCD1AB
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 05:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176128319357.2244.3824357936932733374.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a773a0280b510804ef39ba378c5894c26a61b67627baeeecb81e0f915e019b1
Date: Fri, 24 Oct 2025 05:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761283193
