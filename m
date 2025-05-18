Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3110236D
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 16:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747586994; cv=none; b=WZkAz8uMp7TbTeSIA4gsUs10R61sjq/hZlyVaMix8jJC+FwMri+3ez6RcFtl5+omIXPIenJjqULR9tm/asVtjDL8rlz4LqHekMV/ws1sxw2/X+SoAOlS4u3ByakrLylmk8kIRuso6Iz5T72Tn2is8sdrCcru8Z34z8ff2kuRqe0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747586994; c=relaxed/simple;
	bh=vo/T7gQjy+rBuVftdUP42xRrpBsa1BJrYmmsf8hxI1U=;
	h=To:Subject:From:Message-Id:Date; b=js6Ti+hDC9ngRQGaowi26A8Fm2ilXg3hV8o2zm5ZYZjsM7jwJwLctrEGFu8flGan/v3iQybgXM6jvC0oRou8MLiIT7H/DRNAksT5J8PHoCYm2cu0dTkGThpYdzCUfQB4mbM3NnstfYmPbBqgcxUy+jwqhn6KCY8NoaUAXv6HodE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uSngMmlx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uSngMmlx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2A24C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 16:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747586993;
	bh=vo/T7gQjy+rBuVftdUP42xRrpBsa1BJrYmmsf8hxI1U=;
	h=To:Subject:From:Date:From;
	b=uSngMmlxxFP4GX/T7C3IuIDPw9iA0Qz/IY92pYHgYQ2OEVSlD2x3L899xvtCvOx5G
	 tCesoiGKfSdLO2446Bb1GlErJIOqKNlr1gGcphgl2PdAJwmjBgKwwya3i4iUGR8jKA
	 /FtQM2u1wu3mlJFcaFoebB5RGM69RwGc5ZlA03bjIx4gxdgYUmXjMTxrZskYWIEvQ/
	 njWXQ3snoxucLlBov+IDWjjLt+faVwNCPa9075zpDQ3YG1PLkXLBgS7ytxn+P3hhnR
	 ossmxRd++5AuX/+PIq/OK0tcsE8QRfwYzYQiFhV/QHJ4fWpt5+GWB25zoJ07sYcLJr
	 Bm0okJY7MepFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF88C3ABC9
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 16:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174758699357.30722.5965767758334025419.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a669da8e246fa01d1b8f454676468ee6e3b37118de901503129bcaa5b4622b76
Date: Sun, 18 May 2025 16:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747586993
