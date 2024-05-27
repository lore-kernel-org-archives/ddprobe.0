Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66CBF249FF
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 11:14:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716808463; cv=none; b=KdbfOt9DkOTWhxwoRTGpe7jxpWkpeq1xc6jea+kTI4Sgk5o+x4+Aa4gL53tjfJVbyuVz6Mjpbeqy3TtDQ62McXNayI0XlYYZt4zXwMpN2BjA7sfBJzM4iTQz8bQnw5Aqd+gtezM7UwqtarcwEb0RV28WskoDIz2CkqtDWmW9x+I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716808463; c=relaxed/simple;
	bh=6MvE1QponvlDry23T3k6f+nZutOSWB8h/M2DO8mIRKI=;
	h=To:Subject:From:Message-Id:Date; b=pIon6oE5sOMuqo5660RKjV7xJ6hvvhrPIdB/V3qV/zcqyirWAFNG4IND72Mym8UraGo0nAHZZCI1F+XxZq16s6THUOwYO/kgoXbkKBZqYl8DxpjPcH4swFGm9xjwhyziGcVYK7TiNMHSx259F54fOcCHWtVW2evSLoyVvMXlwCw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XIIv+GN9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XIIv+GN9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1242C2BBFC
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 11:14:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716808462;
	bh=6MvE1QponvlDry23T3k6f+nZutOSWB8h/M2DO8mIRKI=;
	h=To:Subject:From:Date:From;
	b=XIIv+GN9L/ombSoFQuiBe9GC+9box6owfoini9RCh7YDh8RoOkJO95QK19GcUwGnY
	 0okguFpblRchvxNGeDT8P70/kXnffVjbOrjt4xv5MbQjUQlZDez18kB7VW4vx8VYmA
	 LMpDWTxOPJbqdLjLRPHsWpymRAz6pYe0HAZ32qctBnpRB5eK8DG7WOhIWag6XPyl43
	 lyiSjCiPNrERUoGVP8C2hV88ChVuYSc4Ad/wn9nK1LWtT2cN9ZgsQGNPTNaeZ0ggS0
	 Oq6R4hJKV+0buvkb7YvDhlWxKPJP/7hw7uxEBz1PSyuOoZ1DTbzTlk3ZdzH5xT2eCd
	 RKxNqnQN3eh4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C69A1C25B74
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 11:14:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171680846278.30528.5636847602670303987.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 541a8ec9d2444d39aa16c2859123fe93725b877b4f44ff30899b3030086dc160
Date: Mon, 27 May 2024 11:14:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716808462
