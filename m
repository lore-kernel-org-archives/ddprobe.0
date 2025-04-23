Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 379BE2701BC
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 20:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745439594; cv=none; b=Kka+2xwc1m1w+WdugbDQQNQPuvLK54DC8w+be84hAsEKrdrZRgoS7xN+cPx7mQCf+ieuRNHnJ4k3iJjF3l3Tgkg4lBQqFGuCoXQw8+fYoAega/0UKKgO/+jv6DV3ttDdoRy5eaIdI8AlTU6I5/QFGkoBaC4BM3DG0VjacYB4Nj4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745439594; c=relaxed/simple;
	bh=P353f/BwZ4TWfz52GWTlRDjk7nRZKjkeUqb5mQ4F9ls=;
	h=To:Subject:From:Message-Id:Date; b=ZufylebBE8eqqMkgc74dsqxXMH1Ida3zPd4Y6bI0IOKLm9K/AXwmwQO48smlHr8dS2mF3lHIWSAY5ax2/2truyf5qHwMeDYSeFh/cFUkw4qDGDUpgwDBW9squCBhxOVfTvyqdkmzx1saJx3f1V3dClvVdtQ9AZmZhysHkEhbL+o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W6ILiPGn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W6ILiPGn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F093C4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 20:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745439593;
	bh=P353f/BwZ4TWfz52GWTlRDjk7nRZKjkeUqb5mQ4F9ls=;
	h=To:Subject:From:Date:From;
	b=W6ILiPGn97snk+tzW7Y/f8WA0EtToCpW0wsBzJ0UEQHeN4uZgjUMw0gJg33KzDpaN
	 nKfI2y/UpLgS2luA1yNPfnIzQfw/MyMuopGBvQsEsjQ10CNCvWGFL2lNNqNaJH8C+2
	 SKAESodqBD2ftJwc77XD05fDqTy1hJCwv1bID4jUJkcFjrX6VArjlIognjISD1F9gP
	 yVNwjYnPnnn3lMDu7qFaWT7K0/01AqcIpCxv2wXjKwKueVC2VGCGvQsgayVH5tRIRs
	 6/kirODs/PLeDNm0gjCaHPf8gHc4d5ytVD/4owZjvSCENjlq1miQWFWUsO2PndebsI
	 HMJF0/78ntSRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E991C369D5
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 20:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174543959357.430.1231734132300733271.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af62ea3390c07ef489b7ff0dae3f37e894088b55e8c2d7014cd717c754236526
Date: Wed, 23 Apr 2025 20:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745439593
