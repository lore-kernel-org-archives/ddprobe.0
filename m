Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20F292367D9
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 15:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774797894; cv=none; b=pl4zss5qV0H1dKvk5u+sng1adoGNBddg8fr6PSDSuGLLC0uC842tdRfK9wDJ2SqiWZifLJx5ADL2r6XefFORUgZ8YfMvcHU50lDrkAF6PGXhl0hn2sZ4gKTtdvRAqtMm00YGXk9l+cpZbd0JXADBh94gVOIJWNcJoFaBBG8gSw4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774797894; c=relaxed/simple;
	bh=EW5N7olTgJVxepVhQ43JCcsHzUTtRQF/fYBWQbLzFKs=;
	h=To:Subject:From:Message-Id:Date; b=CN5EJXIDWnOZcocEYVWV3LE05asCNJ6YgGWhDWnQupusiw8jiY1iOYEXIV3pO9GBOH6M5MBaFHDye5Z9Pd/q5Npr/M/uQav49Yai7Xr3YQq7ffbs6TrJ7RPAeOEz3RxWXbPVgjrcWsiknaHWHk9PPhPRGhz1xaR+5MgUYyBdHRg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u/RzMNBQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u/RzMNBQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5762C116C6
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 15:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774797893;
	bh=EW5N7olTgJVxepVhQ43JCcsHzUTtRQF/fYBWQbLzFKs=;
	h=To:Subject:From:Date:From;
	b=u/RzMNBQEtLtGwKFz42oKoWT8kKlkt/YYEfsFz5yc11BhAyYqsf+0rBezeSeR9aAx
	 WxaVOr5eySKA4B8vwXlu/SUWvcywwMtOwQ0oIKayA2L35mUWhr4bEqtkiTJpv0K8Kg
	 e0IDEBDCEWgy+xCZBhwDYsjJ75rH5FpalnvNt/GEo7YQIdzZ9d5rzMymj3RqZGcLDx
	 TOR2K6K3SFtucaUM42Dl2x6PhGEbI9O4PlKQ6c9/fviXgknK6d48KGizlMP58e782V
	 MaFNaU8kRF+fZ/r0wGgGQSeKU8/s/OLG+8Z+WLVpK/PI+vsZ9DI/T6I4KbjHk4cxmm
	 FoqLVQw0iC0Kw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94D72F3D605
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 15:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177479789358.25591.14076764531595651410.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 480e63a5cb70aa5380511d55565f418877e2827da080e2dfea432af4aab3a8a8
Date: Sun, 29 Mar 2026 15:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774797893
