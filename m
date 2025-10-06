Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17C461E51EB
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 22:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759789794; cv=none; b=D+u9U5sN+xAyfG8GLDOd2UWsStLbe3PqPAt4kcyh1Z5fOad3IpZxEuiwKM9FL/sU1CFweDIrYWxeL3EY5DMkny264LcIKyYT/97io7QkwUVlopdPzTQnHQ5WMeMKHTyXmtEhdOB1TOmBTn+3Ahx0uicU25m/9xmW9+RB06KVRUA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759789794; c=relaxed/simple;
	bh=RTA3oYm+IXmtTGALJL39WTCvoqLeJCceVeKpDQiQnNs=;
	h=To:Subject:From:Message-Id:Date; b=DLYRxHHcCYmQl+1idpRV1SBAmk4mcPmOe4zNsnsPi3XrZf/cuRvMf+kjQ0TbmMF/vQ7nFEXbzZiI9lpgT/XKSwJTFgikdpDmzHBJKnU2s6tFRtrVE2/GGtqLN5wk883VtQQmCky5SHzhjPRnOQzIUhmdeqP2Kiho3LD7Yyalpic=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FWAMDw1y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FWAMDw1y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5809C4CEF5
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 22:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759789793;
	bh=RTA3oYm+IXmtTGALJL39WTCvoqLeJCceVeKpDQiQnNs=;
	h=To:Subject:From:Date:From;
	b=FWAMDw1yRolgVkfY5s4cG8LRk+MUTJhXLcznbmpepfgP9lom3o6ifdDyx993o9DEk
	 soNip9gQU3ivinG6+8camPyvLSAvn4mIYaVKPXDSqZA99k9NdOsFTm26GhWtl+u+oe
	 2F1XvzY4LPS0XO1FqXaW5fOWDAqZW9046NOixQzAvwTUhi/RUKb2V604E4i7k3nHq7
	 2yUrrgjlQYNS/0t0mhKI5P3DJcWjNmFkVeDqGR9u2tGJ5cbKlldCiT2DRy5/gYP+tj
	 80ROvIoO350jM5fBd0RmbWuMnlxkHlA9whX6qWFu+6NFUmZSxWTU8kN17y/yyBDNZo
	 wEJgg2NdYOZHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91EF2CCA471
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 22:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175978979358.27084.13650523723790391329.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 00a8bfff0b67dac0d0cd8a183349f463580303ad653aeb88ecebec903ffdc435
Date: Mon, 06 Oct 2025 22:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759789793
