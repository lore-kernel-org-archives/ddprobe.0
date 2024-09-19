Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36DF3320F
	for <ddprobe@lists.linux.dev>; Thu, 19 Sep 2024 02:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726713954; cv=none; b=e8ozAwPQBLNa1DNGdsLxCjoA7W5O86JfR/LM1cqSpjUhnsGRBRmCXS89vBaJR2SHcZlw1CJGKNzqRHE0IPlFhAuov/htMQfMXVDq8mihcMyWEU1FemaLUuTiz3ByV6QOnfaRIJUDtsJctk6cMWXi/msgYifRWaOn8hVVENjYMIw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726713954; c=relaxed/simple;
	bh=YFDKJicpXBYeQnBH/2dMW7S5q8lx3RnUD3Qz/1oO+18=;
	h=To:Subject:From:Message-Id:Date; b=lnZBQBh3ZB7NldoxMzZS0juqRZFjzn31n1lBzeZ/QV+SOrKa8WcLR139r6eZnp28GMsh7V11gEvxuI5l/49zLnXiIUK0BheplWpMW9TdoSCGIrHGCtkJRPffpuAr7rK5w/X40H1PcBB2tiE7h35gb6/UH3YWci5ldbxZ2iCIMjY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Yub+rxtR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Yub+rxtR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2AFFC4CEC2
	for <ddprobe@lists.linux.dev>; Thu, 19 Sep 2024 02:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726713953;
	bh=YFDKJicpXBYeQnBH/2dMW7S5q8lx3RnUD3Qz/1oO+18=;
	h=To:Subject:From:Date:From;
	b=Yub+rxtRqB8j82nVIegFsZL/ZpSvtvJjJu6/r56nirKnbRSU/qIz1bv5xFH9U12dy
	 uLzXPlyWHolZaEHCrz/5aUyECbdmbIcjo/P0RZFBI+k/7UMy5VdNqssGWSGTeJVuG3
	 ZDV9m+6m+b+hZltxGW50oNxke149V2tkx7+NURLOyWkKwEdvinvfbf1BX8tawyVdZy
	 +i+GrucsVn7mJnHszJkDZzu3RKg+a5+30Oq5k1ZAiyEuvsxXgzCS3OUjK4IxDnjNUb
	 YDyFLfdbUkHbGQJNRkTIV27VViJh0Juw41m1oldQruYjOZNQeL31m6L8g3wKVOUrZJ
	 F3ySfmap5hNLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A5B9CDD56B
	for <ddprobe@lists.linux.dev>; Thu, 19 Sep 2024 02:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172671395360.28514.11259314292706166407.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a731deb84e6fb72b8fe8d9fb1ee98ae683d8d03f87b9312a85c9da62288acac
Date: Thu, 19 Sep 2024 02:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726713953
