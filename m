Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29F3F2DAFB9
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 18:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772215494; cv=none; b=YC4EZI8lcAvPjVGlM0kYA0sdpc/n6orz2QRHNmpatfsiNe60NSKTQXhKnycrU5EN7y7wGuObd2r3t4Wq7F3QbWW1+q19zdMfJQIEG7SUqjwIeFzC11RNQxbOSVhN1xGSCmwwQEI/G4B1/r3E4uZm/dEaWU479tEEb6po7AWgreI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772215494; c=relaxed/simple;
	bh=FKFNGpor4CzzNLUU1e9xbVDUGtlXspfuW8XRfDJfj0Y=;
	h=To:Subject:From:Message-Id:Date; b=lR7J/poJwxvey2xfY2DFvw3yEf1rsI5HZ4p0HsQDQ8DxKUiEYuAjz1Y5yAXIiTy6g5tQy8PEI8gP46XY6ge7eC0BJkFv4aQnTiq1YLDe1v+cJisuL6bZtMYukzsuKOtNC9ixLVG0y/w2QE/Wh/fCZw4fWAvQrco0h1dUnIJ6x3I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZTwTIGMk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZTwTIGMk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6450C116C6
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 18:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772215493;
	bh=FKFNGpor4CzzNLUU1e9xbVDUGtlXspfuW8XRfDJfj0Y=;
	h=To:Subject:From:Date:From;
	b=ZTwTIGMkyklX4j3bnTqN9mLpTEO4Dnwxd9QjvTmVt+6py7f6MfbUrLEP0OwROjPcd
	 50u/AEv3F1Jz/yqQuRJMCstUvLu2UQfNPqP5/ftsXL3+sruwrTKdz6IdugcWWRz21Z
	 VVgrbkIZIriuPHbr/LoDtKS2fz6aJDmsX5KDUVw/pg58ek6U4pagpxup54ZcViA1WI
	 wqjXd/eugHUzfnUU7r9GJVAWjeQGTuQOZbqawo5m7HvF81gq44ew8CaF6mQO6s+sfF
	 diLQA4SF3JPL33Kg/tUnGGiR7NsLmN7uaYuScd6lIqcCOYvW3kdW1fLkMFuagpUUbY
	 8NxF198S9jEcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A63DEFEFB6E
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 18:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177221549365.1670.968390328668910876.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: daa4b28b3ab4be0a0e28451d8026ecaf4e8c63c03f29eeb25aa4057894f8def2
Date: Fri, 27 Feb 2026 18:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772215493
