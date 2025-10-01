Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FD861531C8
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 16:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759335594; cv=none; b=Y/YK6jb1J7SyO3j3QyWQjZBg9OMVN3es/H6WMyUKQwEDy8aX45X30aZT60FeBADzNeOo+5zplcOaUvzgsb2sq9VwuJcnm9jiySqBYJti2vTs/R9FW7tKOqt5E5Vfog5fK0GmOxpuoc3XAfx5inC1s475WrwlirBWBGAP3zsxuKc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759335594; c=relaxed/simple;
	bh=czou8pLTWzlxBbgbz1TtOkRnRDNZ0IZtkTQCQSIcMC4=;
	h=To:Subject:From:Message-Id:Date; b=Fon2EmdxkQGrr5pt6ifZbVRixDOcszdyv10JRQYpwnnKgQtjvPE6lbf4faiN52bXgZdoZxklM5froKKynyak9OccOfHZ49Y0EN/LxwgB8iUpZc8W5Y5gOWqsNHRheKxk7Bl+IdyPO4gmE9sGe1B7F4huI9sRYqKZNR7gCa7x5dg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K8l90Jeh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K8l90Jeh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5BA5C4CEF1
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 16:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759335593;
	bh=czou8pLTWzlxBbgbz1TtOkRnRDNZ0IZtkTQCQSIcMC4=;
	h=To:Subject:From:Date:From;
	b=K8l90JehCg0U+3lb1xnzzc1NNkyHJ7mFriCxAWvlDohZQNG2WcN25yHBGwdPKaFhv
	 tD/IY4ao7ub42GdBU/6hTU67zPu9czn98d1zcyvpOmh+aFD8NWyQkS7JAyYHOBACb2
	 qPOCwCme88lcV+pOD42ghNaEZET1YlmUGz/UMBwUsy20XaQpsNMMRDZ6qbV2P3SDlh
	 jYoKG6argInQe8bYB2OgOzrHbcUfFzL6NdpUZbIAXMvciVnt2JXdk0zqM4h1827Mbp
	 qucz4/tpq7RfiOFNlM90+q55BDhJ6hV7wucW5I7qYxHNmbSU0hqSMc9nHKiJczQ1Gc
	 nxl+sDCV/Z5Ow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9153CCCA470
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 16:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175933559358.19152.14667270564393372870.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 809247e55c9dee3f7cdfbcab13df57a25648f7f8402413f6a55e9066c0cad970
Date: Wed, 01 Oct 2025 16:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759335593
