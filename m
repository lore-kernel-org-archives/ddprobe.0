Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B922F2749D0
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 21:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746480593; cv=none; b=Mp8cC3bJb+PCUTsmGe0YzgTVCiKkNDqn2US8Xasqv+vjjV57zdyR1bS+ew1xCGgp6s//YxjFelOGWvXmEFtvOsp+v93yW636SAaZW12R0JXBIeCnCAXK5voTuin4AI7kkAESjD94IdcyNRh1bAZ3shC26am8elv5/l32Kfqyukw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746480593; c=relaxed/simple;
	bh=xKCzac6M9OE6A8+Gx5F7bz/Yxni1lJ1sp6DuJHzzna4=;
	h=To:Subject:From:Message-Id:Date; b=hprSkmGoCME+fQ2+tO5xkYkwOVWDoAK3yy4A194l5fNUSZZ46+l2LX4BA+dBWz9T66QJSZHEhoVAE/H7zxAPQvAqCEotvkCeZkFsFLS/MQiv2zEDP+TK4eHASEOaDaXUN7Wq2bL0ZuQ5/RVZU7FRwWFD5bxLEuXaRrz7pTjaKyw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JQsq0+YA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JQsq0+YA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9AB58C4CEED
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 21:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746480593;
	bh=xKCzac6M9OE6A8+Gx5F7bz/Yxni1lJ1sp6DuJHzzna4=;
	h=To:Subject:From:Date:From;
	b=JQsq0+YA5X/xDXICAVGt7Ju0WSoEhbdbALrF8d/hljgeXhuG4qLqNSdZdoKWiIPzp
	 qwoEGRRR2AM7Dp1zCDS6q/TTmLchlMt13Z299YRTqhXCPt/a4cHv8/r7ANOjCWe49m
	 c0hSiqc/30WcN2HlO8c0wXOLANAocD4SlRopDqi0d6UjEv5tIzvGX9tvz5teGlE0ZD
	 XDDpMoQxrImHoTr45pDerYNW0JkAkFPD4EvANpZkhc3VjqwQfYsHgdwEJrXb3QlVkQ
	 GQHQesorNWWcmGeeS6pSqbodGwbc1cFYo7/KdTmlGyGm3faa+2YWMg5vvr8YGJW8sm
	 GXcL4M4a8nEVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E6CCC3ABB9
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 21:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174648059357.18477.12294691099915804710.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8406afbf0a7b193b1462adc0f1cbcdf17c2a8661a89464e94926eda324369987
Date: Mon, 05 May 2025 21:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746480593
