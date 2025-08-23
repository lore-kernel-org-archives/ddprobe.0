Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F606242909
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 11:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755947394; cv=none; b=kGnOnnlJ+yLB857tRdSZtTwlXZcXghu+sjmspGZUkCt3qZGRJDgxVoOAD7YgH4+aBFy0h0l39eCYollRp7QLBXflAmec0r0k6ooIs49O+sCQ31IXdxHHPO5rcrnVlsRXw+BL4tsR8/bcyr4DsATwKDdq3vprOlYwtNW04QD5JxQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755947394; c=relaxed/simple;
	bh=HGrLRwoFH7MLF3RK+ct6tlsBr7e+zlP15F8lmHeEwks=;
	h=To:Subject:From:Message-Id:Date; b=dhDzl9eSWU4CEFSZ+S9J/z8TaOpCc4vRcgzJmTmzA2VVfJmUGJliZJ+3eCsy7PYRuNk/eRt17+L51fpPhfgTbssg0g64dEBhFKxxGtOt72JO/v0IpkfvEIsQn4a7o7yDzSQu19lV4jUK/HNxiyyWMuiEb7O1LIf7S//7GiyBEGw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kgtviQCK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kgtviQCK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A09F5C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 11:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755947393;
	bh=HGrLRwoFH7MLF3RK+ct6tlsBr7e+zlP15F8lmHeEwks=;
	h=To:Subject:From:Date:From;
	b=kgtviQCKKp7zytvIPlsKlxCzTt3VEQZjovuSYUZNKE7l5EAc/f/HxbQUZ5mBXwQnh
	 WyuQR9glQ9oqiWhAPR86jGV6PPp5w1l1262ZvFGPyNSliTqRdah65kCWNURub7QohS
	 kltrpRiIS3TnjBfUOsqkPZc1Q3khq1jiHemCbtbhxT/7D/f9COS9OoaOpDBcc2EV1/
	 i/qpkUG+0AG3KEu8d3qFH5img1tb3kLRRGtCJdMHK1Wq1YGt0aK5Gw0LMbx0nf4uIz
	 mP3P5tqVC+GAej80fjWQVbfM4Xov4XktklOCAA6IE18ZkVGR0n5vk2HZtPb/OxW8SO
	 +U0JnQ3zofiJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90D37CA0EFA
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 11:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175594739357.31414.11317472432805013045.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e9f47cbc5b20160289e27822dba5919bbcf9f049748aa4eca835703fe532eee
Date: Sat, 23 Aug 2025 11:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755947393
