Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FCCB72607
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 04:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750049394; cv=none; b=VYQI8pH80QTcRNLInKO5I7r9gMBf0c9EKj94KroS5znDQNQl4Syhb6cSgZgjVQigTynleu9Vai9qsimcVlzzX6+mOfye6qSDszwQoo3uhBpzugjK7vFtjJBMyE6Ul7paIseh1/BGw6fIYW8UIgZ6NltGIYXRDNcHRD6NHDlqYJI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750049394; c=relaxed/simple;
	bh=Npsg1jfvWOGxvY56hz5qZXrSYMPbyGOno0UBXvoFckA=;
	h=To:Subject:From:Message-Id:Date; b=BFQhOuE1JecGrR5Ltx2MreFX5G/FBnK4b+uzT0FNSQ3gsWKrmxA87pC33aMCU9E+fiVmvXlHZg4pIhMaHq0bP7zV77Z1/OnzvLmGxSZpJH/glUHsdpJayVtGN3FBX2nfkcRmSfvvBahk/0o5ewuColrLozXsr0yG0obGTBxYDKc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y9rfr8t6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y9rfr8t6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA9EAC4CEEA
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 04:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750049393;
	bh=Npsg1jfvWOGxvY56hz5qZXrSYMPbyGOno0UBXvoFckA=;
	h=To:Subject:From:Date:From;
	b=Y9rfr8t65w0QAReFHFLQyOwn0KFV1mkwTbsfZdk5Ad3oDuG3N9Sa3LcE+rYvm7bDj
	 bQ3fGs8CqZf1rorlTvsRo/D6n+6L6AuyFDIVwfrWppgwig/NPVeoLtTLaKjCwz2MmT
	 sKGwD0M3dx6uKDn0OhLKUlb1UZgIol7fvJkC0RQry8cw/qipE/LSachmbAdLYfI5+I
	 w0rlZcJhGuPqS3DQxwamE/2AxAME/WlS49VQ2N7RhVzHILZwa3C6KcpRrOg9UdXaHb
	 roG1TtKdx24ciHAeaEG0FNVKCDjc5IevfhTvTFYc4TUMhbNEzoekPsMwaMZs5usRzB
	 CxJIyaki8imrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94E02C71135
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 04:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175004939358.4372.14980946983285178940.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 249d6ec1c628c371653921914333f8d04031dcc1652edaaee6fef136260f60be
Date: Mon, 16 Jun 2025 04:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750049393
