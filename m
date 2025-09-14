Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 379232264CB
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 21:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757885994; cv=none; b=aftTxadEQ1aOhc1LDnQe7pMZCFNo2AU+EkBPG6hky2yf2qG+0fHV87laIgIWKKW+mm/YfD1OouS8M74aGW2rTi0RNKE1felcRJ+4fHg1EJga6bav2YW/9sAwYHiJzD2v0eS1rAuxHoBRZ22OqOhemPnrsj+1R+Bh/rHkxuagVJ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757885994; c=relaxed/simple;
	bh=rJD17iCtIA1wsGCdGLHqa/reMNupjuMCC+R0QZ0l01w=;
	h=To:Subject:From:Message-Id:Date; b=dAlztno5Yw145wOqXNGrp6mUCz/dVW2BwmJvedW2eISDkCUrD76casWKgSpQl1GjEBB3UWutgAjnT5/SmzEOtfV8U4NWlP8qwl6O4sVJIhORMd5O1Les4w9fIB+U4pooiDn5d1FV2PD/4+HC3sj7swmCatvorqtUAHntlrIwiE8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YCGVbkj5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YCGVbkj5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7829C4CEF0
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 21:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757885993;
	bh=rJD17iCtIA1wsGCdGLHqa/reMNupjuMCC+R0QZ0l01w=;
	h=To:Subject:From:Date:From;
	b=YCGVbkj5Bs+dHmXYKwG4fI178Y8YVXJgYYHvE8/C7kejk4W4oXjobdIBLVh1JRAb7
	 ZGUfQNVFucQMOhMm1QlXjh6DpNoLBE0N/h4bVYl4Kl+7nvwAG0jO4NUAXhNOPQh+1L
	 MEK79Z9uuyrYYsVis2QbwHgqfwlah3OBcfrwx5tS6HBfK2qw/5+e3ExsvHRrtue8rV
	 oXnCE3/ISM5m8WolZWtw+IjprelhLXZ+4YUPyt3Y5zI/qRT9PpPS5eU4cPQzuqpN/I
	 rureo9EGPeLF6EW76+p5vtdZWC1Jh2YuBfbC4yiosYGLvrN2ZHMmmj5Hv6WdToTM5m
	 6gIG756mvcetQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91766CA0EE8
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 21:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175788599357.12113.16712542818097941015.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd7eb9cfadb6a4af4b2aa4aa3fa0b2aeda0eab6560b1852630ed9f984363534e
Date: Sun, 14 Sep 2025 21:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757885993
