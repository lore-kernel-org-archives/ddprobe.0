Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26854254861
	for <ddprobe@lists.linux.dev>; Fri, 28 Feb 2025 16:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740760734; cv=none; b=Oq0VroaUhTm0DM7nz++Mui0v3tyJILLEikwbPKEaP7WO7TQqFpA4uvR6xzkWAIbw3p8fVq9ywyYlsbJ5mp7eWY0tNTsar8pbEjPpPFltwXNjj/2dnl/DNyu9+X5qLnXlrv77tz3fUDflXNARFv389pUT+93ao/mvSMV9cfFMK0U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740760734; c=relaxed/simple;
	bh=WoG9s6ApfZbXMIKLaQNW73dbqgZsKyverEukkkoIKVI=;
	h=To:Subject:From:Message-Id:Date; b=OIYLnQ5MkE3OapUggIG92F4g2OaEynmwOa/qS7/gUMDH/w6QcRFNea3d7FO54ThzGh+2ojKhxsGlcsgtwAeiRbn/8YINBSFyghux6HSdVS8VcHKcY0pGikKsQTn5TFoeNay0kk296kj1Hq0da+Q6uBCDCbOZJ/g5B6fp6Mn9hIA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Iaz3CjGg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Iaz3CjGg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0DCBC4CED6
	for <ddprobe@lists.linux.dev>; Fri, 28 Feb 2025 16:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740760733;
	bh=WoG9s6ApfZbXMIKLaQNW73dbqgZsKyverEukkkoIKVI=;
	h=To:Subject:From:Date:From;
	b=Iaz3CjGglQQQtKoCogIPj8N44W72Ml7L4eqCVVCuSkRAVhGeej6fRYrJXgja4OkjT
	 0W050sl2zOgxiuM4WAuDXsGmxjffbnapSsLWngWNH7wTCR5ytBAAvpHhur8nmHhs9z
	 qqYm7pCGxwu2WUTiJvziTaYip96X3FJeU5CZjAGq/UhUv7bxgSFPYOKP6FeXdYOGVa
	 b7TEk2M3HM7KEvLymiFt+TuuUKcchK7sF33TliFw9U3jNg6bv07Ca1490mHIzSb6m+
	 C2D7rvywZ9J7YRUFY0d//96xB3i/U3fl6Vu835X1SF9K6UguKJW6A35nz5z9F5L7nk
	 eAAwtPk626uEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92499C282C6
	for <ddprobe@lists.linux.dev>; Fri, 28 Feb 2025 16:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174076073358.14197.2095187636290092777.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 376e8af7c57d5808332d89ecb7367feca3ef845788039cc398618017be2bfcc8
Date: Fri, 28 Feb 2025 16:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740760733
