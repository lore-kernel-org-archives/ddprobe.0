Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41BBF3859F5
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 09:34:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780392874; cv=none; b=egTmWqdWeIMw3uiLVYtN9LOc5jzM0g8faCJqTEAbf3Ix1lBELXTJFRUj4eP4d7RzwLHPj1Q9OA2b0JCYy9JCedAZmA+So5/xYoG8jNfGiUyx7hdXmvSf2orQg8kAyYJEXt0E/KSwu6tYvvKKCdi5IWEOmRqXaB2Z/jtvvUBjyvc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780392874; c=relaxed/simple;
	bh=/KDgkG/tnam3sqllQvqhWNBQLNSe89zA68xyUacwjx8=;
	h=To:Subject:From:Message-Id:Date; b=JzhWT3U64zRLbXyiPpL8rRV6aX1cxfQ+JzG/N/gXf7yr+k8mr65XmBQ04ZwCYAsa16p76O0Q8C0WcP1HjTfimqLbcj9oghhYquasAAAiUhezgD+Wr2UG5rnktOYAKKG4apgjriaykXzn5sYi4H2yq3lPCIN3+IDeDj5WzWHZzW4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IOLxVB8B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IOLxVB8B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCFDEC2BCB4
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 09:34:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780392873;
	bh=/KDgkG/tnam3sqllQvqhWNBQLNSe89zA68xyUacwjx8=;
	h=To:Subject:From:Date:From;
	b=IOLxVB8BZuoKeUDZOaV7bGuNz9DK3gWcivyayxv6CjQa4Eo1X9mXtmN5d0mgdEcQF
	 tIgo/zhbbpqOM7YhV9KRqr3S+Dca9zFUijm4V+62dtaiH6rGiQ3XBbKbLOOnbgvSi3
	 whAev73WobJPKYfiXkvbPBVeG5xBYlCkG4JrGkJLKaCms1gP2oXllcbCr8qy0XLgcq
	 NdWQeKJxGAWQWvX4AAO8E799yh4G2dctuN388cwkLtehWh9o55Xf2aupAbDntbv533
	 D13pz/CepgL8B+/TMKqL2u5r29WA/SAI7SdAoQar/P0Rpxl+xMnynspu9KDjES4ZUv
	 8lf8U0DK6nbfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1631CD6E4A
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 09:34:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178039287371.20907.12703899783212948768.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 49447f429882ffda40c2bfa8d15d90364019dabeb03689fe2396d92273dbca18
Date: Tue, 02 Jun 2026 09:34:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780392873
