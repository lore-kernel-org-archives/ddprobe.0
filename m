Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3226D2D3A89
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 17:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763140794; cv=none; b=Qz45Ej9nx1uZYXj/7YBrHHTAyotGmQuljl5juTxXidBrVTyU3vq0eZnAR1ubL5czMAeFWcT/YYQioVIZ6PDL/pGbmHQ+MHkdFvioiPyTF4RHtivhRfN/+PwbX1tdrp+Z63aObRd2LyE9oj8vxeBKk9vS5+miXl3GFK178Upk/aE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763140794; c=relaxed/simple;
	bh=2iNEdChxOHBYCJLWQvP2UtGkZcv7EaVx4KJt1XZAD7Y=;
	h=To:Subject:From:Message-Id:Date; b=XTg8QN/we4r4TWyVrqPuH0GtfpnuNhMytAgb5PoHkEYckdgM7pMRAh3EXBbZg1mKItliGctT+ox6ccPevOxPhNKGuWQExL69UqM6LpUMtWlUjBDHnuYAA8feQW/WKzRd9mgD0s8upknIKVaw0sh/j+J7iT+FWRcbtBGXZZY5PZ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J/j58uhp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J/j58uhp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7EFDC19422
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 17:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763140793;
	bh=2iNEdChxOHBYCJLWQvP2UtGkZcv7EaVx4KJt1XZAD7Y=;
	h=To:Subject:From:Date:From;
	b=J/j58uhpdUDB15/ttpXvCULUSCMlXBF7yhi1ez7lVEpd8hmDVqZ+U1/lWfo9Ib7w5
	 xyobDxM8oQPssqsmTHNyE2z/JakWZ+/Q7i0SGYAo6fuin2l/wt/lCKagbjIkwBF1Wd
	 Kcd439F5E7dlPGEEOHc1MDL6atHtTcqRYSEGAcllVBwJZEhbcOrQNe6PxlX6qfIVuU
	 vBRfBIpaddGH32lZzYlTcxFR6xb/yX5d9WuudKbY+WQiYCwI94sgTdaiL/KB5qUiZo
	 vDoCkSvmhHegcO6A16i8ZTDbkE3cKpW8A8STgJ1KIVFJyR5uT1WV1TGHtIswNxcUZ9
	 HyLyDyViF5OdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94BACCE8D5E
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 17:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176314079358.32727.2824829635889759422.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7089c63a7f9ac82c06c984caf8e2d046144d5d146e963f2f89975a3604379ec8
Date: Fri, 14 Nov 2025 17:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763140793
