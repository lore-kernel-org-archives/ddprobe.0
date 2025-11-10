Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20F922FD67E
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 09:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762768794; cv=none; b=Y39BJyEGiiDB1nMi9Z8gv/9sbZJmzcmv/k2ME67GathUTrVYlTBbZInzKQkVnkiv5wXimZBb6HlBenYTZoQrQGn3NCNPQAYsyVdHwLrJph2q6wVud6AYlQllL+2aa/Ae2HYBwEw6YNVNtI/AIRqDTuTURZMORtL5mTj+2J7uwgk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762768794; c=relaxed/simple;
	bh=/aX0IVSlNkjqR1Z63QxzTjaDYSz2bIqC5HT/tarMpXo=;
	h=To:Subject:From:Message-Id:Date; b=WXNueK+4u841OwQm+rGyHTgbfh7uAp3zx1fDQoYNKFovFQQj7ibSxLB1gPvYMlIIAJahGlNI/erjKeVH7nx9hIm3d5Hmk1lJK6mqRb79H6FQp3NybTALfdgDCigQeCdYbJ/pI7nXU6xva0OZb0l1FvIvl0TKqWhyhoQ+MfWFVHY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bg0oXL4T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bg0oXL4T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5298C19421
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 09:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762768793;
	bh=/aX0IVSlNkjqR1Z63QxzTjaDYSz2bIqC5HT/tarMpXo=;
	h=To:Subject:From:Date:From;
	b=bg0oXL4TMnO4RbkVmM8+8ts25B20Hy9V4wEc+6m5LL3gZMvyY7Lcy5UbhUn1nKK6r
	 EFRb0jAVp2NdgkUDKXzxGl1U203mgnU016DoEAc0pZVAFYtJuhpD0Lba8ZuYzo0hiN
	 3NRsKvrmuwh4vmP/4Ium8VR/J7Ym8SekOPZjYtxzN6FSUsd8jsJmINmTjy2ihNZWl9
	 I9E8H8f3dWwlt+huTsrmlBe4ByIg4rjzAevS74qHzL+jXvRwxCHoxOLAzesriprai8
	 BhWlBrANaUgTZXt+bYuwr+nVp3uustN39qV6b9SnFC9FSolYJ7FRN2wqiINnf239xw
	 1/tB2pv8xLffg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F6BCCCFA13
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 09:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176276879357.22155.9372061757968405565.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f1c0b18b326aeec33c0a9bacaf123b471b133a158f5584a82c15a2241c5f22f
Date: Mon, 10 Nov 2025 09:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762768793
