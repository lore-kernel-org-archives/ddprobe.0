Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C5C0101E3
	for <ddprobe@lists.linux.dev>; Thu,  9 May 2024 09:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715248343; cv=none; b=Y0oDUfsMpHu6l6bXNHwvZIL73IXN9AYfPEz5JUPp3z4l3fvEKVTQym8lqW4f3HohMrDhTxX309XGY7cQmTuvnv5abA55CAdCE+rPaDU9LK4GIDF0gyji3TBFn0iFEWwGkRIg82kb6DyTJqefXvit/+V7R5B1yHVisUoKwY9emOc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715248343; c=relaxed/simple;
	bh=nkL+agyRlaMMu3da2OdfEviAT5w5NkxA/DVd3M6gP2M=;
	h=To:Subject:From:Message-Id:Date; b=qvmcGErZOh2ZoqMtqjz3qz6oTkkbdDBw+xcC8lmOFvuozBhZWmF96LWrMfyrmuon4Bcz8sLIUVD3q2esDUdxR0H+ANqC03/QkpIdmz1RH8uvRuoQ9zFFHyocDHTiQbEhUHvU2a+Xppn95Zg3UJRj2AIWwBVKxTYp2zAUA6mzt4w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YNgKcaaw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YNgKcaaw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2774C116B1
	for <ddprobe@lists.linux.dev>; Thu,  9 May 2024 09:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715248342;
	bh=nkL+agyRlaMMu3da2OdfEviAT5w5NkxA/DVd3M6gP2M=;
	h=To:Subject:From:Date:From;
	b=YNgKcaawXlXzhwGjBtjSTcL2LqoyRQpQw5vezzCnGp7i9WipHf8NseASIWWEFKu/+
	 ODK4RqgtfUKyUjPwbjxNVYuUFeI97jrEW1JyAYqaXhslldw1KXMmRkm6t0QAtLu6TC
	 KshjuP1HRhL4pcjv8dAqL+Ci7CWs8/2Ru6Zn7fAYZCILivGwz5hFOFe7QHM9Fg9X4T
	 D8FWIIim3g3ji2T7we4K8xRH7amhM9rvC63D5jNTuRyFAh/ZeT9ZCh+Yqgim45gsws
	 4eqRvaknXUtqHiAvrxF72W9nyOL5j4eJimhhsPZ+zn1DJFPYjBh/1qu3WXz9TKWM9s
	 Fg9YtkSggLGUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7D26C25B4F
	for <ddprobe@lists.linux.dev>; Thu,  9 May 2024 09:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171524834279.14430.3352915589594811326.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc0a8c42cff8854130717d28bbc118c7581785c7d42a936d99bb37be8ded3cca
Date: Thu, 09 May 2024 09:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715248342
