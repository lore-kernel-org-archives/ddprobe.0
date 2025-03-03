Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5087E215043
	for <ddprobe@lists.linux.dev>; Mon,  3 Mar 2025 13:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741007934; cv=none; b=rjciQFggAYDvh8tzPQ/TPB/QaUCC4B/hN/88yMq4jT9mY2awMRz6lIeCoLfRYBm2tdeQGYX++INwM31kfjXq8pafhnz53k9uFlb3M3NLABN5H3Y8/Xz3CRJfVHh2Yg1oHcJ7ngw/z/70jDR7c6LkMGCuU02hw+UN+zmiXO4RKSU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741007934; c=relaxed/simple;
	bh=mbuCRt8VljqLRy9pmPBPV4EzmMKyDuCjLGJI3E7qrsw=;
	h=To:Subject:From:Message-Id:Date; b=J0IilHZpjbc8QEIza1zoVjF5clEQn2Jon8txOhOdaMK/YTuZ2mScx/2xrAivdx5QVbd9jj93FpnLV4Yp4n1Sr2MRLV8RLg2svnUhp+6xFjh12Rf9qDtvkuEwoHSDROkLBFLk7MOSZQ+2oSrPRyRvboGyQClDwPyjjcAV3W6xncE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IC5nrlMu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IC5nrlMu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9669C4CED6
	for <ddprobe@lists.linux.dev>; Mon,  3 Mar 2025 13:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741007933;
	bh=mbuCRt8VljqLRy9pmPBPV4EzmMKyDuCjLGJI3E7qrsw=;
	h=To:Subject:From:Date:From;
	b=IC5nrlMu8LIGLxyexGfQuMrF/30Mp6ROgfUEeIIMEXQIhwzMHiN7L89gc0RL6Sv9a
	 W+uDgRr9HObZYC6xCkNH6QcX8BCJb3kWjCGWvEYqK370oL88KOIeCZpR0U049n7Qn4
	 qbtaW9rMhdafNJ8VONZqrl4jnJW8QEWqcDT8wMmNTPEmUoUj7BMUNAEo6t0+LVn2/8
	 Qy4ISaGyANtTpzX4MsfVvwCF1JfjVx8VN26Negrq8ZDZaHd3N5qW5gZDVhnX/uP3ra
	 1fr7ALwnwvVPxU0Lj71wRyPr7hFrtb02ZpRirZkfj71jQutP1oDohH/JVgBhcJ/hrd
	 ruzvj9gMXnp8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B599C282D6
	for <ddprobe@lists.linux.dev>; Mon,  3 Mar 2025 13:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174100793362.10891.7775858174053951018.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 18ae715ed871563244a62f0219df64df6bac1ac7dcbeeee22051816a16b54954
Date: Mon, 03 Mar 2025 13:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741007933
