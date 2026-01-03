Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11ADC1E89C
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 13:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767447234; cv=none; b=Kt2aTuk+yu+UgCNfjYYP6f1Ov+UfYsfZjj9YM3bfDCxYZ888IE6zXa98ZB+9BJxZ7RIH/jKAkMer4HveL+bzGg65pZQ+Yw0iacOnUrSQFbnpNSbtzcM5JlXMsuRtSKBHBvCTWWbA780+av1990FnF3DQDy8nKnIjGManYotr5Yw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767447234; c=relaxed/simple;
	bh=g10kenxI0dNl++igbEnYS3HCBPLQBjoeFw7dDvS7aIM=;
	h=To:Subject:From:Message-Id:Date; b=jmJ3R+NCgFUoxErMsWw2OyVQY5gfkfDZ3BKtjDhp0S6mIupahVPf95dRwfh+TNYKHO2q1UaA3OSXZNKPq6STP5YK7ri9wOn3bJvEjiTKHQ4H0Zigt0JaOTniouSlnKdOeV/u7EuKmQ9XOVjE6pat8a5e6Ojba/psYdwHt5mEONQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eQeoilcp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eQeoilcp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6351C113D0
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 13:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767447233;
	bh=g10kenxI0dNl++igbEnYS3HCBPLQBjoeFw7dDvS7aIM=;
	h=To:Subject:From:Date:From;
	b=eQeoilcpYxqlUaY4Kf7/yLzsbPj6pP+uZpLYTobt50esE8/nYPwoF16NvLCe8l1/7
	 AeB125i4xNQCDE+cUJ9d8JuceE/c+u5WYvkQsyzQ8Z3BamD5dlBjU3Kt1rjOMsrTWv
	 tp0rOiFKShFdpZtTIhieS9xcFyrpao2Xi2s+0riQ0l/T134qk+ACC7r/QCpC+v+zbP
	 dFwyHEMPHo+m5QkuolFzq6S/NHBgBII2mkCSxBqlzYXMM9VzmWFv6mIAocdrwvNsA4
	 2/B5tWoVPl+vZJCIipb4AtYZm1Eyi4ptiANK4nQpFFa3+uNMMBU2MK1t3ZgrV+eTRV
	 I8wGLQJo5jmcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94276FC617F
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 13:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176744723357.30479.4695542005818588219.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 59e2ea9ac5c68ef62a793ed37358c979291448b64ab981444eb5212d5a9b40c9
Date: Sat, 03 Jan 2026 13:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767447233
