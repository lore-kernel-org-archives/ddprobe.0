Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 405EF21D59F
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 10:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741774734; cv=none; b=s4aK+Z/upmExfNXMSuYju8lzpAFzCrZ9gcbnC5noU3V7x/WlH1nNtUJlAw4kSr+wbGD+bskce4sU9J/kUVtoo7MwgMUmdyTyXLY06ozSWQeNfwWfUfXGY+FrhWatcRaCYrGK8GCgrSD6/kFSnVU0k7Ozr9YzmZEI8bV6l9Fu0L4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741774734; c=relaxed/simple;
	bh=V6s5rUHWJlUS4ExHOnkTKqLiGk+6gzmS8KM/uC4ZLJ4=;
	h=To:Subject:From:Message-Id:Date; b=hWj6g/ubQ46l/AWzgJkEmZfyGOTTPGLN9+UMQmaKbxdA2Pdjp6r07sGXw/LbxuykB7cG3zaHkPEiXJBE4g/kpW2IOgAmHlqaK4UZ22RlfOXuEZ2s4HnBHHzti8PKWI+GS6a1q8YETDyMp2WkA44YXJhpKY3Kt0uYCq2lfuZJu10=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cNOahm4C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cNOahm4C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7A77C4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 10:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741774733;
	bh=V6s5rUHWJlUS4ExHOnkTKqLiGk+6gzmS8KM/uC4ZLJ4=;
	h=To:Subject:From:Date:From;
	b=cNOahm4Ck4NNi/P92T1x8XAK47Swpn3JDYEw0F+1oBT6E+nltLghPun89s6jlv/wN
	 Q/Y8K8lXdIf5ZA9p13RuX6IVkVmtAIXfP2ugNsY9ccOZ/PhRPEdYoJeRMjNXixza52
	 MEKrtK9pOJ6PBqB3AUYcSI00h6z3W73ejTD+hXwcRPf6I75d79R0ZBq9WbQqrA1DC4
	 0zqpshXhpiU05tLn/JbwrCVGhO9QyTsI2r1ZN/NJvTy6icbm+SH3yUoHeR8kYPUQLR
	 /w8Lgq1SA3ksM+oJdNvECFRDzKZz5A1UIrJEXe2j8m1gspQFAyGTZHbPYVwZVIRf8V
	 8zo8M0ccpvMeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96F8CC28B28
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 10:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174177473360.31510.510197908067003048.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 76a44616d69d35f51ec4d442d3aa4eb9bdca2b39cd167a1f73d3e1c0825f3a15
Date: Wed, 12 Mar 2025 10:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741774733
