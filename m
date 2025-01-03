Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D61514B96E
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 01:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735868754; cv=none; b=WvoJoPfrUc+ySj7HsaBRTK15xzxwnXQ+a5DA9cT5bT2U6nxQJnF2EqrV6sEruGIRjrn9qov1LfuDGiVKgB+aC/m/JWWZA2GurRGkhyxCkQsy/tjp2VppunYPGA0xe8ArhRanHKvg6+thnLHqigyjFnYyOQjfYtvp2XzXVg6scgU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735868754; c=relaxed/simple;
	bh=VUXbn8NRIQ6yVYxvqK4Eg319IuNKv9JUlxmj5dDYzrQ=;
	h=To:Subject:From:Message-Id:Date; b=LFLmHk4BqQgAKHfUQrwc5nYb0a0t35qjF4LeLmP1+HrdASYfMwspVJBItxSRzOdR1Bw4w+kDBWG5tCuYcEYdhyZiJAtOLbwHrSVqQpFRsw6OBKmLF0pWD03yASnPGneIJo6M4hapDay6N3O2BjVONBXH46XsBpveX2M1MP8vi0E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k1Wwv+sj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k1Wwv+sj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A566BC4CED0
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 01:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735868753;
	bh=VUXbn8NRIQ6yVYxvqK4Eg319IuNKv9JUlxmj5dDYzrQ=;
	h=To:Subject:From:Date:From;
	b=k1Wwv+sjgqC/ZN5SIyV9yVN1O6C4+pYr8ebaLzjkwNTyUBYm+0msHMq3cTkTbYGBm
	 p//jIPoAbroapEC/rVo4HzclZgEG7QDEJvkhRMejXiB3xkxRkjNyM8vMFhkwQxIodD
	 hcvFpgXQ6HT5w5nS2bmBWGsX+9f32+evz67II/SlmwOwnzbhWICC7GyTeTj8BsT0X9
	 Gq3sXm3NhJShz4Xk2V4wnCr77T8yTQh91hsyn1lW3NvMd1ptPlD+wiYgHzX8iWPwiY
	 kN2G1/CR0UjOU4ido46UXn99xiDPYM7kog4EZbaHqambDpF9xEs3pJfsdNKuSwajPh
	 B8IRU4ZVbulNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93EC6E77188
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 01:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173586875359.19939.1609222421702193324.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 487509b33e7cf66bbf9a6e0082b5431f958f3a791fc331e501c9adf001c9f5da
Date: Fri, 03 Jan 2025 01:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735868753
