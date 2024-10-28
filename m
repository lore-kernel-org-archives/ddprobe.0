Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 202878C11
	for <ddprobe@lists.linux.dev>; Mon, 28 Oct 2024 03:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730085954; cv=none; b=BRS65SUEXEPWkkH1ig1bPM9PZFbGFlbXnk5oMKWs9Vqof9jqRKoqM2+L7Qo53NczKOUDZeJLHJvwP55t0QN306To1VnRk8749ZAQUq89iqLc7OYuT7FWpI8B3PybHCu2oDEVoYuPbY+WvsXY7abD+bGHlmomtkJMRGEPEij5UWM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730085954; c=relaxed/simple;
	bh=DDYexXLC0UUb+YHNIZ5VnzXPpamNbXcg3Sepn6Hm168=;
	h=To:Subject:From:Message-Id:Date; b=kvl6KXl81G055+Lrnhk9uj5mQXSXeM6v/UHNkNc33iB2hem2JWEdUQSKYXzrcUTP/7/zy1gNAy9ip2ADgh9hVmxJKBVvpYp+6FP2cTeXSfHzdXsaqwrQBGlxxYmnMpisYPCoNkbIVxXSXN5CionkO76xNmW2gac7qx4yZNtemlk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aZnqwvSq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aZnqwvSq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9622C4CEC3
	for <ddprobe@lists.linux.dev>; Mon, 28 Oct 2024 03:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730085953;
	bh=DDYexXLC0UUb+YHNIZ5VnzXPpamNbXcg3Sepn6Hm168=;
	h=To:Subject:From:Date:From;
	b=aZnqwvSqaNiQOjQgsGB0FeO024gZUp1Uc1P5xCA0IlIpBEjbQJ+q+75AaksD2IdeV
	 axMq2qEpXoh92WXHf5/EtF+VHqZCAZKKfzBknhdu8yIjjPmLZXdpWKQZO22U9m7XSt
	 kIOCdvJeRVl9wGOuk5reLh3XM2mWkxZroiizXo200qlIQcSr5c5AxzprAmjhh9VZlx
	 26NJ1J/eTQkNDUFn1TrVEkuE2x0OuCLWVW2LJ0ZDsWyWA7nPogjnrKgKERCTzRCMBV
	 jnCM0SbZ5Y25eTKHDMmcT930Pg68Q2rLhojxlmRl+eRr+mNGum+gG0qX+/Q29XOaDo
	 hb9aOL6MlDY1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96CA5D1356B
	for <ddprobe@lists.linux.dev>; Mon, 28 Oct 2024 03:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173008595359.32327.12312856630997803345.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 179dbc2c21a79f80c8055195a5400f84f32ec22b97cc093bf61e31bf536578b8
Date: Mon, 28 Oct 2024 03:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730085953
