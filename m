Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D0B41C5D77
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 01:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769219034; cv=none; b=Uw3rqSPKvTEfElihMbmGfLqrBH+nr1CQlj1LfNi4YSke64Jt+6G9JOn9L3jEHMe/HZJJXr9IFHagjtNcQBERJT3uqIvH8ue1AEsFKdyKLmGLiwK9Nc7g4VLvWkieqk9As1mLYi0cBrtTOceJ6HirqntUzhKwFmkfoXuKfb9YQ8Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769219034; c=relaxed/simple;
	bh=kUmZCn04hJrK380/LENeO0vlzQpQ2rM+DXcayMTnH14=;
	h=To:Subject:From:Message-Id:Date; b=ikrZAd5V3KSnr4F2XYfbILGeE7UnpBfs0Q+xVjDZk0CEvgBUUTMJqtKo5HjnNw91ywHYyOtzODaNnPWxGDIAIi95bBqJIh2owQhPW/yTZPyDCNUKPttpit1mzJl8KhaVp4V1pGOQ/sO4/OJo2MJUn/6M0H5NJrLHFTc6/UgVPSM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k8SZ0QAH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k8SZ0QAH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D05BC4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 01:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769219033;
	bh=kUmZCn04hJrK380/LENeO0vlzQpQ2rM+DXcayMTnH14=;
	h=To:Subject:From:Date:From;
	b=k8SZ0QAHuMWK7nxaY1WNIZuvLOgTKpuIukfkT6AVFl8qOGTM/U+RQD6Ggaj5Uadgu
	 3nUNy6/ztho3hMn595VBmgj04bUZtnMOuRqI5RpVCHnCeq8IwqyYS0NV/Gn74BgOzF
	 FeSspHHBy7GzCObh42xrl3ky5iPjP6OMOJAZ61ij8MKO9Shr8JADvZubrwMD8NKuhy
	 hV67WYuUcKyrakGHxnSaAMqAxf44AgOpPwgBXrdLq4E9jgY0Q7QAfOOlnZCcx+/Arm
	 ZVpNJRlb5WAeqReFGmPsfWgM/d4l/gKAFl5x2dsbzDedrWPzItL4RNNGodThlpTUhw
	 A6c7ZhfsOUy9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED85D778B1
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 01:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176921903357.21780.4372064084236078492.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca40544b711ac5f3933e9bd2f7a59a895cdfe307f5b9b3ac6f873a21682b965c
Date: Sat, 24 Jan 2026 01:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769219033
