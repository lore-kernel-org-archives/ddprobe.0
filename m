Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39F0A3FCB1A
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 18:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774635294; cv=none; b=DMzFaezse+13J8o9wHNNqWK2BFvtkmaLFnxiugm2yME3FPUFSuF7KEUVo5FyNtvYIyuel5kutklun0DK33uSkLOJlkI+2mJzCV0hsjZ7lOpHBGurzG7sDcCziE4iHTxMvoHiLHDDq63vUTZpDEqqghcTeqlqRlwTiKCV13xpX6o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774635294; c=relaxed/simple;
	bh=HGNK6tC4N2o3/gbSGXzzeGsB05yC7GuROyOieeimtx8=;
	h=To:Subject:From:Message-Id:Date; b=rZAcA81cBx7SU07NpDpIS3KoqU3hM0kLu6cso4dU+IQBnsuEFVpsDaxt2Suv56WORhoJXtMWXApyQ2w/he2gPzTVUJ2oTC2bq3ymX2ybmBCQE4upjC1s+g2DpSwI8/o46rrIKVbOvkfNhQKf48Q8NlYxWHsVNlkDz6t64ehz2OM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WDMg53rD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WDMg53rD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A83DEC19423
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 18:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774635293;
	bh=HGNK6tC4N2o3/gbSGXzzeGsB05yC7GuROyOieeimtx8=;
	h=To:Subject:From:Date:From;
	b=WDMg53rDKb3EJ+NgRYlUkk/NGgJ0jp9DcSKFAjtWcdGB8gH3CRK4NJ39QblB40tz7
	 fVlMgDbPkhXS7VL9vv7R4kdzKdVvwc5NRAb7FvvGSte33+SsMTXv9chvrnwpU26BSH
	 1cj36htBvGb0k7IZ5lz2Ek9EhXdhs50ES8U9n9E+EwXPQlGqx/ghyKLJoThcc7sRoi
	 BrZmgihuAP2eoLSm52UUJarSZD3Z5PYYs+/G2R+YWaBEh4ZMrR86l9E+ipGzfrerkT
	 kySo2ibMawaXD7ViBSU7N8XMAeTimaBMBNqKm+XPGUWPh/XwnLdF3rgquHopXTaIWm
	 izfyHIaQ7n0AA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 942F010F2865
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 18:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177463529359.28147.10257481544731339423.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c2a98f646aaae7ad9e2f633443ec3e3b0d126e8739246492df00828f1b99209
Date: Fri, 27 Mar 2026 18:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774635293
