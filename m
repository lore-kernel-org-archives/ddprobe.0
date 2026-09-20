Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B9A3833E348
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 14:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789915834; cv=none; b=or1yeUUe5mGmS9J2D2e0liJmH5Zer6jKJ56Iw4xz7zqhlCdEvi1CzwR/U7TMmyaZankCYJ32c5ZBDQP7TZWWXj5dA20v3Bp+zFa7TV+opkvSCfLByLq1B91fTfvvk6Pl6fyAKf9jfYOg8CAoZCfdcoFBQZpt2Pjx2pqjqeFtn4I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789915834; c=relaxed/simple;
	bh=fIxL5e2bKfU8SROT25DXtKn+B0Uwiv9B7JzggibEsUM=;
	h=To:Subject:From:Message-Id:Date; b=m+08ayGmQh+FwarQw5mIktkABSmWBdx6NuoldyMlh7Nw6s3vqJm0Y8TBqT7BZupM9e2pLSbI5457GfjnJ4dQBwffL4rV9Y3Ci9s7PqlSsy18+Xt0LWvUvPFYIHiT1Zqo6PXzhYe6QmGtqUlV+FgDUnh6+wlxFYnBWkXCGR7wAw8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ttxUPZ9Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ttxUPZ9Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9F4CC2BCF6
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 14:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789915833;
	bh=fIxL5e2bKfU8SROT25DXtKn+B0Uwiv9B7JzggibEsUM=;
	h=To:Subject:From:Date:From;
	b=ttxUPZ9YHIWxANkhapSoXsc+RtKKLWZyi76EGfO9fA66oc23o7fsCBoHkoe8m5ejc
	 BaL8TdzAsipkJenOte8JmhmiGEGqVH0uYpDtXN+6a9JBBGifWUro8I4NQVIqGlKdWp
	 ObfzBzFpGIwFlMC00+B3y4b6jCn5wA+IYplOCCxQjvi3in9JYofBLlpK4pxUg6gleP
	 Ngnf9SzKKxvYYRTvSUfrKPDuYD6eAGR+DfZRUao8mBTHxZ15UnXrCB/iVYThIX2HaY
	 Y7dYkTqLxZYPpICZwjL8JGTnWjENVuqGy6G/rbH7mHGMVEuZxvCWIIWzgYU7hDqRtQ
	 KN07I/Kur1xmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9DF1C982D8
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 14:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178991583368.22191.9227763167561491584.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a3984677454d15adb9fd75dfd3f9e98dc538966f84e92a27a198a2da5ffbbf1
Date: Sun, 20 Sep 2026 14:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789915833
