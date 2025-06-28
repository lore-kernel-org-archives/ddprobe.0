Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38DDA2BCFB
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 18:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751136596; cv=none; b=Hwg3TwXmodWZpl1vOIrmoFBb6pkMD7Lu6ZV/w3cDzrYqzmuk/jmJoUEtfhO1Mf+K/Bt6vxfO9hmVZEN8ATNQxmg21orRfgvVESqmGk/wnB9t4+bNJ1sV5mP2MPlWRj9AwpyUTHLnPjFmYtGmioOWIOjVAiHX4CbUvBTRVCbA52w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751136596; c=relaxed/simple;
	bh=wrc2wFFRV35q2lqdd2zaAYSo3ZKDiXMNwtGgyHHECU8=;
	h=To:Subject:From:Message-Id:Date; b=Gym994arZ7p7/LPUsZ1gIsVsDJfq+b5ZKH22O0J8NHo16qoH8MERw5EHjQh4IiudTuSq2oNA15OUTs5ca/Rxkv90ZBjXW3lH+QmGS+jTIswTfa4EFHKPj/oaZ/3LsJlfw95LvqthleFEMXWm24kLzm/jXMWftNxscj6AOsuTUnY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tKMAK3YP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tKMAK3YP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A76F8C4CEEA
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 18:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751136593;
	bh=wrc2wFFRV35q2lqdd2zaAYSo3ZKDiXMNwtGgyHHECU8=;
	h=To:Subject:From:Date:From;
	b=tKMAK3YP9tlRpaCjxjsAyxVB3WsDT52Nat8qJNRNXP4V+GlW8cyqyy5u4VIor7PZB
	 s+OkJRKyOMdALFuNPKVJCq0yAt4AIbvN589V8PlQtLWcKSC+kEuGv7Wkh6BUPvCQek
	 takLepzN6GYy12FK1ayb+93+Pi8+BlDOH4NT/hs/G6zR/qQ4UbJPl5CeGv9hShdfeJ
	 WiduB+HldkLfOi5DBWPD322YvxFWVfMondi3V72fBbWXDxn70T2eHkzLVaUKUIPOjD
	 g6DgrXL3Zh8TlZX2kGUrKM/JJRo5CY5a3hbDlHxbRY9eVjLyH/oLCU0AdoSphGssiF
	 0toHJpIzInXNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 950BEC54ED1
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 18:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175113659357.30760.17744832621923175909.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 04b740495da550155eb35930c9205a46de482f7d598d6da72b603929644225e3
Date: Sat, 28 Jun 2025 18:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751136593
