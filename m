Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1750DE573
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 01:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758158394; cv=none; b=c0196bZ314GydIfCgOEa357o6ddgV1HaUt7shFW5hRuF7SxEdfSU7Yt8flRGIlyqCxO/iMVkvnBnDTXdF4Up56jjjweWlaa9DtJCpKFEL0h+3QlxQ9nxA58YGEk3IPAxjWhsu9WU/5qMeoPRZWAhTm5Zb2oFKx8LscAQZMZJ7Ok=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758158394; c=relaxed/simple;
	bh=7eA52dgtVyhP2jQufoM1OJrUZxAbclb1NHFpTwokNdY=;
	h=To:Subject:From:Message-Id:Date; b=Z1ojNdzHaX3UjRcasqhnZBJ1/YiO7+sZqNn18x3PrDq9ynpmyvsLg13PUEGIoo9XCms1xAKgRrMwjvxWy/l9z5QPWCeiv6nPYR0fG0/je6o5TA7hBckNLuGzNe4aXNXzbkepWE0Wbn8FfkfvoSWEIQTJwiv2+Ogo5k3cqx2mUPY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RgUHN4mv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RgUHN4mv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1C31C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 01:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758158393;
	bh=7eA52dgtVyhP2jQufoM1OJrUZxAbclb1NHFpTwokNdY=;
	h=To:Subject:From:Date:From;
	b=RgUHN4mv0vBVczU3UhIjFXCoAbnDiXlIiZYF3UL1AxKDIXK4ooPGFXyKwUYPxe6Xf
	 dIczlG3f3uWppYtLqQgC9MRl5S1cIdIGnjl2Fr11idfVVlZSHME5P3CuVjju2S3W+h
	 eoOLNV4Z/AQwQX0ruZRIM9KEbUpU8ai/gfB8l8WTToAdGYpytj3v0zZFdVYPWXHVvB
	 hldOjISIgvMJRs1GNLhLmUiXRe3Q0tcUauPeKNGGml5Ulq69VxCHH1oWXCbfiiV8px
	 G7tUBmkrPPP210rtuqaDAwRcA4UkdAV7LNJb//4uHoIO2SqS4KWwqIWEiFLyqsXR88
	 XORORPTrwDDrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FEDBCAC59A
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 01:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175815839358.28274.6476451730553961226.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6793d76b19a2c5263981b5fdbcb50aae9a452008ad04fabef12a24d0c1b806d
Date: Thu, 18 Sep 2025 01:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758158393
