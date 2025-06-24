Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0508428DF2B
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 14:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750774194; cv=none; b=SMcT+YtjIGkFM7ANntZMnHYMp6RzogfODYigs8m3JX6DeD9FQ04Tu6rOHEquaa3lBXJypxJGlW6M9JqyDaGX/zwbML0nACQ70W7j7PfEv7kTXJDrrpJ2IRg1FCe2S3qalvRT/VQKfoIY1xVhqNVRl3oL5UX0iKzKdQ8+r1gFauM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750774194; c=relaxed/simple;
	bh=U1NoqnAE2fsxZMNhsoHK7OjOKp8iHGdeDfsVbXVW4gg=;
	h=To:Subject:From:Message-Id:Date; b=at2yVK4ejqmuyg6IgmsKNIy3Vjulo8Lpxoz7s9nayfoLX09YzBFcQ2KsD7xZ2pWqPJRQJggmt65pA0hp58LjwqezKGnCgErFh1j14S0ReA10uO8cmU2oT+GtHnSSTBfG0xjm1PydONc8pem/xmrQR1wk+mnu3vvnG2aT0kfT/qo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nqutPlzA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nqutPlzA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DF2AC4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 14:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750774193;
	bh=U1NoqnAE2fsxZMNhsoHK7OjOKp8iHGdeDfsVbXVW4gg=;
	h=To:Subject:From:Date:From;
	b=nqutPlzA6o2TuLBEJOXoeZmoqtvYxy2F9TpZymoSB/ptT2R/AyZYgKfpzkiAJNIZd
	 kwOoIKGk1wdefVZEVUnr4KfkUd3vSHtLo2rFuUawUBoTmKGfQvJWD6M/Xc5O/GVCRs
	 ocIIUx15sILrBp93x+uRVS6rp8Qp0PMhautiBxbswQaU1NYY/dHWKXvC017gyicw+K
	 N0QcAwS8UwHcYMaqaqVQ7rGf2lH9QYzBv6bqrsH42W6mkwLavwZsBjdPnTfN7RxdPH
	 pkHidCbido7pKtYBYmhnUHnTwhFXaI+2g6jjCLDmCpZAGIBRffiu7WhyFNrE31oTxA
	 N84tilySr4vBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F218C7EE30
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 14:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175077419357.20927.11648205054080133679.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb2f9cfa4982354295b83955790660479429bab8383bb093f4b47316a32bef2c
Date: Tue, 24 Jun 2025 14:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750774193
