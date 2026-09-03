Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 951B4374730
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 18:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788460234; cv=none; b=GMBmafniJBVVDDWwDENTELjUejrQwNvf4KGKAX30jzOVJm8ICSlDA7fb3x4z47zvBxHXl61CHG8IT8ojPlNyRzDuSOYtLIiXQtYS1wtKoJCtGW3LNoEW9ZTZs/qdvFBpUWMnIYk4leMkDTR5S/jg7Y27/8mZ/B78xoZDzwJ8QJw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788460234; c=relaxed/simple;
	bh=I+TXSNdWKajynSGtfPpXwH+ttBNBmo43ogpkjJwuNj4=;
	h=To:Subject:From:Message-Id:Date; b=eUjUhGzM0Gm4J3vz/N+eILLL6E7d+sq2jOgmU2pvL8t2CxcqUTqwuzew120f74HOMvBthSPU5WmTtEXi7t1w2/awp1X4lbYCLYhnKZUDZTGKAeN1VInncsJ9Gqw7KT+vldRoFHKEUHPq3EIcDrdgPx96BsHAomBExeSw3VYcYYo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FelpCq1m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FelpCq1m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1459C2BCC7
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 18:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788460233;
	bh=I+TXSNdWKajynSGtfPpXwH+ttBNBmo43ogpkjJwuNj4=;
	h=To:Subject:From:Date:From;
	b=FelpCq1mJDCbPvSwb+yWrlXL+t3+rguuFs0dXjmFExea+tHv4ZmjeBqaIquIm5nlk
	 jOjA6Cne6M20DiFIV3oiXLCPLG1nwAtPwNq+A/k1gWgoLonNnmrLHscJAVUjetLTEs
	 k88AKwLPOCRFiKtq7DMlg1Nj+Jx6fDk/QxJn6bYoZbd8RVCsru30um/Q8JAS/MigTk
	 AW0DgB5V27ZDtzYu4JklCPmpbtU/COmEAhH2wJ9VtQLmdSie0vyy49JmjOMm7XBIyu
	 jGOqHT8itWazuWRZkGkISNxEdtInVTA7ny+ZTT0HiP+GyMXqEgqmc2p5JkQTcNZvyL
	 /n/sCotyRrJgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACD9DC624DA
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 18:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178846023369.22429.7843532928741165385.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f47b66f769197e733aad11e8c23d85abdb9fc2b848e9ed9721419c23c52a244
Date: Thu, 03 Sep 2026 18:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788460233
