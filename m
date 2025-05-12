Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 329B81D63EE
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 18:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747076394; cv=none; b=i3FyVCaqy19S4zxXWa70ahb/sSSnnv1lr8kVvtgIZYbDrmq46GAwiUjuTfHTZyK0zumB80qRxGP3Okw4VMW7z38OYXVt+GujlkYo5ZQNTjjghDPT7dTKLPaH5HqKWDK97DQVCGx/yobDTJphWmp5ixINV9nHT/LddjOumA287bI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747076394; c=relaxed/simple;
	bh=fHetlt93gSh8+vYmyJJXMS1todUAkMtF0zSpoP4RcDU=;
	h=To:Subject:From:Message-Id:Date; b=KiWgF7LANQ7TA6aJQA2miyN9zXDc3mkQRVcWBEvHdCXUwNC73QJ7hOSmYS96Wj9LdnWwG+ZixGX9QciANdUbj7Mf+r7mwA5zNxJ/y6Yjj3pJBTMXHRffRP0cJ/uCewsNlA1xEDlzMAv3QilQxh7Ya5kcbnxaWS5Y3/A1oUBfGgg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Tw+XcgyN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Tw+XcgyN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A010BC4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 18:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747076393;
	bh=fHetlt93gSh8+vYmyJJXMS1todUAkMtF0zSpoP4RcDU=;
	h=To:Subject:From:Date:From;
	b=Tw+XcgyNxyBOHdbM0kSCIESPkzftdbKXXFZrBVYWohtqir8aT71CJGPJM9iGot1pd
	 0WqCrNKQGsPuNf5fikWNKQPwx8i40cMItxio0gsxAvT1qaJKO1KrGLoof5jU3acjBd
	 MubMGVWwFlwLs6avux3j1PETT3YlJdKuJLB1iqQGq7O2fAzK+NoogpqFUcON078ZUR
	 ta5lmucfueEDfFIaUpN3DHBTKNe9uJfoddkjGVx85w5VoV65Ll8gsoMwa5fhTHA0NF
	 o+y09yYK3AVD8Ku/+q154pJBW0Ld+3S3IkYKDYScEyF6amS94kWKDAx2+zBJpMJbSj
	 XsydfEuzz+zKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EAAEC3ABCB
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 18:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174707639357.16314.12009849068107008518.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e4530b4b90ed6d87f2b876a83fdbb9720af11fb292904129b68b343aab70e02
Date: Mon, 12 May 2025 18:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747076393
