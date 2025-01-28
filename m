Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50D026AA7
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 03:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738035354; cv=none; b=Xj5Pc+116bZECriKWkWkffjXstP9Mm2mcg8m1R6Fa4fgc51/aoFs9zd2lI1JgsQD/YyJ7gl0tLTht489DAW86L04dKqrueWY2D62H4QHzSc0Mw4JwMTrKhyo3NhUfe+c0ZZfDEm1MmyQxy73Ml8bR0Rf09kMjHxbDYN4fRE6RTw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738035354; c=relaxed/simple;
	bh=Q9pTEhA+qTv97Ya3Ajd9lvziwotvx8oy4wdhJec05yE=;
	h=To:Subject:From:Message-Id:Date; b=CHIDjdl5iPdMBgb6aQOwi1SgAk+iQRmoBoHzXhru4OSqb6s5A2hFNQrLCsrrJ2kJ3szqhaLPT/nUzf663Pkwk7A1rlfo12MauBfdvXi+MhkJ8O4DoJZHpYURJ58RfRIrYcJoMlbxDWBJumGoTVGb6YqhEIhcgl8hqw6F2EpnhXs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MXsFPRxg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MXsFPRxg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8FD1C4CED3
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 03:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738035353;
	bh=Q9pTEhA+qTv97Ya3Ajd9lvziwotvx8oy4wdhJec05yE=;
	h=To:Subject:From:Date:From;
	b=MXsFPRxgzqtOtNen4qYssO3+ZM0rauR43UHOXq8BXl/1wLfn2vqF4aSOSdCgL0QxC
	 oLD9tTr4Z07kx1sk1YvKU2QUK6ziJVznJ1E0h0RiZlKzBBkOBwRjfqTQxYLCffaOOy
	 j5PAN9DhTmneIdOopeq8VMpBx4uuD9HFpayOVxgBEARjeTRZzsFeePnnxNMeMED407
	 S9CP97RaDAjwia1xVlzwyod+lQaORo38m5d0qBla+ogznKgw8WFYb0m9INOd/lpdyi
	 VfmV2U3cqETGI1IIGvnXYxdZW+snbxPfP1cB/6qJwuDjLjWfQUY1QkfSZ4Z+JL8dIY
	 Bt2x3K00zEFIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1838C0218D
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 03:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173803535365.7529.3989314683887555348.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12ad6265a3baf7498c253e51dc47ee3d19255d625d54f239e3ffc15db7011fdb
Date: Tue, 28 Jan 2025 03:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738035353
