Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BD7F1B0437
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 01:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761356994; cv=none; b=niOlXegD8wslXmD0LhVlaHBG9+bEb+oqXb3JVfLvfioH/zTdjChFlwebwHIN/DyKxAGSuUfLBew6NdhoLYRsJT7BwyWHcqhMqmflZSAw8IfyTrrfv8kKJHT3lDC4ASw2CzAmKlXHUWWz8hxZn0pzN8t3qKsykDYnaMcGW92k8mk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761356994; c=relaxed/simple;
	bh=oL65dDPonoNG71saNF7twpYxkbiKMprq/f4RByrXLG8=;
	h=To:Subject:From:Message-Id:Date; b=Td3Sm1FzP1deJXqlckD16KErTl76/3WdMOzcMBcpN/RAuwwiVdrJSDQpKUwZ4J7p1O9mjSUpRtDfNkglMo3RHIRg8QNQGWLHoLYsudVZhbTgMT1XQ9J5bUfJLLvHH9vd8HCDr3Sptbtl1HK9UtVj6nT7kR2qA5Il2NbPXWk1pT4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vx4CkDMf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vx4CkDMf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A67ABC4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 01:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761356993;
	bh=oL65dDPonoNG71saNF7twpYxkbiKMprq/f4RByrXLG8=;
	h=To:Subject:From:Date:From;
	b=Vx4CkDMfTLKxoy5mKbmDC+um08AoK+lEnRV+LJee3IFGTafnAtFoVUv2N1yG3Yd0E
	 U73JsaAQjEDEiqrI59BnPr+cibKAAbpQTaPumqfZy53S7pRGSxQbDpi16VZIyCE31Z
	 S1iSbdmAhNwgRzuuLw7FQTYL76QrQEvMoSC+u3krs/P4DgqZf3TyYpqpEFZz1gQPC+
	 cGpQrHAFjtgEzQ9Av1PEeebk8etLWPldyVwPRq9Jch6/dMdcLZdB6q2ihKsFKLy6xQ
	 Vn9myUpncRYY5jaiGk1GeMXk0YNHx8Tf6cew10KNAcQtrjRMVFwzxM5Xo+Y09pq0uX
	 GVdT61gxXoPuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9446ECCF9E0
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 01:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176135699358.27705.7113728439205824573.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cfb278305088a4d0c079edbc3a7cddf6f0582a5ffee93345783fcb7a3e15b972
Date: Sat, 25 Oct 2025 01:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761356993
