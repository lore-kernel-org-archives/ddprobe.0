Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 220DF1BCA07
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 13:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756300794; cv=none; b=uf3G221L8Cpo6ztO4f1xW/O5X405jZPBYsptPsqU9dp3Lp0y7VjnTHkCEUvXl+m0II6oDw8afWn5WYYBZrzt7mWkQbsLcKbcLP2zPslZl88MkEMvgHX5v4nS9vTrIJtOsDZjZcmm1el2RL0hb8IIP1ApIx3lsFg38PVnHfXL96Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756300794; c=relaxed/simple;
	bh=wKCsKIUK/Ks67sabVZObGmQImO1FJrQzIlIYOoy8qoY=;
	h=To:Subject:From:Message-Id:Date; b=P9bkY8eE8E8pA2dC5i55bVFfTqWF/g6BJQb8pSkcjNHjfsTehnygym6dd4YvUJFWh9b6ICdIh1fvHeAYSR2YKGYfBjXEz4jO3/TmxbryHwfP7tasRs7ryjBR2xBXMtbQjGpFxpYtz+l/LO4m5LDzs02X8UfMqv2cATnVKICyxMw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LgmqCwW3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LgmqCwW3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DD1DC4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 13:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756300793;
	bh=wKCsKIUK/Ks67sabVZObGmQImO1FJrQzIlIYOoy8qoY=;
	h=To:Subject:From:Date:From;
	b=LgmqCwW3u5ew+swpi9Nc0jDVojwH5SzOlOoe7555fhzlIYh6ls/D2DQ+2DJB9jkjb
	 mINgyp8kbVt1bOoZuteYNhr0oT8T895NHXSteU52chsOIgxMM09PFcCLUVpTWanfkB
	 0rrkuDII3/2pypWBgoVDnSkI8QIt158VLBWE/W8tiBkZGP70pDIYl5pwDgtaYQ8Fm+
	 2F8DLszeflznk16m0BN5vOYDOq0HgyaT4nX9LZPOPpVctVIdPJo8wRfpVmPb7VnTWM
	 awfdf7DB4xFhN33EIX2xqdr9vW9HUJQuIyG9SVdIbIQj99aMCIiYikmRapZdzxnD+q
	 zLo12f0Gpn97A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED1ACA0EFF
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 13:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175630079357.9725.10863644606676455596.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dab4b8f6888b3ffb8c696a7904442c2a99b9ab93edd2670e336579713d67ff2e
Date: Wed, 27 Aug 2025 13:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756300793
