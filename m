Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DD3246B5
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 04:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747627795; cv=none; b=I6AQ/QLdVtScm6VXHXkVMTPUbwX5idhELWf7iDqzt8kmIKUw5qXzi3KDBWpfvprWPracaA3j5/xhMDYQ9/nHrFhPtrI6OSG07poEjawhTnr+v6bqZSMSnjQ0cauOgIRQ9A8tHixt10GJxU9KwKv2bTnh4XjESL512lYBYuF1+Lw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747627795; c=relaxed/simple;
	bh=euuuYh7N6jYKmuNEYMpm+uISaHeZf7x8+3MfkDGaTPQ=;
	h=To:Subject:From:Message-Id:Date; b=JfRAyzZHRT6MqVLRkdr19+Q1kpkFLsffJPTBLQOg3mXQ/Mw4Ag+ChHx2SJGhdtGWeaeGLNEoUB9eJNa8zbta6ZOkAelvv3umyeJ+wObnANdQu2F9YCeIaNbsqaLvsWgwGDBu0gq6gK+ZjSRPD2/fMgupvIsK3rJHO9PNmE9tRDA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Oey5FdP4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Oey5FdP4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2C1BC4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 04:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747627793;
	bh=euuuYh7N6jYKmuNEYMpm+uISaHeZf7x8+3MfkDGaTPQ=;
	h=To:Subject:From:Date:From;
	b=Oey5FdP4KSy+UhnhbiJv+aXkRvMOhQ/WCMM3czKd1Vi8w8x/SI91mwXBMbA6tv4+I
	 Pi2Nr4d+pgipYa0ZLLEjD8dhqqajmljwzdAZ1coOmKbUbUuPJdPscuZzGEcgWO8WPG
	 BflEfoIhsRTZUwp7Rd0F1wA9DtkV5EaoBcNiPX4CtU4+7E20dv2+EJB1jYMAO8qe+j
	 kev1IHxU5Zzhpa6eUbKL9ubSIyzDfBbaDHxkVwO+pRB62aUEK+WWEsbGUBHwlVTYc2
	 u7O7zBcbmuyfrAhdLIJXNHsxqDmSy0AGmnvoaQVEm7n3f5rCK8IieoIvu7ADjqKwCj
	 3CrlExtcgbPeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 925B0C3ABDD
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 04:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174762779357.31492.7426644726139523582.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d3ffaed2cf04c7165ee27c59a6218e71d19f90bb80d032aa5c399b0775c89d3
Date: Mon, 19 May 2025 04:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747627793
