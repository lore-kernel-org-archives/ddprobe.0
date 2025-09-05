Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CAD0317BA6
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 17:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757092793; cv=none; b=g24c596VzaH6yzoTf/JQw3reCcNF3qdNvvOQjP8ibiaYEoY157bIIWDlAxt1S1bfmAI0svz1m/sTtPyxKcproSMh7U6hj2Bc7I7jUtOBw+IWQeUb+wf4R73YwCWqCwGHnKlq0xjF+tYvMmqo1ciIw3gxY8Y730dag+/OFlcVneA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757092793; c=relaxed/simple;
	bh=MGSk7aXXthTQAtIIClvwkrU3U71r5yA76U0oGraH6uA=;
	h=To:Subject:From:Message-Id:Date; b=F3Umvi1+5djBbUWlmcnv6wS/Jo6e0ZtnmIJKT4/EvprXMWxkvDvkOcMjBFhY+d8T6pBO06hyS5YQ0lEiO1rLU/nMwI372sz8CJq54A6SbCMQqnuTYEmnWpT+KN6ZO1yBltGIVNvC/7V3tGwrMyeqpouaVKXMm2JiQTNqxhw/20I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uhG/Cijx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uhG/Cijx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3115C4CEF4
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 17:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757092793;
	bh=MGSk7aXXthTQAtIIClvwkrU3U71r5yA76U0oGraH6uA=;
	h=To:Subject:From:Date:From;
	b=uhG/CijxccIb3ZZ6UJ7WCaXUdh4prP8bI7MsYti1i3HNw9ENX0HEjy0KWN7aqsAuY
	 NAdRTTTOf3VxDIl6sVHnEP1BncXOMxkAI/fPMxPE1AZzLNVtAH+S1MujUqEh+ke+wT
	 PVO0s9mdeOvEliu3dhcwHiy5Ql3tzpjENUwGDni0PakEmJwd6PVCaqEvLhfp2JaEJz
	 z58An5XyoqIZ07Z+Tqc52Au+Z9l4B9bbSCuMNlyD2EwW0TZQ08fPrs5N3KoAe0ODn0
	 2ZY0JJPf2OcA+CKR0U5AI49Ltg7nFlYFdHmCBQVwEYb0JsoloaMlux2/VI+Pm4nbd+
	 7J5TeyhIxbEEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90895CA1010
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 17:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175709279358.15670.6398496308241237878.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 767a1fdefc384181392e75c8fac9daf1ae94a2fc1e9906882a1916f89ff2a6fe
Date: Fri, 05 Sep 2025 17:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757092793
