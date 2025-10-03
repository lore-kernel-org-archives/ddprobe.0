Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 379861CD15
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 18:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759514994; cv=none; b=gGkeBP1UztaqGHXxezVwnMeyUzW0yOPLTNi4/RYiTf5Vo0BAdzDJjY4eQ960s3kUXjRFE2lYk8o79EZjGn890BrDVJG8OHyY/QuPUJITGOLEvpiPa4tgTMNFK68ZBjOeoBYJQcx2cFv9Pc9L2Jfto2D2Es8VO4ImUlmumSOskGw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759514994; c=relaxed/simple;
	bh=x1bY2kX/3mW2MRmpk+HcD7FSJm2DDiAr1t7tsBqU4wU=;
	h=To:Subject:From:Message-Id:Date; b=FsPnJ6sAytn14zga8cGwrAv7TYMJQ9mKACj6UAwiMeC7j9rUuDr48dRXLofjfBuLu4BbAfDhOlWEFxApb+BaqyY61HYAEVGwePik9/UhRJjh/w/LVbf72pNfSXEng1YLzQcekaRZKcLaE2U7bwMwos+KUxKlF7UNNMDFKvJFQTc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GH62POq4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GH62POq4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7766C4CEF5
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 18:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759514993;
	bh=x1bY2kX/3mW2MRmpk+HcD7FSJm2DDiAr1t7tsBqU4wU=;
	h=To:Subject:From:Date:From;
	b=GH62POq4lDonS96Q/neaSCChb88aRlvpsu6wwcgJkiIaBK4DfRpxizBYKxbN60lq7
	 1A8+hDWU9OvbswL2s9ozCEINKxdJsZrm2jAdzUv9uGkQybHPocdAmixPFiJOfWbHFK
	 B3hX8IFdP7pACgV5Jz63DxB5sWQNDNooC3Mvpcro1i4QEUtfjzrDThpqq3wNKi214H
	 LqzEQBTPj7X+sn1PxuWj3vFyzYKvtMSbUfxD3A9mhLq351TaDAb8l27TxZraGcIiZE
	 dunr4p6PyKkUA6TdQVlHAL77viaaQ+rhxNv0QvQwTeOwstt+cCwqoDMqxumEnHazhU
	 3QXmJDH2SfkuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9533DCCA471
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 18:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175951499357.22823.17101204172827769371.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aeef3975e37d1c6c676d96d03a48f9aa802c78c2f365269bdf2ed5587a4d60d3
Date: Fri, 03 Oct 2025 18:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759514993
