Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44BCF24B5B
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 06:44:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719470663; cv=none; b=T8JhhDczzry7DBQqAHj8362qlkSBAnz3NlF+Cq34tQ0T2K6cZ7cAwUBbRtXxWJCeY9S0jozsZs1XX0dSlqYOCZirt3iqy49h6/J2S1chPAhPFL/BW9NCu4gaDKsVWzVjiYd830GXEVVRe0F1Zq1+IhOhBiHkgBTtSQ82R8twgNU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719470663; c=relaxed/simple;
	bh=bzkR7qd+PPf9vDbKO7Q/WlMUz/aY4oUZOLog3vwn8Rw=;
	h=To:Subject:From:Message-Id:Date; b=U1rLNmlV2nKBiZkPvtZ8J8/HKo4tS5aTItOHqw1V1FDnW7CqnPzXmWvo7JA6kG3Fu3Q0Dcti2kkJRQOTDCvadwa2YXkNkQVeuy4cvHpFFvUQMKnIv8yZsyOIw6YG3BcfYNkprEOpXrdC5W7iG6jKGNlSz2ulVwxIkFcrAe4EUZs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e099fgsP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e099fgsP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7801C2BBFC
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 06:44:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719470662;
	bh=bzkR7qd+PPf9vDbKO7Q/WlMUz/aY4oUZOLog3vwn8Rw=;
	h=To:Subject:From:Date:From;
	b=e099fgsP8rdobHlI0zBXkIGvRnXDfn5YF+P14XeQBRaIPnjfKkf0uS7NQEyr9RMqv
	 2APLNMEgu8+oAtmL1EJxv5xqIwDGqXwffrPKbWAD5EB4Want2YEC8liy3PIf3F+A13
	 KYKjr+zarFVqyZ66MzfUuzfc06XfFSVhZL42auRmnaPPclh9u6z5nrVpcdZnTwL3mx
	 MDo4YHsrwogpf+witdo8eA6wrFKju+SihSghfellif0WZp+SUw8qlTsP6iH/dBOo7H
	 ZbzmtHQeLy8ZhRkCQv0hhhGZ2axGEuPKejer2305GgEv3w4kzPdU4q7IK6B1Ry3Q3L
	 F3CK4qdfmYp/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C734FC2BD09
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 06:44:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171947066277.3995.6910424272268185281.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a907b10796d3785d9a4be04af180306bd363cebc2a5999247478fcf00396b06
Date: Thu, 27 Jun 2024 06:44:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719470662
