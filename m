Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 309562417E6
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 22:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758838794; cv=none; b=g0cGvnQe87SmV6/w5XdAlDfMC4mfDJdr+3c8vGWGeBgS/o4ggJwwSiHNe01Uktp97UF1TsvRbnZIYTJy1kS/Ajy/W+sOQYYJBaplxViXj4e5XRTIVgJjhKNav55Oj4M7/5e3fQVx/315wIrv5fYh60H0rZexhGgAOsBR8yVgeGg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758838794; c=relaxed/simple;
	bh=TLd/WkBao50P0P2LtPdauG7WUqx4O5RJSQM/H8RPPgM=;
	h=To:Subject:From:Message-Id:Date; b=knKFH04/EQzg2HD11gJ7a11hD8BlpLLFo74Bm1jMXWyy/71dR57r5YUrUOtBLgaMsPQ7Byak0HqMenI1gJWaVtY3VPjM4fSHHQ1QvEpPoXzBjrVQJExgkPrQ8FLAwfJwo5NSEwL0401Zv33Xh6jyAFOoaCKRpQ/6UTOz82rjbrE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FK6bSOw0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FK6bSOw0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3916C4CEF0
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 22:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758838793;
	bh=TLd/WkBao50P0P2LtPdauG7WUqx4O5RJSQM/H8RPPgM=;
	h=To:Subject:From:Date:From;
	b=FK6bSOw0KmJzBnIhXN5J9hb+IpiJ6nuuxpekaa4MpZpjWi22NuxE8ZN5fhLzB78yp
	 XRld3vp07/ftCVL0dcA6tIbF0GnsFXuGC5WhGYEMfPPoe8rwc5FmnBK+Yzdv5ZSyy6
	 mFQafj6osKPrxMuSdogdeJcmg8Kmm09ym4Kpym/qTHu/U0Jw6VIn8OtqWaFtSLz/bx
	 d0n9HRaibF8gXFJ9z+rh4Z/5uEk6wBNcT9qrF8KH4gEWTT70l+aix2xGVFv5nxu49o
	 LPKuWnJyFjyVjJXtK+KOPKoLymnurlJnLPsTTYTaG5vQ4Hz5JWzSa+drMayqAEYBWa
	 /mDjji+jCJ2yQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9378ACAC5B5
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 22:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175883879359.9911.8768904162209411471.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ee02394212f2c49b0b8a9b02aaa8c7bd75d0d7e4d48c07972f6a6ce301f1a41
Date: Thu, 25 Sep 2025 22:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758838793
